<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="trainP.css">
</head>

<body>
    <div class="header">
        <div class="headerTitle">
            <h1>로고</h1>
            <a href="">로그인/회원가입</a>
        </div>
        <div class="headerTab">
            <a href="">학습하기</a>
            <a href="">변환하기</a>
            <a href="">마이페이지</a>
        </div>
    </div>
    <div class="pageSection">
        <h3>학습 페이지</h3>
        <div class="uploadpage">
            <form class="uploadform">
                <input id="modelNameInput" type="text" placeholder="모델의 이름을 정해주세요">
                <div class="uploadbox">
                    <p>아마 압축파일로 올려야될걸요?</p>
                    <button>
                        이미지셋 업로드
                    </button>
                </div>
                <input id="imageSetSub" type="submit" value="학습시작!">
            </form>
        </div>
    </div>
</body>

</html>