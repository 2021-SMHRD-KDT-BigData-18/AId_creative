let fileList = []; //파일 정보를 담아 둘 배열
let tag = "";
$(function(){

	$("#uploadBtn").on("click",function(e){
		$("#uploadFile").click();
	});
	
	
	
    //드래그앤드랍
    $("#uploadbox").on("dragenter", function(e){
        e.preventDefault();
        e.stopPropagation();
    }).on("dragover", function(e){
        e.preventDefault();
        e.stopPropagation();
        $(this).css("background-color", "#FFD8D8");
    }).on("dragleave", function(e){
        e.preventDefault();
        e.stopPropagation();
        $(this).css("background-color", "#FFF");
    }).on("drop", function(e){
        e.preventDefault();

        let files = e.originalEvent.dataTransfer.files;
        if(files != null && files != undefined){
            //let tag = "";
            $("#uploadFile")[0].files=files;
            alert($("#uploadFile")[0].files);
            console.log($("#uploadFile")[0].files);
            for(i=0; i<files.length; i++){
                let f = files[i];
                fileList.push(f);
                let fileName = f.name;
                let fileSize = f.size / 1024 / 1024;
                fileSize = fileSize < 1 ? fileSize.toFixed(3) : fileSize.toFixed(1);
                tag += 
                        "<div class='fileList'>" +
                            "<span class='fileName'>"+fileName+"</span>" +
                            "<span class='fileSize'>"+fileSize+" MB</span>" +
                        "</div>";
            }
            let up_btn = ` <button type="button" id="uploadBtn">
	                        이미지셋 업로드
	                    </button>`;
			$("#uploadbox").html("");
            $("#uploadbox").append(tag);
            $("#uploadbox").append(up_btn);
        }

        $(this).css("background-color", "#FFF");
    });

    //저장
    $(document).on("click", "#save", function(){
        let formData = new FormData($("#fileForm")[0]);
        if(fileList.length > 0){
            fileList.forEach(function(f){
                formData.append("fileList", f);
            });
        }         

        $.ajax({
            url : "서버 맵핑 URL",
            data : formData,
            type:'POST',
            enctype:'multipart/form-data',
            processData:false,
            contentType:false,
            dataType:'json',
            cache:false,
            success:function(res){
                alert("저장에 성공하셨습니다.");
            },error:function(res){
                alert("오류 발생.\n관리자에게 문의해주세요.");
            }
        });
    });
});