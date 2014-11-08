var util = {};

/**
 *  验证帐号是否合法
	验证规则：字母、数字、下划线组成，字母开头，4-16位。
 */
util.checkUser= function checkUser(str){
   var re = /^[a-zA-z]\w{3,15}$/;
   if(re.test(str)){
	//     alert("正确");
	     return true;
	}else{
	//     alert("错误");
	     return false;
	}         
};

/**
	验证手机号码
	验证规则：11位数字，以1开头。 
 */
util.checkMobile = function checkMobile(str) {
    var re = /^1\d{10}$/;
    if(re.test(str)){
	//      alert("正确");
	      return true;
	  }else{
	//      alert("错误");
	      return false;
	  }
};

/**验证邮箱
	验证规则：姑且把邮箱地址分成“第一部分@第二部分”这样
	第一部分：由字母、数字、下划线、短线“-”、点号“.”组成，
	第二部分：为一个域名，域名由字母、数字、短线“-”、域名后缀组成，
	而域名后缀一般为.xxx或.xxx.xx，一区的域名后缀一般为2-4位，如cn,com,net，现在域名有的也会大于4位
**/
util.checkEmail=function checkEmail(str){
   var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
   if(re.test(str)){
//       alert("正确");
       return true;
   }else{
//       alert("错误");
       return false;
   }
};






