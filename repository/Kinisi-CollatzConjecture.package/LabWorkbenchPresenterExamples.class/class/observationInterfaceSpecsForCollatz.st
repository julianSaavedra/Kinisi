example - Collatz
observationInterfaceSpecsForCollatz

	| transcriptSpec |
	transcriptSpec := PluggableInterfaceSpec with: [:observation | Transcript show:  observation value; cr ] andWhenFinishedDo: [Transcript show: 'END of Collatz simulation'; cr].
	^Array	with: (InterfaceDefinition named: 'Transcript' with: transcriptSpec)