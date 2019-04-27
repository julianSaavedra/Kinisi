tests
testNormalizedVectorIsParallelToOriginalVector

	| vector |
	vector := MeasureVector x: 1 y: 1 z: 1 with: meter.
	self assert: (vector normalized parallelTo: vector)