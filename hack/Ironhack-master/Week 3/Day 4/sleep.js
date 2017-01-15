function sleep (time, function) {
	setTimeout (function, 1000*time)
}

// time (in the sleep function) => 10
// function (in the sleep function) => function () {console.log('I\'ve been sleapling for 10 seconds')} which is the callback
sleep(10 ,  function () {
	console.log('I\'ve been sleapling for 10 seconds')}
)