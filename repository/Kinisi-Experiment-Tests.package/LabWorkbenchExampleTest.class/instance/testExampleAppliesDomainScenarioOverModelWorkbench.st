tests
testExampleAppliesDomainScenarioOverModelWorkbench

	| domainModelWorkbench workbench example amendedScenarioWorkench |
	domainModelWorkbench := self domainModelWorkbench.
	workbench := self labWorkbenchWith: domainModelWorkbench.
	example := LabWorkbenchExample
		           apply: [ :modelWorkbench | 
		           amendedScenarioWorkench := modelWorkbench ]
		           withPeriod: self twoSeconds
		           withAll: self twoInterfaceDefinitions.

	example applyOn: workbench.

	self assert: amendedScenarioWorkench equals: domainModelWorkbench