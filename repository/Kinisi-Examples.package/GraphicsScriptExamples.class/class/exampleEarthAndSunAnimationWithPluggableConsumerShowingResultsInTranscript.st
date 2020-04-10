examples - animation
exampleEarthAndSunAnimationWithPluggableConsumerShowingResultsInTranscript

	| consumer day simulation timeDelta duration |
	day := UnitProvider soleInstance day.
	timeDelta := day with: 1.
	duration := day with: 365.
	consumer := SimulationStepPluggableConsumer
		onStartDo: [ Transcript
		open;
		clear;
		show: 'Starting simulation named ''Earth and Sun''';
		cr;
		show: '----------------------------------------------------------';
		cr;
		show: '----------------------------------------------------------';
		cr ]
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
	simulation := Simulation
		startingWith: self earthAndSunInitialUniverseObservation universeState
		changingBy: [ :stepDuration :currentState | 
			(UniverseStateChange from: currentState during: stepDuration)
				finalState ]
		over: timeDelta
		during: duration
		informingStepsTo: consumer.

	simulation run