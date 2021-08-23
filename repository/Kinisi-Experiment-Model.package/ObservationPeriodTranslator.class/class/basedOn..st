instance creation
basedOn: duration
 
	^(duration seconds = 0 and: [ duration wholeMilliseconds > 0 ])
		ifTrue: [ self toMilliseconds ]
		ifFalse: [ self toSeconds ]