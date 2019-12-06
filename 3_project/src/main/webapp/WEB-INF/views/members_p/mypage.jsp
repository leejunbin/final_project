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
		<a href="${pageContext.request.contextPath }/members/infoupdate" class="link-modify">회원정보변경</a>
		<div class="member">
			<em class="level">${map.GNAME }</em>
			<a href="#" class="link-level">등급 혜택 보기 &gt;</a>
		</div>
		<p class="txt">다음 등급인 브론즈까지 40,808점 남았습니다 <span>|</span>${map.MREGDATE }</p>
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
		<a href="${pageContext.request.contextPath }/members/qna">
			<i class="my-ico ico-review"></i>Q&A &gt;
			<strong>작성</strong>
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
		<dd><a href="${pageContext.request.contextPath }/members/qnalist">문의내역</a></dd>
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
				<h1 class="tit">래플 응모내역</h1>
			</header>
			<form>
			  <div class="form-group">
			    <label for="exampleInputEmail1">Email address</label>
			    <input type="email" class="form-control span5" id="exampleInputEmail1" aria-describedby="emailHelp">
			    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Password</label>
			    <input type="password" class="form-control" id="exampleInputPassword1">
			  </div>
			  <button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</section>
		<!-- //contents -->
		<!--래플 당첨결과-->
		<div class="layer_cont layer-raffle-result" id="raffle_result" style="display:none; position: fixed; top:50%; left: 60%; margin-left:-800px;  z-index: 100;margin-top:-404px"></div>
		<!--//래플 당첨결과-->
	</div>
	<!-- //mypage area -->
</div>