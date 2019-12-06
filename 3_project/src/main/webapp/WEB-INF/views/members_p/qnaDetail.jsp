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
				<h1 class="tit">문의글 보기</h1>
			</header>
			<br>
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">내용</th>
			      <th scope="col">문의/답변 일시</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<tr style="height:300px;">
			  		<td width="80%">
			  			<h5>${qnaDetail.QNA_TITLE }</h5>
			  			<p>${qnaDetail.QNA_CONTENT }</p>
			  		</td>
			  		<td width="20%">
			  			<p>${qnaDetail.QNA_DATE }</p>
			  		</td>
			  	</tr>
			  	<c:if test="${not empty qnaDetail.ANWSER }">
			  		<tr style="height:300px;">
			  			<td width="70%" >
			  				<h5>문의 해주신 내용에 관한 답변입니다.</h5>
			  				<p>${qnaDetail.ANWSER }</p>
			  			</td>
			  			<td width="30%">
			  				<p>${qnaDetail.ANWSER_DATE }</p>
			  			</td>
			  		</tr>
			  	</c:if>
			  </tbody>
			</table>
		</section>
		<!-- //contents -->

	</div>
	<!-- //mypage area -->
</div>
