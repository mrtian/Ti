<style>
	body{
		margin: 0;
		padding:0;
		vertical-align: middle;
	}
	img{
		vertical-align: middle;
	}
	h1{
		padding:10px;
		background-color: #8CC84B;
		border-bottom: 1px solid #ccc;
		margin: 0;
		vertical-align: middle;
		height: 70px;
		line-height: 70px;
	}
	.qt-gl{
		float:left;
	}
	.qt-250{
		width:250px;
		background-color: #f4f4f4;
		border: 1px solid #ccc;
		margin-right: 20px;
		padding: 10px;
		border-top: 0;
	}
	.list{
		line-height: 180%;
	}
	.qt-grid:after{
		display:block;
		content: :"\20";
		clear: both;
		overflow: hidden;
		height: 0;
	}
	.main{
		overflow: hidden;
	}
	pre{
		background-color: #000;
		margin: 10px 0;
		text-indent: 24px;
		border-radius: 5px;
		color:yellow;
		padding: 10px;
		width:90%;
	}
</style>
<h1>MT - webserver MVC framework for <a href="http://www.nodejs.org" target="_blank"><img src="http://nodejs.org/images/logo-light.png" title="node"/></a></h1>

<div class="qt-grid">
	<%=include('inc/sidebar.tpl')%>
	<div class="main">
		<h2 id="p-0">Intruduction</h2>
		<p>MT is a MVC web application server framework for node.<br/>
It provides the basic development framework and some related components, including libraries and tools. </p>
		<h2 id="p-1">Fauture</h2>
		<p>It provides the basic development framework and some related components, including libraries and tools.</p>
		<h2 id="p-2">Install</h2>
		<p>
			<pre>
npm install mt</pre>
		</p>
		<h2 id="p-3">Document</h2>
		<h3>Application's document path</h3>
		<p>
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
		</p>
		<p>simple to create a app</p>
		<p>
			<pre>

//get application
var App = require('mt').application;

//definne product path;
var productPath = process.cwd();

var app = new App({
	//configure controller path
	controllerPath:productPath+"/controller",
	//configure default controller name
	defaultController:'site',
	//configure routes 
	routes:{
		'p-<id:\\d+>':"product/detail"
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
		</p>
	</div>
</div>