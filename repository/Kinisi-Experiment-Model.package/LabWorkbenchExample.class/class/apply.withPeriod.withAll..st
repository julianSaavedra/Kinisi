instance creation
apply: exampleScenarioSetting withPeriod: period withAll: interfaceDefinitions

	^self
		apply: exampleScenarioSetting
		and: [:observationWorkbench |
			observationWorkbench period: period.
			interfaceDefinitions do: [:interfaceDefinition |
				observationWorkbench add: interfaceDefinition] ]