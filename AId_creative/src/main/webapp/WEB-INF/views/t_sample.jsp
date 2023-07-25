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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script type="text/javascript"></script>
    
</head>

<body>
    <div class="header">
        <div class="headerTitle">
            <h1>AId creative</h1>
            <button class="button button--quidel button--inverted" onclick="location.href=/logout/">Logout</button>
        </div>
        <div class="headerTab">
            <button class="button button--quidel button--inverted" onclick="location.href=/train/">train</button>
            <button class="button button--quidel button--inverted" onclick="location.href=/cvt/">covert</button>
            <button class="button button--quidel button--inverted" onclick="location.href=/my/">mypage</button>
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
                <button type="button" class="Choice button" id=choice_button>이미지 미리보기</button>
                </div>
            </form>
        </div>
    </div>

    <script>


    $('#choice_button').on('click', function () {
   
       swal.fire({
	 	  title: 'Do you want to save it?',
	 	  text: "",
          imageUrl: 'https://img.chuing.net/i/HpNeGVy/09e3fc8b696b7d0a559f0c4173ae5b58.jpg',
          imageWidth: 500,
          imageHeight: 300,
          imageAlt: 'Custom image',
	 	  showCancelButton: true,
	 	  confirmButtonColor: 'black',
	 	  cancelButtonColor: 'gray',
	 	  confirmButtonText: 'Yes',
    	  cancelButtonText: 'No'
	 	}).then((result) => {
	 	  if (result.confirmButtonText) {
              //"저장" 버튼을 눌렀을 때 작업할 내용
              // window.location=
	 	  }else if(result.dismiss==='cancel'){
            swal(
               'cancelled',
               'stay here',
               'error'
            ) 
            
    } })
    });

       
    
    


    </script>

</body>
