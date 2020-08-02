accessing
ifEnabled: enabledBlock ifNot: disableBlock

	^enable
		ifTrue: enabledBlock
		ifFalse: disableBlock 