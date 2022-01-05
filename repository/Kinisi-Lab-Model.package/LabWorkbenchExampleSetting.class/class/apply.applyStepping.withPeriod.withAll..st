instance creation
apply: scenarioSetting applyStepping: steppingSetting withPeriod: period withAll: interfaceDefinitions

	| observationSetting |
	observationSetting := ObservationWorkbenchSetting over: period withAll: interfaceDefinitions.
	^self
		applying: observationSetting
		steppingWith: steppingSetting
		andObservingWith: scenarioSetting