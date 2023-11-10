/**
 * 
 */

function chechRepeat() {

	var id = document.getElementById("user_id").value;

	if (id == null || id == "") {
		alert("아이디를 입력해주세요");
	} else {
		window.open("/member/idCheck?user_id=" + id, "", "width=500, height=300, resizable = no, scrollbars = no")
	}
}