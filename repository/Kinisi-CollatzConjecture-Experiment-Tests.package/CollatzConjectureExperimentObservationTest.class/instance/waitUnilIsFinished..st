tests
waitUnilIsFinished: display

	[ display wait ]
		valueWithin: 2 seconds
		onTimeout: [ self fail ]