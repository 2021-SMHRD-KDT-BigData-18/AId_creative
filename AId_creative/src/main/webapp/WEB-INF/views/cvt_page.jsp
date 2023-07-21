<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/cvtP.css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" >
</head>

<body>
   <div class="header">
        <div class="headerTitle">
            <h1>AId creative</h1>
            <button  class="button button--quidel button--inverted" onclick="location.href=/logout/">Logout</button> 
            <!-- <a class="a1" href="/login" >로그인</a> -->
        </div>
        <div class="headerTab">
            <button class="button button--quidel button--inverted" onclick="location.href='http://localhost:8085/creative/goTrain'">train</button>
            <button class="button button--quidel button--inverted selected" onclick="location.href='http://localhost:8085/creative/goCvt'">convert</button>
            <button class="button button--quidel button--inverted" onclick="location.href='http://localhost:8085/creative/goMyPage'">mypage</button>
        </div>
    </div>
    <div class="pageSection">
    
    <div class="cvtpage">
        <form class="cvtform">
            <!-- <select name="modelName" id="modelNameSelect">
            </select> -->

            <div class="modelNameSelect">
                <div class="box bg-3">
                    <button id="btn" class="button button--quidel button--inverted button1">Model Choice</button>
                </div>
                <ul class="optionList">
                    <li class="optionItem">1번모델</li>
                    <li class="optionItem">2번모델</li>
                    <li class="optionItem">3번모델</li>
                    <li class="optionItem">4번모델</li>
                </ul>
            </div>

            <div class="uploadbox">
                
                    <button class="button button--quidel button--inverted">Img Upload</button>
                  
                </button>
            </div>
            
                <button class="button button--quidel button--inverted" type="submit" >convert</button>
              
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