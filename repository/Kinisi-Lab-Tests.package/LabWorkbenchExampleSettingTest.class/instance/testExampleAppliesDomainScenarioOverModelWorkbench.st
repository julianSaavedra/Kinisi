tests
testExampleAppliesDomainScenarioOverModelWorkbench

	| domainModelWorkbench workbench example domainModelWorkbenchSetting |
	domainModelWorkbench := self domainModelWorkbench.
	workbench := self labWorkbenchWith: domainModelWorkbench.
	domainModelWorkbenchSetting := LabWorkbenchExampleSettingTestingClerk new.
	example := LabWorkbenchExampleSetting
		           apply: domainModelWorkbenchSetting
		           withPeriod: self twoSeconds
		           withAll: self twoInterfaceDefinitions.

	example applyOn: workbench.

	self assert: domainModelWorkbenchSetting targetWorkbench equals: domainModelWorkbench