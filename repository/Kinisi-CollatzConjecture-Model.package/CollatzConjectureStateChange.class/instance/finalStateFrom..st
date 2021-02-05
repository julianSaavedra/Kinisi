change
finalStateFrom: state

	^state even ifTrue: [ state // 2 ] ifFalse: [ state * 3 + 1 ]