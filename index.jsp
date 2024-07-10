<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>15분 알람</title>
    <script>
        let alarmInterval;

        function startAlarm() {
            checkAndSetAlarm();
            alarmInterval = setInterval(checkAndSetAlarm, 60000); // 1분마다 체크
        }

        function stopAlarm() {
            clearInterval(alarmInterval);
        }

        function checkAndSetAlarm() {
            const now = new Date();
            const minutes = now.getMinutes();
            const seconds = now.getSeconds();

            if (minutes % 15 === 0 && seconds === 0) {
                alert("알람: " + now.getHours() + ":" + minutes);
            }
        }
    </script>
</head>
<body>
    <h1>15분 알람</h1>
    <button onclick="startAlarm()">알람 시작</button>
    <button onclick="stopAlarm()">알람 종료</button>
</body>
</html>
