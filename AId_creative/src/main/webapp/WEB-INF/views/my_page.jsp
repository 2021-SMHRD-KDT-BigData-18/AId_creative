<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="resources/css/myP.css">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" >
</head>

<body>
	   <div class="header">
        <div class="headerTitle">
            <h1 onclick="location.href='goLogin_Home'">AId creative</h1>
           
        </div>
		<div class="headerTab">
			<button class="button button--quidel button--inverted"
				onclick="location.href='goTrain'">Train</button>
			<button class="button button--quidel button--inverted"
				onclick="location.href='goCvt'">Convert</button>
			<button class="button button--quidel button--inverted selected"
				onclick="location.href='goMyPage'">MyPage</button>

			<!-- <a class="a2" href="train">학습</a>
            <a class="a2" href="cvt">변환하기</a>
            <a class="a2" href="my">마이페이지</a> -->
            <form action="logout" method="post">
			<button  class="button button--quidel button--inverted" onclick="location.href=/logout/">Logout</button> 
			</form>
		</div>
	</div>
	<div class="pageSection">

		<div class="cvtpage">
			<!-- <form class="cvtform"> -->
			<!-- <select name="modelName" id="modelNameSelect">

            </select> -->
			<div class="board_wrap">
				<div class="board_title">
				
				<!-- 	<strong>그림체목록</strong>
					<p>학습해 놓으신 그림체를 안내해드립니다.</p>
				</div>
				<div class="board_list_wrap">
					<div class="board_list">
						<div class="top">
							
							<div class="num">번호</div>
							<div class="title">제목</div>
							<div class="date">작성일</div>
						</div>
						<div>
							<div class="num">1</div>
							<div class="title">
								<a href="#">글 제목이 들어갑니다.</a>
							</div>
							<div class="date">2023.07.16</div>
						</div>
						<div>
							<div class="num">2</div>
							<div class="title">
								<a href="#">글 제목이 들어갑니다.</a>
							</div>
							<div class="date">2022.12.16</div>
						</div>
						-->
						
						<div>  
						<table>
						<thead>
						<td class="title">이미지번호</td>
						<td class="title">이미지이름</td>
						<td class="title">회원아이디</td>
						<td class="title">모델번호</td>
						<td class="title">이미지표시</td>
						</thead>
							<c:forEach var="item" items="${result}">
							
								<tr>

     								<td class="box">${item.img_code}</td>
     								<!-- <td class="box"><div onclick="location.href='http://220.80.33.73:9000/download?img_code=${item.img_code}'"> -->${item.img_name}
     								<img alt="" src="${item.img_name}"></div></td>
     								<td class="box">${item.user_id}</td>
     								<td class="box">${item.model_code}</td>
     								<td class="box">${item.img_prompt}</td>
     							</tr>
     							
							</c:forEach>
							
     						</table>
     						
						</div>
						
						
							
							
							

					</div>
					<div class="board_page">
						<a href="#" class="bt first"><<</a> <a href="#" class="bt prev"><</a>
						<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
							href="#" class="num">3</a> <a href="#" class="num">4</a> <a
							href="#" class="num">5</a> <a href="#" class="bt next">></a> <a
							href="#" class="bt last">>></a>
					</div>
					<div class="bt_wrap">
						<a href="#" class="on">목록</a>
						<!-- <a href="#">수정</a> -->
					</div>
				</div>
			</div>





		</div>

		</form>
	</div>
	</div>
</body>

</html>