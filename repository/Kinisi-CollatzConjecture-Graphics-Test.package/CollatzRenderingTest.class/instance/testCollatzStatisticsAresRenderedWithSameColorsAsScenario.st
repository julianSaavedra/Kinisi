tests
testCollatzStatisticsAresRenderedWithSameColorsAsScenario

	| observation statistics renderer |
	collatzWorkbench
		numberColor: Color blue;
		background: Color yellow.
	
	observation := SimulationStepResult at: 1 with: (CollatzConjectureState with: 16).
	statistics := CollatzConjectureDescriptiveStatistics during: observation with: 16 with: 5 with: 1 with: 1.
	renderer := CollatzConjectureDescriptiveStatisticsRenderer basedOn: collatzWorkbench scenario.

	self shouldnt: [ renderer drawIn: canvas basedOn: statistics] raise: Error