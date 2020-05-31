example objects
numberInTtranscriptInterface

	^PluggableObservationInterface
		onStartDo: [ Transcript open; clear ]
		processWith: [ :number | 
			Transcript
				show: ('Number was observed [<1s>]' expandMacrosWith: number asString);
				cr ]
		andWhenFinishedDo: [ Transcript show: 'Number Observation has been terminated' ]