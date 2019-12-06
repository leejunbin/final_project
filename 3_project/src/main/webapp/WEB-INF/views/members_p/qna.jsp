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
		<dd><a href="#">주문 내역 조회</a></dd>
		<dd><a href="#">구매후기</a></dd>
		<dd><a href="#" class="is-active">래플 응모내역</a></dd>
		<dd><a href="#">상품문의</a></dd>
		<dd><a href="#">1:1문의</a></dd>
		<dd><a href="#">최근 본 상품</a></dd>
		<dd><a href="#">좋아요</a></dd>
		<dd><a href="#">마이 사이즈</a></dd>
		<dt>매거진&amp;커뮤니티</dt>
		<dd><a href="#">커뮤니티</a></dd>
		<dd><a href="#">뉴스피드</a></dd>
		<dd><a href="#">친구</a></dd>
		<dd><a href="#">쪽지</a></dd>
		<dd><a href="#">매거진 좋아요</a></dd>
	</dl>
</nav>
<!-- //mypage nav -->				
		<!-- contents -->
		<section class="mypage-cont">
			<header class="n-section-title">
				<h1 class="tit" style="font-size:35px;">문의</h1>
			</header>
			<br>
			<form action="${pageContext.request.contextPath }/members/qna" method="post" onsubmit="return validation()" style="margin-left:10px;">
			  <div class="form-group">
			    <label for="exampleInputEmail1" style="font-size: 22px;">제목</label>
			    <input type="text" class="form-control" id="qna_title" name="qna_title">
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  
			<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline1" name="qna_category_num" class="custom-control-input" value="1">
			  <label class="custom-control-label" for="customRadioInline1">예약</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline2" name="qna_category_num" class="custom-control-input" value="2">
			  <label class="custom-control-label" for="customRadioInline2">환불</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline3" name="qna_category_num" class="custom-control-input" value="3">
			  <label class="custom-control-label" for="customRadioInline3">기타</label>
			</div>
			
			
			
			  <div class="form-group">
				  <label for="comment" style="font-size: 22px;">내용</label>
				  <textarea class="form-control" rows="10" id="qna_content" name="qna_content"></textarea>
			  </div>  
			  
			  <button type="submit" class="btn btn-primary" style="width:70px;height:40px;font-size: 20px;">작성</button>
			</form>
		</section>
		<!-- //contents -->

	</div>
	<!-- //mypage area -->
</div>
