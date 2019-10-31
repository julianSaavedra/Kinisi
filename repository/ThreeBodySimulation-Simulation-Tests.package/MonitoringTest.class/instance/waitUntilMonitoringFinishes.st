support
waitUntilMonitoringFinishes

	"Code repeated in #waitUntil:has: because doing an extract method breaks the tests. 
	It may be something to do with blocks, context and delays."
	
	[ [monitorHasFinishedFlag] whileFalse  ]
		valueWithin: (Duration seconds: 1)
		onTimeout: [ self fail: 'Test is taking too long' ]