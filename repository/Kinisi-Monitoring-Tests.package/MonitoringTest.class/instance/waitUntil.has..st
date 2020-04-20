support
waitUntil: processedData has: expectedSize
	
	[ [processedData size = expectedSize ] whileFalse  ]
		valueWithin: (Duration seconds: 1)
		onTimeout: [ TimedOut signal ]