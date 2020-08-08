acessing
observationDefinition

	| interface |
	interface := CollatzConjectureAnimationInterface basedOn: displaySettings.
	^self isMonitoringOn
		ifTrue: [ ObservationDefinition for: interface every: (Duration seconds: self observationPeriod) ]
		ifFalse: [ObservationDefinition disableWith: (PluggableObservationInterface processWith: [ :observation |  ])]