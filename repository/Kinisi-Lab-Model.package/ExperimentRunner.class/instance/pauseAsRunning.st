private
pauseAsRunning

	simulation status hasEnded
		ifFalse: [ simulation pause ]
		ifTrue: [ observation pause ] 