<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/king.css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" >
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>

<body>
   <div class="header">
        <div class="headerTitle">
            <h1 onclick="location.href='goLogin_Home'">AId creative</h1>
           
            
        </div>
        <div class="headerTab">
            <button class="button button--quidel button--inverted selected" onclick="location.href='goTrain'">Train</button>
            <button class="button button--quidel button--inverted" onclick="location.href='goCvt'">Convert</button>
            <button class="button button--quidel button--inverted" onclick="location.href='goMyPage'">MyPage</button>
          <!-- <button class="button button--quidel button--inverted" onclick="location.href='go_tsample'">변환샘플</button>  -->
           <form action="goHome" method="post">
            <button  class="button button--quidel button--inverted" >Logout</button>
            </form>
            
        </div>
        <form action="http://localhost:9000/upload_train_set" method="post" enctype="multipart/form-data"> 
        <div id="root">
        <input type="text" name="modelName">
          <h2 class="title">File Upload</h2>
          <hr>
          <div class="contents">
            <div class="upload-box">
              <div id="drop-file" class="drag-file">
                <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
                <p class="message">Drag files to upload</p>
              </div>
              <label class="file-label" for="chooseFile">Choose File</label>
              <input class="file" name="uploadFile" id="chooseFile" type="file" multiple style="visibility: hidden;" onchange="dropFile.handleFiles(this.files)">
            </div>
            <input name="username" value="${user.user_id }" style="visibility: hidden;">
            <div id="files" class="files">
              <div class="file">
                <div class="thumbnail">
                  <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일타입 이미지" class="image">
                </div>
                <div class="details">
                  <header class="header">
                    <span class="name">Photo.png</span>
                    <span class="size">7.5 mb</span>
                  </header>
                  <div class="progress">
                    <div class="bar"></div>
                  </div>
                  <div class="status">
                    <span class="percent">37% done</span>
                    <span class="speed">90KB/sec</span>
                  </div>
                </div>
              </div>
            </div>
            <button class="st_but">train start</button>
          </div>
        </div>
    </div>
 </from>
    <script>
	    let fileList = []; //파일 정보를 담아 둘 배열
	    let tag = "";
	    
	    
	    
	    
	    
	      function DropFile(dropAreaId, fileListId) {
	  let dropArea = document.getElementById(dropAreaId);
	  let fileList = document.getElementById(fileListId);
	
	  function preventDefaults(e) {
	    e.preventDefault();
	    e.stopPropagation();
	  }
	
	  function highlight(e) {
	    preventDefaults(e);
	    dropArea.classList.add("highlight");
	  }
	
	  function unhighlight(e) {
	    preventDefaults(e);
	    dropArea.classList.remove("highlight");
	  }
	
	  function handleDrop(e) {
	       unhighlight(e);
	       let dt = e.dataTransfer;
	       let files = dt.files;
	
	       handleFiles(files);
	       $("#chooseFile")[0].files=files;
	       const fileList = document.getElementById(fileListId);
	       if (fileList) {
	         fileList.scrollTo({ top: fileList.scrollHeight });
	       }
	     }
	  
	  function handleFiles(files) {
	       files = [...files];
	       files.forEach(previewFile);
	     }
	 
	
	  function previewFile(file) {
	    console.log(file);
	    fileList.appendChild(renderFile(file));
	  }
	
	  function renderFile(file) {
	    let fileDOM = document.createElement("div");
	    fileDOM.className = "file";
	    fileDOM.innerHTML = `
	      <div class="thumbnail">
	        <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일타입 이미지" class="image">
	      </div>
	      <div class="details">
	        <header class="header">
	          <span class="name">${file.name}</span>
	          <span class="size">${file.size}</span>
	        </header>
	        <div class="progress">
	          <div class="bar"></div>
	        </div>
	        <div class="status">
	          <span class="percent">100% done</span>
	          <span class="speed">90KB/sec</span>
	        </div>
	      </div>
	    `;
	    return fileDOM;
	  }
	
	  dropArea.addEventListener("dragenter", highlight, false);
	  dropArea.addEventListener("dragover", highlight, false);
	  dropArea.addEventListener("dragleave", unhighlight, false);
	  dropArea.addEventListener("drop", handleDrop, false);
	
	  return {
	    handleFiles
	  };
	}
	
	const dropFile = new DropFile("drop-file", "drop-file");
		/*
    function DropFile(dropAreaId, fileListId) {
    	  let dropArea = document.getElementById(dropAreaId);
    	  let fileList = document.getElementById(fileListId);

    	  function preventDefaults(e) {
    	    e.preventDefault();
    	    e.stopPropagation();
    	  }

    	  function highlight(e) {
    	    preventDefaults(e);
    	    dropArea.classList.add("highlight");
    	  }

    	  function unhighlight(e) {
    	    preventDefaults(e);
    	    dropArea.classList.remove("highlight");
    	  }

    	  function handleDrop(e) {
    	    unhighlight(e);
    	    let dt = e.dataTransfer;
    	    let files = dt.files;

    	    handleFiles(files);

    	    const fileList = document.getElementById(fileListId);
    	    if (fileList) {
    	      fileList.scrollTo({ top: fileList.scrollHeight });
    	    }
    	  }

    	  function handleFiles(files) {
    	    files = [...files];
    	    files.forEach(previewFile);
    	  }

    	  function previewFile(file) {
    	    console.log(file);
    	    fileList.appendChild(renderFile(file));
    	  }

    	  function renderFile(file) {
    	    let fileDOM = document.createElement("div");
    	    fileDOM.className = "file";
    	    fileDOM.innerHTML = `
    	      <div class="thumbnail">
    	        <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일타입 이미지" class="image">
    	      </div>
    	      <div class="details">
    	        <header class="header">
    	          <span class="name">${file.name}</span>
    	          <span class="size">${file.size}</span>
    	        </header>
    	        <div class="progress">
    	          <div class="bar"></div>
    	        </div>
    	        <div class="status">
    	          <span class="percent">100% done</span>
    	          <span class="speed">90KB/sec</span>
    	        </div>
    	      </div>
    	    `;
    	    return fileDOM;
    	  }

    	  dropArea.addEventListener("dragenter", highlight, false);
    	  dropArea.addEventListener("dragover", highlight, false);
    	  dropArea.addEventListener("dragleave", unhighlight, false);
    	  dropArea.addEventListener("drop", handleDrop, false);

    	  return {
    	    handleFiles
    	  };
    	}

    	const dropFile = new DropFile("drop-file", "files");
		*/
    
    
    
    
    

    </script>

</body>

</html>