<%-- --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href = "css/bootstrap.css"> <%-- webContent안에 있는 css폴더 안의 bootstrap을 참조하여 이 페이지에 기본적인 디자인을 사용하겠다는 명시적 표현   --%> 
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> <%--반응형 웹 테그 --%>
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>아이디 찾기</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
	 <div class="main">

        <div class="container">
            <form method="POST" class="appointment-form" id="appointment-form" action="findid.jsp">
                <h2><a  href="main.jsp">아이디 찾기</a></h2>
                <div class="form-group-1">
                    <input type="text" name="userName" id="userName" placeholder="이름을 입력하세요" required />
                    <input type="Email" name="userEmail" id="userEmail" placeholder="이메일을 입력하세요" required />
                   
                    
                </div>
            
               
                <div class="form-submit">
                    <input type="submit" name="submit" id="submit" class="submit" value="확인" />
                </div>
            </form>
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
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>