

window.addEventListener("load", function() {

	// Set the amount of time the loading screen should be shown in milliseconds

	var timeOut = 3000;

	// Hide the loading screen after the specified time has elapsed

	setTimeout(function() {

		var loadingScreen = document.querySelector(".loading-screen");

		loadingScreen.style.display = "none";

	}, timeOut);

});
