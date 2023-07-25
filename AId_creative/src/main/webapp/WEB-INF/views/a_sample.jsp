<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/a_sample.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" >
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
                    <div class="child" >
                    </div>
                </div>
                
        <div id="img_file">
            <!-- <h2 class="title">File Upload</h2> -->
            <!-- <hr> -->
            <div class="contents">
                <div class="upload-box">
                    <label class="file-label" for="chooseFile">Choose File</label>
                    <div id="drop-file" class="drag-file">
                        <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image">
                        <p class="message">Drag files to upload</p>
                        <input class="file" id="chooseFile" type="file" multiple onchange="dropFile.handleFiles(this.files)">
                    </div>
            <div id="cvt-file" class="cvt-file"></div>

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
      
      </script>
</body>
