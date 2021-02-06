running
setUpSamples

	allExpectedSamples := #(#Observation1 #Observation2 #Observation3).
	pendingSamples := allExpectedSamples copy.
	interfaceProcessedSamples := OrderedCollection new.
	buffer := Buffer new.
	source := ObservationSource from: buffer.
	allExpectedSamples do: [ :observation | buffer store: observation ]