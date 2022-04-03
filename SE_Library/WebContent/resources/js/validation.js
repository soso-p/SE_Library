//도서등록 체크 
function CheckAddBook(){
	var name = document.getElementById("bookName");
	var author = document.getElementById("author");
	var publisher = document.getElementById("publisher");
	var publishYear = document.getElementById("publishYear");
	var description = document.getElementById("description");
	
	//입력 내용들 한 글자 이상 입력 체크
	if(name.value.length < 1){
		alert("[도서 제목]\n최소 1자 이상 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	if(author.value.length < 1){
		alert("[저자]\n최소 1자 이상 입력하세요");
		author.select();
		author.focus();
		return false;
	}
	if(publisher.value.length < 1){
		alert("[출판사]\n최소 1자 이상 입력하세요");
		publisher.select();
		publisher.focus();
		return false;
	}
	if(description.value.length < 1){
		alert("[상세 설명]\n최소 1자 이상 입력하세요");
		description.select();
		description.focus();
		return false;
	}
	//출판 년도 숫자체크
	if(publishYear.value.length == 0 || isNaN(publishYear.value)){
		alert("[출판 년도]\n숫자만 입력하세요");		
		publishYear.select();
		publishYear.focus();
		return false;
	}	
	if(publishYear.value < 0){
		alert("[출판 년도]\n에 음수를 입력할 수 없습니다.");
		publishYear.select();
		publishYear.focus();
		return false;
	}
	
	document.newBook.submit();
}
