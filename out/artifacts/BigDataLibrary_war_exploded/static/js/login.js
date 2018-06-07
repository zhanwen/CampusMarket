function loginCheck() {
    //判断用户名
    if($("input[name=studentNo]").val() == null || $("input[name=studentNo]").val() == ""){
        $("input[name=studentNo]").focus();
        layer.tips('学号不能为空！', '#studentNo', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    //判断密码
    if($("input[name=password]").val() == null || $("input[name=password]").val() == ""){
        layer.tips('密码不能为空！', '#password', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    var studentNo = $("input[name='studentNo']").val();
    var pwd = $("#password").val();      //密码
    // var flag = $("input[type='checkbox']").is(':checked')?"1":"0";
    var datas = new Object();                  //返回来的结果
    $.ajax({
        type: "post",
        contentType:"application/string",
        dataType:"json",
        async:false,
        url : "/goodswill/user/login?studentNo="+studentNo+"&pwd="+pwd,
        success: function (data) {
            datas = data;
        },
        error: function(msg) {
            console.log("msg:------------------ " + msg);
        }
    });

    if(datas.result == "studentNoFalse"){                 //学号不正确
        layer.tips('学号不存在！', '#studentNo', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }else if(datas.result == "pwdFalse"){            //密码不正确

        layer.tips('密码不正确！', '#password', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    var str = getRootPath_web();
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
