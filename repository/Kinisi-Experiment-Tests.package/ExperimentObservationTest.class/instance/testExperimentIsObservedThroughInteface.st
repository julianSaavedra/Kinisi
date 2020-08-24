tests
testExperimentIsObservedThroughInteface

	| interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsCollector'.
	observationWorkbench
		add: interfaceDefinition;
		period: (Duration milliSeconds: 100).

	lab runExperiment.

	[ self waitRecordingIsFinishedFor: interfaceDefinition ] valueWithin: 2 seconds onTimeout: [ self fail ].

	lab lastResult
		withTimeAndStateDo: [ :time :state | 
			(self recordedObservationsFor: interfaceDefinition)
				detect: [:observation | observation time = time ]
				ifFound: [:matchingObservation | self assert: matchingObservation value equals: state ]
				ifNone: [ self fail ] ]