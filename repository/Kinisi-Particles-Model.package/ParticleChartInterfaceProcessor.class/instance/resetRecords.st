private
resetRecords

	observationIndices := OrderedCollection new.
	accumulatorsMap valuesDo: [:accumulator | accumulator reset ]