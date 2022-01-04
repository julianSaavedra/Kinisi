validation
assertValid: targetDistance
 
	targetDistance negative ifTrue: [ RenderingError signal: 'Distance from origin cannot be negative'  ]