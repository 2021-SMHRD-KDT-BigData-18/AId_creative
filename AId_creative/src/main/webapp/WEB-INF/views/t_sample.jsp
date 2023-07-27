<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/t_sample.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" >
</head>

<body>
    <div class="header">
        <div class="headerTitle">
            <h1 onclick="location.href='goLogin_Home'">AId creative</h1>
            <form action="goHome" method="post">
            <button class="button button--quidel button--inverted" onclick="location.href='goLogout'">Logout</button>
            </form>
        </div>
        <div class="headerTab">
            <button class="button button--quidel button--inverted" onclick="location.href='goTrain'">학습</button>
            <button class="button button--quidel button--inverted" onclick="location.href='goCvt'">변환</button>
            <button class="button button--quidel button--inverted" onclick="location.href='goMyPage'">마이페이지</button>
        </div>
    </div>
    <div class="pageSection">

        <div class="cvtpage">
            <form class="cvtform">

                <div class="box_center" >
                    <div class="child" >
                
                    </div>
                    <div class="child" >
                
                    </div>
                    <div class="child" >
                
                    </div>
                    <div class="child" >
                
                    </div>
                </div>
                
                
                <h3>Do you want to save it?</h3>
                <div class="chobutton">
                <button class="Choice button">Yes</button>
                <button class="Choice button">No</button>
                </div>
            </form>
        </div>
    </div>

    <script>



    </script>

</body>
