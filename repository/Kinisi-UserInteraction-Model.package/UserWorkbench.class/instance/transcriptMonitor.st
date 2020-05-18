actions
transcriptMonitor

	^PluggableObservationInterface
		onStartDo: [ Transcript open; clear ]
		processWith: [:simulationStep | 
			Transcript
				show: ('Time: <1s>' expandMacrosWith: simulationStep time asString);
				cr.
			simulationStep value
				withComponentsDo: [ :physicalState | 
					| position measureToStringBlock |
					measureToStringBlock := [ :measure | 
					'<1s> <2s>'
						expandMacrosWith: (measure amount truncateTo: 0.01) asString
						with: measure unit asString ].
					position := physicalState position.
					Transcript
						tab;
						show:
							('Position of <1s> is X= <2s> Y= <3s>'
								expandMacrosWith: physicalState particleName asString
								with: (measureToStringBlock value: position x)
								with: (measureToStringBlock value: position y));
						cr ] ]
		andWhenFinishedDo: [
			Transcript
				show: 'Finishing simulation.'; cr;
				show: '----------------------------------------------------------'; cr;
				show: '----------------------------------------------------------'; cr ]