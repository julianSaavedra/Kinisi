tests
waitUnilIsFinished: display

	[ display wait ]
		valueWithin: period * 20
		onTimeout: [ self fail ]