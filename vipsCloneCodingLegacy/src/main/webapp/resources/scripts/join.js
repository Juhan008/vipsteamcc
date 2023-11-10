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

function searchAddress() {
	new daum.Postcode({
		oncomplete: function(data) {
			document.getElementById('postal-code').value = data.zonecode;
			document.getElementById('road-address').value = data.address;
		}
	}).open();
}

function onlyNumber(event) {
  const notNumber = /[^0-9a-zA-Z]/g;
  const inputText = event.target;
  if (notNumber.test(inputText.value)) {
    inputText.value = inputText.value.replace(notNumber, '');
  }
};