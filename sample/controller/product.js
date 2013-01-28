
var Controller = require('mt').Controller;

//exports
module.exports = new Controller({
	detailAction:function(req,res){
		this.display('test.tpl',{
			username:req.params.id
		});
	}		
});