definitions
transcriptDefinition

	| transcriptSpec |

	transcriptSpec := PluggableInterfaceSpec
		onStartDo: [ Transcript
				clear;
				open ]
		with: [ :observation | 
			Transcript
				show: observation value;
				cr ]
		andWhenFinishedDo: [ Transcript
				show: 'END of Collatz simulation';
				cr ]
		choosingDisplayWith: nil.
	^ InterfaceDefinition named: 'Transcript' with: transcriptSpec