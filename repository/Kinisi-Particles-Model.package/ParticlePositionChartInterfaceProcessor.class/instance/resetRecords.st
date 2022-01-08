connecting
resetRecords

	observationIndices := OrderedCollection new.
	observationStatesMap valuesDo: [:individualStates | individualStates removeAll ]