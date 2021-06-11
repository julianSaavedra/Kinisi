definition - all
observationInterfaceSpecsForParticles

	| transcriptSpec transcriptDefinition animationDefinition |
	transcriptSpec := PluggableInterfaceSpec
		onStartDo: [:display | display show: '----- Particles Experiment - Position - START -----  ' ]
		with: [:observation :display | 
			display show: ('Time: <1s>' expandMacrosWith: observation time asString).
			observation value particles
				do: [ :particle |
					| position |
					position := particle position.
					display show: ('    Position of <1s> is X= <2s> Y= <3s>'
								expandMacrosWith: particle particleName asString
								with: (position x roundTo: 0.01) asString
								with: (position y roundTo: 0.01) asString)] ]
		andWhenFinishedDo: [:display | display show: '----- Particles Experiment - Position - END -----  ' ]
		choosingDisplayWith: [:displayProvider | displayProvider displayForTranscript ].
	transcriptDefinition := InterfaceDefinition named: 'Transcript - Position' with: transcriptSpec.
	animationDefinition := InterfaceDefinition named: 'Animation' with: UniverseAnimationInterfaceSpec new.
	^Array  with: transcriptDefinition with: animationDefinition