example - Collatz
observationInterfaceSpecsForCollatz

	| transcriptSpec |
	transcriptSpec := PluggableInterfaceSpec
		onStartDo: [ Transcript clear; open ]
		with: [ :observation |Transcript show: observation value; cr ]
		andWhenFinishedDo: [ Transcript show: 'END of Collatz simulation'; cr ].
	^ Array
		with: (InterfaceDefinition named: 'Transcript' with: transcriptSpec)
		with:
			(InterfaceDefinition
				named: 'Animation'
				with: CollatzConjectureAnimationInterfaceSpec new)