asserting
assertNonNegative: givenParameter description: message 

	givenParameter negative ifTrue: [ RenderingError signal: message ]