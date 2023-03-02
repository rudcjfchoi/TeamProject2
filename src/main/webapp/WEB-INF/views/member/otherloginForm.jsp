<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>간편 로그인</title>
<!-- css  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginForm.css" >
<style type="text/css">
body {
padding-top: 100px;
}
</style>  
<!-- css  -->

<!-- script  -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

</head>
<body>
<a class="navbar-brand" href="${pageContext.request.contextPath}/main/main" style="font-size: 60px;">😍team 2😍</a>

  <div class="login_wrap">
	<form action="${pageContext.request.contextPath}/member/loginPro" method="post">


	   <ul class="menu_wrap" role="tablist">
	       <li class="menu_item" role="presentation">
	           <!--[주] 탭메뉴 활성화시(=선택시) "on"을 추가해주세요. 접근성: aria-selected는 탭 선택시 true, 미선택시 false로 적용-->
	           <!--[주:접근성] 탭메뉴의 id 값과 탭내용의 aria-controls를 연결하고 있습니다. -->
	           <a href="${pageContext.request.contextPath}/member/userlogin" id="loinid" class="menu_id" role="tab" aria-selected="false">
	               <span class="menu_text"><span class="text">개인 로그인</span></span>
	           </a>
	       </li>
	       <li class="menu_item" role="presentation">
	           <a href="${pageContext.request.contextPath}/member/companylogin" id="ones" class="menu_ones" role="tab" aria-selected="false">
	               <span class="menu_text"><span class="text">기업 로그인</span></span>
	           </a>
	       </li>
	       <li class="menu_item" role="presentation">
	           <a href="${pageContext.request.contextPath}/member/otherlogin" id="qrcode" class="menu_qr on" role="tab" aria-selected="ture">
	               <span class="menu_text"><span class="text">간편 로그인</span></span>
	           </a>
	       </li>
	   </ul>
	       <input type="hidden" id="localechange" name="localechange" value="">
	       <input type="hidden" name="dynamicKey" id="dynamicKey" value="R5P3fUTgtf3usDJrWptvDJb5rgJjt4agEpXSLPt3llz62KYhVMvLsKYujWFsm03cs8lofPB7Bg-vkhJjWxKQcaVu8_8swbMJpfATxZQ7zS0">
	       <input type="hidden" name="encpw" id="encpw" value="">
	
	
	       <ul class="panel_wrap">
	           <li class="panel_item" style="display: block;">
	               <div class="panel_inner" role="tabpanel" aria-controls="loinid">
	                   <div class="id_pw_wrap">
<!-- 						<div style="background-color:#15a181; width: 100%; height: 50px;text-align: center; color: white; "> -->
<!-- 							<h3>SIST Login</h3></div> -->
							<br>
							<div class="naverimg">
							<!-- 네이버 로그인 화면으로 이동 시키는 URL -->
							<!-- 네이버 로그인 화면에서 ID, PW를 올바르게 입력하면 callback 메소드 실행 요청 -->
							<div id="naver_id_login" style="text-align:center"><a href="${url}">
							<img width="244" src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/></a></div>
							</div>
							<br>
							
							<!-- 카카오 로그인 -->
							<div class="kakaoimg">
							<a class="p-2" href="${urlKakao}">
<!-- 							https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=f5b5bf34676dc45207b5d739969c45fe&redirect_uri=http://localhost:8080/team/member/kakaocallback&state=state -->
							<!-- 본인걸로 수정 시 띄어쓰기 절대 하지 마세요. 오류납니다. -->
							<img width="244" src="${pageContext.request.contextPath}/resources/image/kakao_login_medium_narrow.png" style="height:53px">
							</a>
							</div>
							
							
	                   </div>
	                   
<!-- 	                   <div class="login_keep_wrap" id="login_keep_wrap"> -->
<!-- 	                       <div class="keep_check"> -->
<!-- 	                           <input type="checkbox" id="keep" name="nvlong" class="input_keep" value="off"> -->
<!-- 	                           <label for="keep" class="keep_text">로그인 상태 유지</label> -->
<!-- 	                       </div> -->
<!-- 	                   </div> -->
	
	
	                    <div class="btn_login_wrap">
	
<!-- 	                        <button type="submit" class="btn_login" id="log.login"> -->
<!-- 	                            <span class="btn_text">로그인</span> -->
<!-- 	                        </button> -->
	
	                    </div>
	                </div>
	            </li>
	        </ul>
	    </form>
	</div>



</body>
</html>

