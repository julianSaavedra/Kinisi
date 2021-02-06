validation
assertValid: targetDistanceFromCenter
 
	targetDistanceFromCenter negative
		ifTrue: [ RenderingError signal: 'Position marks distance from center cannot be negative ' ]