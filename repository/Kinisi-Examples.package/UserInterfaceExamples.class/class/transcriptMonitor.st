example objects
transcriptMonitor

	^PluggableMonitorInterface
		onStartDo: [ Transcript open; clear ]
		processWith: [ :number | 
			Transcript
				show: ('Number Monitor [<1s>]' expandMacrosWith: number asString);
				cr ]
		andWhenFinishedDo: [ Transcript show: 'Number Monitor has been terminated' ]