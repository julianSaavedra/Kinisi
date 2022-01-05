connecting
assertConnectionIsAvailable

	isStarted ifTrue: [ Error signal: 'Interface cannot be conected to a display after it has started' ].
	isConnected ifTrue: [ Error signal: 'Interface is already connected' ]