var util = {};

/**
 *  ��֤�ʺ��Ƿ�Ϸ�
	��֤������ĸ�����֡��»�����ɣ���ĸ��ͷ��4-16λ��
 */
util.checkUser= function checkUser(str){
   var re = /^[a-zA-z]\w{3,15}$/;
   if(re.test(str)){
	//     alert("��ȷ");
	     return true;
	}else{
	//     alert("����");
	     return false;
	}         
};

/**
	��֤�ֻ�����
	��֤����11λ���֣���1��ͷ�� 
 */
util.checkMobile = function checkMobile(str) {
    var re = /^1\d{10}$/;
    if(re.test(str)){
	//      alert("��ȷ");
	      return true;
	  }else{
	//      alert("����");
	      return false;
	  }
};

/**��֤����
	��֤���򣺹��Ұ������ַ�ֳɡ���һ����@�ڶ����֡�����
	��һ���֣�����ĸ�����֡��»��ߡ����ߡ�-������š�.����ɣ�
	�ڶ����֣�Ϊһ����������������ĸ�����֡����ߡ�-����������׺��ɣ�
	��������׺һ��Ϊ.xxx��.xxx.xx��һ����������׺һ��Ϊ2-4λ����cn,com,net�����������е�Ҳ�����4λ
**/
util.checkEmail=function checkEmail(str){
   var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
   if(re.test(str)){
//       alert("��ȷ");
       return true;
   }else{
//       alert("����");
       return false;
   }
};






