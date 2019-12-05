<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="mypage-wrap">
		
<!-- mypage header -->
	<div class="mypage-info" style="margin-top:150px;background-color:lightgray;">
		<div class="inner">
			<h1 class="tit"><a href="${pageContext.request.contextPath }/members/mypage">My Page</a></h1>
			
			<div class="my-profile">
						<div class="img"></div>
						<strong class="name">${map.MNAME }</strong>
				<em class="account" style="background-color:lightgray;">${map.MID }</em>
				<a href="#" class="link-modify">회원정보변경</a>
				<div class="member">
					<em class="level">${map.GNAME }</em>
					<a href="https://my.musinsa.com/member/v1/benefit" class="link-level">등급 혜택 보기 &gt;</a>
				</div>
				<p class="txt">다음 등급인 브론즈까지 40,808점 남았습니다 <span>|</span> ${map.MREGDATE }</p>
			</div>
			<div class="my-menu">
				
				<a href="#">
					<i class="my-ico ico-point"></i>포인트 &gt;
					<strong>${map.MPOINT }</strong>
				</a>
				<a href="#">
					<i class="my-ico ico-coupon"></i>쿠폰 &gt;
					<strong>${cntCoupon }</strong>
				</a>
				<a href="#">
					<i class="my-ico ico-review"></i>후기작성 &gt;
					<strong>8</strong>
				</a>
			</div>
		</div>
	</div>
<!-- mypage header -->	
	<!-- mypage area -->
	<div class="mypage-area">
				<!-- mypage nav -->
<nav class="mypage-nav">
	<h2 class="n-hidden">My Page Menu</h2>
	<!-- aa -->
            <span class="direct on">바로접속 ON</span>
    	<dl class="menu">
		<dt>나의 쇼핑 활동</dt>
		<dd><a href="/app/mypage/order_list_opt">주문 내역 조회</a></dd>
		<dd><a href="/app/mypage/write_review">구매후기</a></dd>
		<dd><a href="/app/mypage/raffle" class="is-active">래플 응모내역</a></dd>
		<dd><a href="/app/mypage/qa">상품문의</a></dd>
		<dd><a href="/app/mypage/counsel">1:1문의</a></dd>
		<dd><a href="/app/mypage/viewed_goods">최근 본 상품</a></dd>
		<dd><a href="/app/mypage/favorite_goods">좋아요</a></dd>
		<dd><a href="/app/mypage/mysize_new">마이 사이즈</a></dd>
		<dt>매거진&amp;커뮤니티</dt>
		<dd><a href="https://my.musinsa.com/member/v1/board">커뮤니티</a></dd>
		<dd><a href="https://my.musinsa.com/member/v1/newsfeed">뉴스피드</a></dd>
		<dd><a href="https://my.musinsa.com/member/v1/friends/follow">친구</a></dd>
		<dd><a href="https://my.musinsa.com/member/v1/paper">쪽지</a></dd>
		<dd><a href="https://my.musinsa.com/member/v1/like-magazine">매거진 좋아요</a></dd>
	</dl>
</nav>
<!-- //mypage nav -->				
		<!-- contents -->
		<section class="mypage-cont">
			<header class="n-section-title">
				<h1 class="tit">회원 정보 수정</h1>
			</header>
			<br>
			<form action="${pageContext.request.contextPath }/members/infoupdate" method="post" onsubmit="return validation()" style="margin-left:10px;">
			  <div class="form-group">
			    <label for="exampleInputEmail1">이름</label>
			    <input value="${vo.mname }" type="text" class="form-control" id="mname" name="mname" aria-describedby="emailHelp" style="width:500px;" readonly>
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputEmail1">아이디</label>
			    <input value="${vo.mid }" type="text" class="form-control" id="mid" name="mid" aria-describedby="emailHelp" style="width:500px;" readonly>
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">비밀번호</label>
			    <input value="${vo.mpwd }" type="password" class="form-control" id="mpwd" name="mpwd" style="width:500px;">
			  </div>
			  
			  
			  <div class="form-group">
			    <label for="exampleInputEmail1">이메일</label>
			    <input value="${vo.memail }" type="email" class="form-control" id="memail" name="memail" aria-describedby="emailHelp" style="width:500px;">
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  
			  <div class="form-group">
			    <label for="exampleInputPassword1">전화번호</label>
			    <input value="${vo.mphone }" type="text" class="form-control" id="mphone" name="mphone" style="width:500px;">
			  </div>
			  
			  
			  <button type="submit" class="btn btn-primary">수정</button>
			</form>
		</section>
		<!-- //contents -->

	</div>
	<!-- //mypage area -->
</div>
<script>
function validation(){
	
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/); 
	var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
	var regExpPw = /(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{2,50}).{8,50}$/;
	var regExpEm = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
	
	// 비밀번호 공백 검사
	if($("#mpwd").val() == ""){ 
		alert("패스워드 입력바람"); 
		$("#pwd1").focus(); 
		return false; 
	} 
	if($("#mid").val() == $("#mpwd").val()){ 
		alert("아이디와 비밀번호가 같습니다"); 
		$("#pwd1").val(""); 
		$("#pwd1").focus(); 
		return false; 
	} 
	//비밀번호 유효성검사
	if(!regExpPw.test($("#mpwd").val())){ 
		alert("비밀번호를 형식에 맞게 입력해주세요."); 
		$("#pwd1").val(""); 
		$("#pwd1").focus();
		return false; 
	} 
	
	if($("#memail").val() == ""){
		alert("이메일을 입력해주세요");
		$("#memail").focus();
		return false;
	}
	
	if(!regExpEm.test($("#memail").val())){
		alert("이메일 형식이 맞지 않습니다");
		$("#memail").focus();
		return false;
	}
	
	if($("#mphone").val() == ""){
		alert("연락처를 입력해주세요");
		$("#phone").focus();
		return false;
	}
	
}

</script>