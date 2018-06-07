/**
 * 
 */

$(function(){
	changeCode();
	document.getElementById("username").focus();
});
$(document).keyup(function(event) {
	if (event.keyCode == 13) {
		tologin();
	}
});
function reset(){
	$("#username").val("");
	$("#password").val("");
	$("#code").val("");
	changeCode();
}
function changeCode() {
	 $("#codeImg").attr("src", "code.do?t=" + genTimestamp());
}
function genTimestamp() {
	var time = new Date();
	return time.getTime();
}
function tologin(){
		$.ajax({
			type : "POST",
			url:"user_Login",
			data : {
				userName : $("#username").val() ,
				password : $("#password").val(),
			},
			success : function(result){
                parent.layer.closeAll();
				if("success" == result){
					window.location.href="main_index";
				}else if("usererror" == result){
					layer.tips('用户名或密码有误', '#username',{tips:[2, 'rgb(189, 27, 72)']});
					changeCode();
					$("#username").focus();
				}else{
					layer.tips('系统异常', '#username',{tips:[2, 'rgb(189, 27, 72)']});
					changeCode();
					$("#username").focus();
				}
			}
			
		});
}
//客户端校验
function check() {

	if ($("#username").val() == "") {
		layer.tips('用户名不能为空', '#username',{tips:[2, 'rgb(189, 27, 72)']});
		$("#username").focus();
		return false;
	}

	if ($("#password").val() == "") {
		layer.tips('密码不得为空', '#password',{tips:[2, 'rgb(189, 27, 72)']});
		$("#password").focus();
		return false;
	}
	if ($("#code").val() == "") {
		layer.tips('验证码不得为空', '#codeImg',{tips:[2, 'rgb(189, 27, 72)']});
		$("#code").focus();
		return false;
	}
	return true;
}
function login(){
    layer.open({
        type: 2,
        title: '登录',
        shadeClose: true,
        shade: 0.8,
        offset: 100,
        scrollbar: false,
        area: ['450px', '350px'],
        end : function (){
            window.location.href="main_index";
        },
        content: ['login_layer', 'no']
    });
}