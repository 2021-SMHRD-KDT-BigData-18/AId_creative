<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/cvtP.css">
</head>

<body>
    <div class="header">
        <div class="headerTitle">
            <h1>로고</h1>
            <a href="/login">로그인/회원가입</a>
        </div>
        <div class="headerTab">
            <a href="train">학습하기</a>
            <a href="cvt">변환하기</a>
            <a href="my">마이페이지</a>
        </div>
    </div>
    <div class="pageSection">
    <h3>변환 페이지</h3>
    <div class="cvtpage">
        <form class="cvtform">
            <!-- <select name="modelName" id="modelNameSelect">
            </select> -->

            <div class="modelNameSelect">
                <button type="button" class="label">모델을 선택해주세요</button>
                <ul class="optionList">
                    <li class="optionItem">1번모델</li>
                    <li class="optionItem">2번모델</li>
                    <li class="optionItem">3번모델</li>
                    <li class="optionItem">4번모델</li>
                </ul>
            </div>

            <div class="uploadbox">
                <p>아마 사진을 올려야될걸요?</p>
                <button>
                    이미지셋 업로드
                </button>
            </div>
            <input id="cvtSub" type="submit" value="변환시작!">
        </form>
    </div>
    </div>

    <script>

        const label = document.querySelector('.label');
        const options = document.querySelectorAll('.optionItem');
        // 클릭한 옵션의 텍스트를 라벨 안에 넣음
        const handleSelect = function (item) {
            label.innerHTML = item.textContent;
            label.parentNode.classList.remove('active');
        }
        // 옵션 클릭시 클릭한 옵션을 넘김
        options.forEach(function (option) {
            option.addEventListener('click', function () { handleSelect(option) })
        })
        // 라벨을 클릭시 옵션 목록이 열림/닫힘
        label.addEventListener('click', function () {
            if (label.parentNode.classList.contains('active')) {
                label.parentNode.classList.remove('active');
            } else {
                label.parentNode.classList.add('active');
            }
        });

    </script>

</body>

</html>