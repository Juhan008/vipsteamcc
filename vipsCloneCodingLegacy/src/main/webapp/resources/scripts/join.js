/**
 * 
 */

function chechRepeat() {

	var id = document.getElementById("user_id").value;

	window.open("/member/idCheck?user_id=" + id, "", "width=500, height=300, resizable = no, scrollbars = no")

}