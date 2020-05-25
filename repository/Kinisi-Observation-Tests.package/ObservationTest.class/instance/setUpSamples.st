running
setUpSamples

	allExpectedSamples := #(#Element1 #Element2 #Element3).
	pendingSamples := allExpectedSamples copy.
	processedSamples := OrderedCollection new.
	source := LoadableObservationSource 	new.
	allExpectedSamples do: [:observation | source load: observation ]