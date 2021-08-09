tests
testDescriptiveStatisticsAreProduceFromExperimenResult

	| lab workbench statsCollector observations stats |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	workbench modelWorkbench state: 15.
	lab := KinisiLab using: workbench.

	lab runExperiment.
	
	statsCollector := CollatzConjectureDescriptiveStatisticsCollector new.
	observations := OrderedCollection new.
	lab lastResult withTimeAndStateDo: [:step :state |
		| observation |
		observation := SimulationStepResult at: step with: state.
		observations add: observation ].
	
	(observations first: 11) do: [:observation | statsCollector collect: observation ].
	stats := statsCollector currentStatistics.
	
	self assert: stats index equals: 10.
	self assert: stats state number equals: 20.
	self assert: stats maximun equals: 160.
	self assert: stats minimun equals: 15.
	self assert: stats odds equals: 4.
	self assert: stats evens equals: 7