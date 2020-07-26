tests
testObservationIsTerminatedWhenSourceBufferIsClosed

	| interfaceHasFinished |
	interface := self interfaceFinishingWith: [ interfaceHasFinished := true ].
	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.
	
	interfaceHasFinished := false.	
	observationProcess play.
	self tickDelayForAllRemainingSamples.

	self deny: observationProcess isTerminated.
	
	buffer close.
	delay signal.
	[ interfaceHasFinished ] whileFalse.

	self assert: observationProcess isTerminated