tests
testPlotTypeEqual

	| barPlotType anotherBarPlotType |
	barPlotType := ParticleChartPlotType bar.
	anotherBarPlotType := ParticleChartPlotType bar.
	
	self assert: barPlotType equals: anotherBarPlotType.
	self deny: barPlotType identicalTo: anotherBarPlotType.
	self deny: barPlotType equals: ParticleChartPlotType line