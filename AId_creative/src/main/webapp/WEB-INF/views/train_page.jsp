<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/trainP.css">
</head>

<body>
   <div class="header">
        <div class="headerTitle">
            <h1>AId creative</h1>
            <button  class="button button--quidel button--inverted" onclick="location.href=/login/">로그인</button>
            <!-- <a class="a1" href="/login" >로그인</a> -->
        </div>
        <div class="headerTab">
            <button class="button button--quidel button--inverted" onclick="location.href='http://localhost:8085/creative/goTrain'">학습</button>
            <button class="button button--quidel button--inverted" onclick="location.href='http://localhost:8085/creative/goCvt'">변환</button>
            <button class="button button--quidel button--inverted" onclick="location.href='http://localhost:8085/creative/goMyPage'">마이페이지</button>

            <!-- <a class="a2" href="train">학습</a>
            <a class="a2" href="cvt">변환하기</a>
            <a class="a2" href="my">마이페이지</a> -->
        </div>
    </div>
    <div class="pageSection">
    
    <div class="cvtpage">
        <form class="cvtform">
            <!-- <select name="modelName" id="modelNameSelect">
            </select> -->

        

            <div class="modelNameInput" vertacal-align:middle>
                <input type="text" placeholder="그림체 이름을 정해주세요">
            </div>
            <div class="uploadbox">
                
                    <button class="button button--quidel button--inverted">Img Upload</button>
                  
                </button>
            </div>
            <div class="trainstat">
                <button class="button button--quidel button--inverted" type="submit"   >Start Train</button>
            </div>  
        </form>
    </div>
    </div>

</body>

</html>