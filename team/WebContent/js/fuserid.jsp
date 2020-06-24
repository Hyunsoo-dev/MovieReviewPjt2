<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel ="stylesheet" href = "css/bootstrap.css"> <%-- webContent안에 있는 css폴더 안의 bootstrap을 참조하여 이 페이지에 기본적인 디자인을 사용하겠다는 명시적 표현   --%> 
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> <%--반응형 웹 테그 --%>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<title>아이디 찾기</title>
</head>
<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('img/bg-fd.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				
				<a class="login100-form-title p-b-41" href="main.jsp">
					아이디 찾기
				</a >
				<form class="login100-form validate-form p-b-33 p-t-5" action="findid.jsp">

				<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="userName" placeholder="이름을 입력하세요">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>


					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="userEmail" placeholder="이메일을 입력하세요">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

				
					
					<div class="container-login100-form-btn m-t-32">
							<input type = "submit" class ="login100-form-btn" value ="찾기">
					</div>
					<br>
					<div class="w-full text-center">
						
							<a href="fuserpass.jsp" class="txt3">
							비밀번호 찾기
						</a>
						&nbsp;
						<a href="login.jsp" class="txt3">
							로그인
						</a>&nbsp;
						
							<a href="join.jsp" class="txt3">
							회원가입 
						</a>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
<script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script><%--jquery를 특정 홈페이지에서 가져 올 수 있도록 함  --%>
<script src ="js/bootstrap.js"></script><%--bootstrap에서 기본적으로 제공하는 자바스크립트 파일도 넣어줌 --%>

</body>
</html>