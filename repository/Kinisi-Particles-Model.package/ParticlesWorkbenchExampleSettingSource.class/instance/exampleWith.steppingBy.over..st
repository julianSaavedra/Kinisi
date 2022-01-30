private
exampleWith: modelSetting steppingBy: delta over: finalDuration

	| interfaceDefinition steppingSetting period |
	steppingSetting := SteppingWorkbenchSetting stepBy: delta over: finalDuration.
	period := self fortyMilliseconds.
	interfaceDefinition := self animationInterfaceDefinition.
	^LabWorkbenchExampleSetting
		  apply: modelSetting
		  applyStepping: steppingSetting
		  withPeriod: period
		  withAll: { interfaceDefinition }