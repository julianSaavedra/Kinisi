validation
assertValid: targetLinesDistance

	targetLinesDistance negative ifTrue: [ RenderingError signal: 'Grid lines distance cannot be negative' ]