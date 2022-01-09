tests
testPlotTypeHash

	| barPlotType anotherBarPlotType |
	barPlotType := ParticleChartPlotType bar.
	anotherBarPlotType := ParticleChartPlotType bar.
	
	self assert: barPlotType hash equals: anotherBarPlotType hash