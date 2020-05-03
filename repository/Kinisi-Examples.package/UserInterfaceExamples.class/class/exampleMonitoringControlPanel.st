as yet unclassified
exampleMonitoringControlPanel

	| source monitor monitoring |
	source := MonitoringFixedSource withAll: (1 to: 25) asArray.
	monitor := DataPluggableMonitor
		onStartDo: [ Transcript open; clear ] 
		processWith: [:number |
			Transcript
				show: ('Number Monitor [<1s>]' expandMacrosWith: number asString);
				cr ]
			andWhenFinishedDo: [ Transcript show: 'Number Monitor has been terminated'].

	monitoring := MonitoringProcess reading: source for: monitor every: 1 asSeconds.
	monitoring inspect