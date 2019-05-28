<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/5/19
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>登陆页面</title>
    <%--<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>--%>
    <script src = jquery-2.11.4.min.js></script>
    <script>
        $(document).ready(function () {
            alert("欢迎登陆");
        });
    </script>

</head>
<body>
<style type="text/css">
    #div1 {
        border: 1px solid;
        /*background: red;*/
        width: 700px;
        height: 700px;
        position: absolute;
    }

    #top {
        border: 1px solid;
        background: green;
        width: 100%;
        height: 10%;
    }

    span {
        float: right;
    }

    #left {
        /*background: blue;*/
        width: 12%;
        height: 90%;
        float: left;
    }

    #right1 {
        /*background: yellow;*/
        width: 88%;
        height: 90%;
        float: left;
        /*position: relative;*/
        display: none;
    }

    #right2 {
        /*background: white;*/
        width: 88%;
        height: 90%;
        float: left;
        position: relative;
        display: none;

    }

    #right3 {
        /*background: #207842;*/
        width: 88%;
        height: 90%;
        float: left;
        position: relative;
        display: none;
    }

    #right4 {
        /*background: #207842;*/
        width: 88%;
        height: 90%;
        float: left;
        position: relative;
        display: none;
    }

</style>
<script>
    function showRight1() {
        var oDiv = document.getElementById("right1");
        oDiv.style.display = "block";
        var oDiv = document.getElementById("right2");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right3");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right4");
        oDiv.style.display = "none";
    }

    function showRight2() {
        var oDiv = document.getElementById("right2");
        oDiv.style.display = "block";
        var oDiv = document.getElementById("right1");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right3");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right4");
        oDiv.style.display = "none";
    }

    function showRight3() {
        var oDiv = document.getElementById("right3");
        oDiv.style.display = "block";
        var oDiv = document.getElementById("right2");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right1");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right4");
        oDiv.style.display = "none";
    }

    function showRight4() {
        var oDiv = document.getElementById("right4");
        oDiv.style.display = "block";
        var oDiv = document.getElementById("right2");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right1");
        oDiv.style.display = "none";
        var oDiv = document.getElementById("right3");
        oDiv.style.display = "none";
    }

    function ajaxAddStudent() {
        var ajax = $.ajax({
            url: "addStudent",
            type: "POST",
            dataType: "text",
            contentType: "application/x-www-form-urlencoded",
            data: $("#addForm").serialize(),
            success: function (data) {
                alert(data)
            },
            error: function () {
                alert("服务器异常")
            }
        });
    }

    function ajaxAlterStudent() {
        var ajax = $.ajax({
            url: "alterStudent",
            type: "POST",
            data: $("#alterForm").serialize(),
            success: function (data) {
                alert(data)
            },
            error: function () {
                alert("服务器异常")
            }
        });
    }

    function ajaxDeleteStudent() {
        var ajax = $.ajax({
            url: "deleteStudent",
            type: "POST",
            data: $("#deleteForm").serialize(),
            success: function (data) {
                alert(data)
            },
            error: function () {
                alert("服务器异常")
            }
        });
    }
    function ajaxOutLogin() {
        var flag = confirm("你确定要退出吗？");
        if(flag) {
            var ajax = $.ajax({
                url: "outLogin",
                type: "POST",
                success: function (data) {
                   document.write(data)
                },
                error: function () {
                    alert("服务器异常")
                }
            });
        }
    }


</script>
<div id="div1">
    <div id="top">
        <h1>信息管理系统<span><label>${user.uname}</label><a style="color: red" onclick="ajaxOutLogin()">退出</a></span>
        </h1>
    </div>

    <div id="left">
        <table border="1px">
            <tr>
                <td><input type="button" value="增加学生" onclick="showRight1()"/></td>
            <tr>
            <tr>
                <td><input type="button" value="修改信息" onclick="showRight2()"/></td>
            </tr>
            <tr>
                <td><input type="button" value="删除学生" onclick="showRight3()"/></td>
            </tr>
            <tr>
                <td><input type="button" value="全部学生" onclick="showRight4()"/></td>
            </tr>
        </table>
    </div>

    <div id="right1">
        <form id="addForm" style="padding: 100px;">
            学生姓名：<input type="text" name="stuName"><br>
            <input type="radio" name="sex" value="0" checked="checked">男
            <input type="radio" name="sex" value="1">女<br>
            学生成绩：<input type="text" name="score"><br>
            <input type="button" value="增加学生" onclick="ajaxAddStudent()"><br>
        </form>
    </div>

    <div id="right2">
        <form id= "alterForm" style="padding: 100px;">
            <p style="text-align: center; color: green" >根据学号修改</p>
            学生学号：<input type="text" name="stuNumber"><br>
            学生姓名：<input type="text" name="stuName"><br>
            <input type="radio" name="sex" value="0" checked="checked">男
            <input type="radio" name="sex" value="1">女<br>
            学生成绩：<input type="text" name="score"><br>
            <input type="button" value="修改信息" onclick="ajaxAlterStudent()">
        </form>
    </div>

    <div id="right3">
        <form id= "deleteForm" style="padding: 100px;">
            <p style="text-align: center; color: green" >输入学号或名字删除</p>
            输入学号删除：<input type="text" name="stuNumber"><br>
            输入姓名删除：<input type="text" name="stuName"><br>
            <input type="button" value="执行删除" onclick="ajaxDeleteStudent()">
        </form>

    </div>

    <div id="right4">
        <table width="100%" border="1" solid cellspacing="0">
            <tr>
                <td>学号</td>
                <td>姓名</td>
                <td>性别</td>
                <td>成绩</td>
            </tr>
            <c:forEach items="${studentList}" var="student">
                <tr>
                    <td>${student.stuNumber}</td>
                    <td>${student.stuName}</td>
                    <td>${student.sex==0?"男":"女"}</td>
                    <td>${student.score}</td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>

</body>
</html>
