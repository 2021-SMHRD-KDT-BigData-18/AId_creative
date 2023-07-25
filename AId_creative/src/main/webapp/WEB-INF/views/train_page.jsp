<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/trainP.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" >
</head>

<body>
   <div class="header">
        <div class="headerTitle">
            <h1 onclick="location.href='goLogin_Home'">AId creative</h1>
            <form action="logout" method="post">
			<button  class="button button--quidel button--inverted" onclick="location.href=/logout/">Logout</button> 
			</form>
        </div>
        <div class="headerTab">
        	<button class="button button--quidel button--inverted selected" onclick="location.href='http://localhost:8085/creative/goTrain'">train</button>           
            <button class="button button--quidel button--inverted" onclick="location.href='http://localhost:8085/creative/goCvt'">covert</button>
            <button class="button button--quidel button--inverted" onclick="location.href='http://localhost:8085/creative/goMyPage'">mypage</button>
        </div>
    </div>
    <div class="pageSection">
    
    <div class="cvtpage">
        <form class="cvtform" action="http://211.107.188.219:5500/upload_train_set" method="post" enctype="multipart/form-data">
            <!-- <select name="modelName" id="modelNameSelect">
            </select> -->

        

            <div class="modelNameInput" vertacal-align:middle>
                <input type="text" placeholder="그림체 이름을 정해주세요">
            </div>
            <div class="uploadbox" id="uploadbox">
                
                    <button class="button button--quidel button--inverted" id="uploadBtn" type="button">Img Upload</button>
            </div>
                  <input id="uploadFile" name="uploadFile" multiple type="file" style="visibility:hidden;">
            <div class="trainstat">
                <button class="button button--quidel button--inverted" type="submit"   >Start Train</button>
            </div>  
        </form>
    </div>
    </div>
<script type="text/javascript" src="resources/js/dragNdrop.js"></script>
</body>

</html>