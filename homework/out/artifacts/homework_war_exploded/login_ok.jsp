<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-08-24
  Time: 오후 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 성공</title>
    <style>
        body{text-align: center}
        .modal {
            position: absolute;
            top: 0;
            left: 0;

            width: 100%;
            height: 100%;

            display: none;

            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal.show {
            display: block;
        }

        .modal_body {
            position: absolute;
            top: 50%;
            left: 50%;

            width: 400px;
            height: 30px;

            padding: 40px;

            text-align: center;

            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

            transform: translateX(-50%) translateY(-50%);
        }

    </style>
</head>
<body onload ="showClock()">
<div class="modal">
    <div class="modal_body">
    <div id="divClock" class="clock"></div>
    </div>
</div>

<button class="btn-open-popup">타이머</button><br><br>
<button type="button" onclick="location.href='index.jsp'">로그아웃</button>

<script>
    const modal = document.querySelector('.modal');
    const btnOpenPopup = document.querySelector('.btn-open-popup');

    btnOpenPopup.addEventListener('click',() => {
        modal.style.display = 'block';
    });

    function showClock(){
        var currentDate = new Date();
        var divClock = document.getElementById('divClock');
        var msg = "현재 시간 : ";
        if(currentDate.getHours()>12){      //시간이 12보다 크다면 오후 아니면 오전
            msg += "오후 ";
            msg += currentDate.getHours()-12+"시 ";
        }
        else {
            msg += "오전 ";
            msg += currentDate.getHours()+"시 ";
        }

        msg += currentDate.getMinutes()+"분 ";
        msg += currentDate.getSeconds()+"초";

        divClock.innerText = msg;

        if (currentDate.getMinutes()>58) {    //정각 1분전부터 빨강색으로 출력
            divClock.style.color="red";
        }
        setTimeout(showClock,1000);  //1초마다 갱신
    }
</script>
</body>
</html>
