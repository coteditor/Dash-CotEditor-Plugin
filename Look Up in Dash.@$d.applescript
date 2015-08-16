(*

 Look Up in Dash
 version 1.0.0

 look up refarence in Dash with the selected text

 CotEditor
 http://coteditor.com
 Look Up in Dash
 https://github.com/coteditor/Dash CotEditor Plugin/

 Created by 1024jp on 2015-08-16.
 
 ------------------------------------------------------------------------------
 
 © 2015 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

*)


tell application "CotEditor"
	if not (exists front document) then return
	
	tell front document
		if (count of contents of selection) is 0 then return
		
		set keys to my keysForBundledSyntax(coloring style)
		set query to contents of selection
	end tell
end tell

open location my dashPath(keys, query)




-- Sub-Routines

-- build path for Dash
on dashPath(keys, query)
	return "dash-plugin://keys=" & keys & "&query=" & query
end dashPath


-- map for keys from bundled syntax styles
on keysForBundledSyntax(syntax)
	-- cf. https://kapeli.com/dash_plugins
	-- cf. https://kapeli.com/guide/guide#searchProfiles
	
	if syntax is "Apache" then
		return "apache"
		
	else if syntax is "AppleScript" then
		return "applescript"
		
	else if syntax is "BibTex" then
		return missing value
		
	else if syntax is "C, C++, Objective-C" then
		return "c,cpp"
		
	else if syntax is "C#" then
		return "net"
		
	else if syntax is "CoffeeScript" then
		return "coffee"
		
	else if syntax is "CSS" then
		return "css,bootstrap,foundation,less,awesome,cordova,phonegap"
		
	else if syntax is "Dart" then
		return "dartlang,polymerdart,angulardart"
		
	else if syntax is "Diff" then
		return missing value
		
	else if syntax is "DTD" then
		return missing value
		
	else if syntax is "Erlang" then
		return "erlang"
		
	else if syntax is "Go" then
		return "go,godoc"
		
	else if syntax is "Haskell" then
		return "haskel"
		
	else if syntax is "HTML" then
		return "html,svg,css,bootstrap,foundation,awesome,statamic,javascript,jquery,jqueryui,jquerym,angularjs,backbone,marionette,meteor,moo,prototype,ember,lodash,underscore,sencha,extjs,knockout,zepto,cordova,phonegap,yui"
		
	else if syntax is "INI" then
		return missing value
		
	else if syntax is "Java" then
		return "java,javafx,grails,groovy,playjava,spring,cvj,processing"
		
	else if syntax is "JavaScript" then
		return "javascript,jquery,jqueryui,jquerym,angularjs,backbone,marionette,meteor,sproutcore,moo,prototype,bootstrap,foundation,lodash,underscore,ember,sencha,extjs,titanium,knockout,zepto,yui,d3,svg,dojo,coffee,nodejs,express,grunt,mongoose,moment,require,awsjs,jasmine,sinon,chai,html,css,cordova,phonegap,unity3d"
		
	else if syntax is "JSON" then
		return missing value
		
	else if syntax is "Julia" then
		return "julia"
		
	else if syntax is "LaTeX" then
		return "latex"
		
	else if syntax is "Lisp" then
		return "lisp"
		
	else if syntax is "Lua" then
		return "lua,corona"
		
	else if syntax is "Makefile" then
		return "cmake"
		
	else if syntax is "Markdown" then
		return "markdown"
		
	else if syntax is "Perl" then
		return "perl,mangages"
		
	else if syntax is "PHP" then
		return "php,wordpress,drupal,zend,laravel,yii,joomla,ee,codeigniter,cakephp,phpunit,symfony,typo3,twig,smarty,phpp,html,statamic,mysql,sqlite,mongodb,psql,redis"
		
	else if syntax is "Plain Text" then
		return missing value
		
	else if syntax is "Python" then
		return "python,django,twisted,sphinx,flask,tornado,sqlalchemy,numpy,scipy,salt,cvp"
		
	else if syntax is "R" then
		return "r"
		
	else if syntax is "reStructuredText" then
		return missing value
		
	else if syntax is "Ruby" then
		return "ruby,rubygems,rails"
		
	else if syntax is "Rust" then
		return "rust"
		
	else if syntax is "Scala" then
		return "scala,akka,playscala"
		
	else if syntax is "Scheme" then
		return missing value
		
	else if syntax is "Shell Script" then
		return "bash,manpages"
		
	else if syntax is "SQL" then
		return "mysql,sqlite,psql"
		
	else if syntax is "SVG" then
		return "svg"
		
	else if syntax is "Swift" then
		return "swift,iphoneos,macosx,watchos,appledoc"
		
	else if syntax is "Tcl" then
		return "tcl"
		
	else if syntax is "Textile" then
		return missing value
		
	else if syntax is "XML" then
		return missing value
		
	else if syntax is "YAML" then
		return "chef,ansible"
	else
		return missing value
	end if
end keysForBundledSyntax
