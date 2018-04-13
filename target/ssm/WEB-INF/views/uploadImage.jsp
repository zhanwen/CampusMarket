<%--
  Created by IntelliJ IDEA.
  User: zhanghanwen
  Date: 2018/4/5
  Time: 下午7:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传头像</title>

    <script>
        function checkFileName() {
            var form = document.getElementById('form1');
            //获取一个上传文件的扩展名
            var myfile = document.getElementById('myfile');

            //获取文件上传文件的文件名和扩展名
            if(myfile.files[0] == undefined){
                alert('未上传文件！');
                return false;
            }
            //获取上传文件的扩展名
            var filevalue = myfile.value;
            var index = filevalue.lastIndexOf('.');
            var endName = filevalue.substring(index);
            if( endName == ".jpg" || endName == ".png") {
                form.submit();
            }else {
                alert("请上传后缀名为.jpg或者.png的图片");
                return false;
            }
        }
    </script>

</head>
<body>
    <jsp:include page="../../base.jsp" flush="true"/>
    <form id="form1" action="uploadImage" method="post" enctype="multipart/form-data">
        <div class="panel panel-info">
            <div class="panel-heading">
                上传头像
            </div>
            <div class="panel-body">

                <div class="col-xs-10" style="padding-top: 30px">
                    <div class="col-xs-2">
                        本地目录：
                    </div>
                    <div class="col-xs-8">
                        <input type="file" id="myfile" name="uploadFile">
                        <button id="uploadPhoto" value="" onclick="return checkFileName()">上传头像</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
