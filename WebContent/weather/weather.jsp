<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Weather</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		if(navigator.geolocation){
			navigator.geolocation.getCurrentPosition(function(location){
				var lat = location.coords.latitude;
				var lon = location.coords.longitude;
				$.ajax({
					url:"http://api.openweathermap.org/data/2.5/weather?lat=" + lat + "&lon=" + lon + "&APPID=923fac2cce4ba3c256062de4b713ac3c",
					dataType:"json",
					success:function(data){
						//json�� ��� data�� �Ľ� ���
						
						//$("#city").text("������ġ : " + data.name);
						//$("#target").text("���糯�� : " + data.weather[0].main);
						//$("#weather").attr('value', data.weather[0].main);
						console.log(data.weather[0].main);
						$("#icon").html("<img src='http://openweathermap.org/img/w/"+data.weather[0].icon+".png' border='0' width='40'>");	//�������߰�
					}
				});	
			},
			
			function(error){
				alert("�������� ��ġ������ ������� �����̽��ϴ�. �⺻��ǥ�� �̵��մϴ�.");
				var lat = 37.555227;
				var lon = 126.970057;
				$.ajax({
					url:"http://api.openweathermap.org/data/2.5/weather?lat=" + lat + "&lon=" + lon + "&APPID=923fac2cce4ba3c256062de4b713ac3c",
					dataType:"json",
					success:function(data){
						//json�� ��� data�� �Ľ� ���
						
						//$("#city").text("������ġ : " + data.name);
						//$("#target").text("���糯�� : " + data.weather[0].main);
						//$("#weather").attr('value', data.weather[0].main);
						console.log(data.weather[0].main);
						$("#icon").html("<img src='http://openweathermap.org/img/w/"+data.weather[0].icon+".png' border='0' width='40'>");	//�������߰�
					}
				});
			});
		}		
	});
</script>
</head>
<body>
	<span id="icon" style="float:left; margin-top: 18px; margin-left: 50px; font-size:15px;"></span>
</body>
</html>