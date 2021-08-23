instance creation
apply: scenarioSetting withPeriod: period withAll: interfaceDefinitions

	^self
		apply: scenarioSetting
		applyStepping: NullWorkbenchSetting new
		withPeriod: period
		withAll: interfaceDefinitions