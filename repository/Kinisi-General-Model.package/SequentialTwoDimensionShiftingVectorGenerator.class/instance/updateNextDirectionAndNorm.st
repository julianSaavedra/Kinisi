private
updateNextDirectionAndNorm

	"Rotation next direction 90 degrees counter clockwise. Increment norm if needed."
	
	nextDirection := nextDirection = (0@0)
		ifTrue: [ 1@0 ]
		ifFalse:[ nextDirection y negated @ nextDirection x].
	nextDirection = (1@0) ifTrue: [ nextNorm := nextNorm + 1 ]