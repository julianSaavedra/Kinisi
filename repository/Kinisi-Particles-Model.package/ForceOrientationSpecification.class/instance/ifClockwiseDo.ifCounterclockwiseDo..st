action
ifClockwiseDo: clockwiseBlock ifCounterclockwiseDo: counterclockwiseBlock

	^name = 'Clockwise'
		ifTrue: clockwiseBlock
		ifFalse: counterclockwiseBlock