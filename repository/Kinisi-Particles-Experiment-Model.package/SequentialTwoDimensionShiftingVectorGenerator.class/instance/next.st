accessing
next

	| vectorComponents |
	vectorComponents := nextDirection * nextNorm.
	self updateNextDirectionAndNorm.
	
	^MeasureVector x: vectorComponents x y: vectorComponents y z: 0 with: unit