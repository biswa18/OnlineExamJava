/**
 * 
 */

 //function for slider
	var myImage = document.getElementById("image");
	var ImageArray = ["desktop.jpg", "onlineExam.jpg", "user.jpg"];
	var ImageIndex = 0;
	function changeImage()
	{
	myImage.setAttribute("src", ImageArray[ImageIndex]);
	ImageIndex++;
	if (ImageIndex >=ImageArray.length)
	{
	ImageIndex = 0;
	}
	}
	setInterval(changeImage, 1000);
	
	
	//function for show password
	function myFunction() {
	    var x = document.getElementById("myinput");
	    if (x.type === "password") {
	        x.type = "text";
	    } else {
	        x.type = "password";
	    }
	}
	
	//function for time display
	function startTime() {
	    var today = new Date();
	    var h = today.getHours();
	    var m = today.getMinutes();
	    var s = today.getSeconds();
	    m = checkTime(m);
	    s = checkTime(s);
	    document.getElementById('txt').innerHTML =   h + ":" + m + ":" + s;
	    var t = setTimeout(startTime, 500);
	}
	function checkTime(i) {
	    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
	    return i;
	}