/**
 *메인 페이지의 함수입니다. 
 **/

function open_hidden_menu() {

	const menu = document.getElementById("top-head");

	menu.setAttribute('style', 'height:396px');

	const text = document.getElementById("hidden-move-area");

	text.setAttribute('style', 'visibility:visible');

}


function close_hidden_menu() {

	const menu = document.getElementById("top-head");

	menu.setAttribute('style', 'height:151px');

	const text = document.getElementById("hidden-move-area");

	text.setAttribute('style', 'visibility:hidden');
}