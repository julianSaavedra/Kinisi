definition - all
observationInterfaceSpecsForParticles

	| transcriptSpec transcriptDefinition animationDefinition |

	transcriptSpec := PluggableInterfaceSpec
		onStartDo: [ Transcript
				clear;
				open ]
		with: [ :observation | 
			Transcript
				show: ('Time: <1s>' expandMacrosWith: observation time asString);
				cr.
			observation value particles
				do: [ :particle | 
					| position |

					position := particle position.
					Transcript
						tab;
						show:
							('Position of <1s> is X= <2s> Y= <3s>'
								expandMacrosWith: particle particleName asString
								with: (position x roundTo: 0.01) asString
								with: (position y roundTo: 0.01) asString);
						cr ] ]
		andWhenFinishedDo: [ Transcript
				show: 'END of Particles simulation';
				cr ]
		choosingDisplayWith: nil.
	transcriptDefinition := InterfaceDefinition
		named: 'Transcript - Position'
		with: transcriptSpec.
	animationDefinition := InterfaceDefinition
		named: 'Animation'
		with: UniverseAnimationInterfaceSpec new.

	^ Array with: transcriptDefinition with: animationDefinition