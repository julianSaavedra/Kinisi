private
assertValidDelta

	(delta isZero or: [delta negative])
		ifTrue: [ Error signal: 'Step delta must be greater than zero' ]	