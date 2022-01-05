tests
testNoSampleIsObservedIfSourceHasNoNewSampleAvailable

	observationProcess := KinisiObservation
		on: source
		with: interfaces
		waiting: delay.
		
	observationProcess play.
	self tickDelayAndWaitProcessingOfAllPendingSamples.
	
	self assertNoNewSampleIsProcessedWhenTickingDelay.
	
	self deny: (interfaceProcessedSamples includes: #ObservationN).
	self feedTickAndWaitObservationFor: #ObservationN.
	self assert: (interfaceProcessedSamples includes: #ObservationN).
	
	self assertNoNewSampleIsProcessedWhenTickingDelay