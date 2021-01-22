not working - simulation model migration
exampleEarthAndSunAnimationWithPluggableConsumerShowingResultsInTranscriptWithBufferEveryHalfSecond

	| endPointConsumer day simulation timeDelta duration buffer reader bufferWriterConsumer |

	Transcript
		open;
		clear;
		show: 'Starting simulation named ''Earth and Sun''';
		cr;
		show: '----------------------------------------------------------';
		cr;
		show: '----------------------------------------------------------';
		cr.
	day := UnitProvider soleInstance day.
	timeDelta := day with: 1.
	duration := day with: 365.
	endPointConsumer := SimulationStepPluggableConsumer
		onStartDo: nil
		processWith: [ :simulationStep | 
			Transcript
				show: ('Time: <1s>' expandMacrosWith: simulationStep time asString);
				cr.
			simulationStep value
				withComponentsDo: [ :physicalState | 
					| position |

					position := physicalState position.
					Transcript
						tab;
						show:
							('Position of <1s> is X= <2s> Y= <3s>'
								expandMacrosWith: physicalState particleName asString
								with: (position x roundTo: 3) asString
								with: (position y roundTo: 3) asString);
						cr ] ]
		andWhenFinishedDo: [ Transcript
				show: 'Finishing simulation.';
				cr;
				show: '----------------------------------------------------------';
				cr;
				show: '----------------------------------------------------------';
				cr ].

	buffer := Buffer new.
	reader := BufferPluggableReader
		on: buffer
		whenReading: [ :data | endPointConsumer process: data ].
	bufferWriterConsumer := SimulationStepBufferWriterConsumer on: buffer.
	simulation := Simulation
		startingWith: self earthAndSunInitialUniverseObservation universeState
		changingBy: [ :stepDuration :currentState | 
			(UniverseGravitationalChange from: currentState during: stepDuration)
				finalState ]
		over: timeDelta
		during: duration
		informingStepsTo: bufferWriterConsumer.

	[ 10
		timesRepeat: [ (Delay forMilliseconds: 500) wait.
			reader read ] ] fork.

	[ simulation run ] fork