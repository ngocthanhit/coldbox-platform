<!--- Style --->
<style>
<cfinclude template="style.css">
</style>
<script  language="javascript" type="text/javascript">
function fw_toggle(divid){
	if ( document.getElementById(divid).className == "fw_debugContent"){
		document.getElementById(divid).className = "fw_debugContentView";
	}
	else{
		document.getElementById(divid).className = "fw_debugContent";
	}
}
function fw_poprc(divid){
	var _div = document.getElementById(divid);
	if ( _div.className == 'hideRC' )
		document.getElementById(divid).className = "showRC";
	else
		document.getElementById(divid).className = "hideRC";
}
function fw_openwindow(mypage,myname,w,h,features) {
	if(screen.width){
	var winl = (screen.width-w)/2;
	var wint = (screen.height-h)/2;
	}else{winl = 0;wint =0;}
	if (winl < 0) winl = 0;
	if (wint < 0) wint = 0;
	var settings = 'height=' + h + ',';
	settings += 'width=' + w + ',';
	settings += 'top=' + wint + ',';
	settings += 'left=' + winl + ',';
	settings += features;
	win = window.open(mypage,myname,settings);
	win.window.focus();
}
</script>