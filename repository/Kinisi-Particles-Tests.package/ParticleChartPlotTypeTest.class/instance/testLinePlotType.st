tests
testLinePlotType

	| plotType |
	plotType := ParticleChartPlotType line.

	self assert: plotType name equals: 'Line'.
	self assert: plotType isVisitedComparing: self linePlotTypeVisitingCode