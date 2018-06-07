function registerCheck() {
    //判断用户名
    if($("input[name=studentNo]").val() == null || $("input[name=studentNo]").val() == ""){
        $("input[name=studentNo]").focus();
        layer.tips('学号不能为空！', '#studentNo', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    if($("input[name=username]").val() == null || $("input[name=username]").val() == ""){
        layer.tips('用户名不能为空！', '#username', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }

    if($("input[name=phone]").val() == null || $("input[name=phone]").val() == ""){
        layer.tips('手机号不能为空！', '#phone', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }

    if($("input[name=weixin]").val() == null || $("input[name=weixin]").val() == ""){
        layer.tips('微信号不能为空！', '#weixin', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    if($("input[name=email]").val() == null || $("input[name=email]").val() == ""){
        layer.tips('email不能为空！', '#email', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }

    if($("input[name=password]").val() != null && $("input[name=repassword]").val() != ""){
        if($("input[name=password]").val() != $("input[name=repassword]").val()) {
            layer.tips('两次密码不一致！', '#repassword', {
                tips: [2, '#FF3030'],
                time: 2000
            });
            return false;
        }
    }

    //判断密码
    if($("input[name=password]").val() == null || $("input[name=password]").val() == ""){
        layer.tips('密码不能为空！', '#password', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }

    if($("input[name=repassword]").val() == null || $("input[name=repassword]").val() == ""){
        layer.tips('确认密码不能为空！', '#repassword', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }
    if(!$('#checkbox').is(':checked')) {
        layer.tips('接受相关条款和协议！', '#chk', {
            tips: [2, '#FF3030'],
            time: 2000
        });
        return false;
    }

    $("#form").submit();

}