private
playAsPaused

	simulation status hasEnded
		ifFalse: [ simulation play ]
		ifTrue: [ observation play ] 
	