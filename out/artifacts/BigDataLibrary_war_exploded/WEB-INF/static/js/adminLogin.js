function loginCheck() {
    //判断用户名
    if($("input[name=inputStudentNo]").val() == null || $("input[name=inputStudentNo]").val() == ""){
        $("input[name=inputStudentNo]").focus();
        layer.tips('用户名不能为空！', '#inputStudentNo', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    //判断密码
    if($("input[name=inputPassword]").val() == null || $("input[name=inputPassword]").val() == ""){
        layer.tips('密码不能为空！', '#inputPassword', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    var studentNo = $("input[name='inputStudentNo']").val();
    var pwd = $("#inputPassword").val();      //密码
    var flag = $("input[type='checkbox']").is(':checked')?"1":"0";
    var datas = new Object();                  //返回来的结果
    $.ajax({
        type: "post",
        contentType:"application/string",
        dataType:"json",
        async:false,
        url : "manager?studentNo="+studentNo+"&pwd="+pwd+"&flag="+flag,
        success: function (data) {
            datas = data;
        }
    });
    if(datas.result == "studentNoFalse"){                 //学号不正确
        layer.tips('学号不存在！', '#inputStudentNo', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }else if(datas.result == "pwdFalse"){            //密码不正确

        layer.tips('密码不正确！', '#inputPassword', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }else if(datas.result == "nameAndPwd"){
        layer.tips('用户名或密码不正确！', '#inputStudentNo', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    var str = getRootPath_web();
    if(datas.result == "admin") {
        window.location.href=str+"/admin/status";
        return false;
    }

    window.location.href=str;
    return false;
}


function getRootPath_web() {
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp
    var curWwwPath = window.document.location.href;
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp
    var pathName = window.document.location.pathname;
    var pos = curWwwPath.indexOf(pathName);
    //获取主机地址，如： http://localhost:8083
    var localhostPaht = curWwwPath.substring(0, pos);
    //获取带"/"的项目名，如：/uimcardprj
    var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
    return (localhostPaht + projectName);
}
