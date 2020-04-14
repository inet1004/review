<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.ckeditor.com/ckeditor5/18.0.0/classic/ckeditor.js"></script>
</head>
<body>

    <h1>File Upload</h1>
	<form enctype="multipart/form-data" method="post" action="../BoardInsert.do">
	제목:<input type="text" name="title"><br>
	내용:<textarea name="contents" id="contents"></textarea> 	<!-- CKeditor //"editor"  -->
	
	<script>
	var editor;
    ClassicEditor
        .create( document.querySelector( '#contents' ) , {
        ckfinder: {
            uploadUrl: 'fileUpload.jsp'
        }
    } )
        .then( newEditor => {
            editor = newEditor;
        } )
        .catch( error => {
            console.error( error );
        } );
    // Array.from( editor.ui.componentFactory.names() );
</script>
	<br>
	 Select file to upload: 
	 <input type="file" name="file" size="60" multiple="multiple"/> <br /><br /> 
	 <input type="submit" value="전송" /> </form>

</body>
</html>