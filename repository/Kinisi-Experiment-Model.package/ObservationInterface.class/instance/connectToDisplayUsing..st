connecting
connectToDisplayUsing: displayProvider

	self assertConnectionIsAvailable. 
	display := displayProvider displayFor: processor.
	isConnected := true.
	^display