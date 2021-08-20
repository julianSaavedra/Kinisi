instance creation
apply: scenarioSetting withPeriod: period withAll: interfaceDefinitions

	| observationSetting |
	observationSetting := ObservationWorkbenchSetting over: period withAll: interfaceDefinitions.
	^self
		apply: scenarioSetting
		and: observationSetting