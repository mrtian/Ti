## Ti - a short description
Ti is a MVC web application server framework for [node.js](http://nodejs.org).
It provides the basic development framework and some related components, including libraries and tools. 

## Install
    npm install Ti
## Document

Application's document path
<pre>
//------------------app path-------------
|--app
    |----app.js // app input file
    |----controller //controller path
        |----site.js //site controller
        ------...
    |----view //template path
        |----inc
            |----header.tpl
        |----index.tpl
        |----...
    |----model //model path
    |----plugin
    |----...
</pre>
### simple to create a app

<pre>
//get application
var App = require('Ti').application;

//definne product path;
var productPath = process.cwd();

var app = new App({
	//configure controller path
	controllerPath:productPath+"/controller",
	//configure default controller name
	defaultController:'site',
	//configure routes 
	routes:{
		'p-':"product/detail"
	},
	//configure route start sep
	baseUriIndex:0,
	//configure template path
	viewPath:productPath+'/view',
	//configure template plugin path
	templatePluginPath:productPath+"/plugins/view"
});

//app start
app.start();
</pre>
