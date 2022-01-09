tests
testNewChartInterfaceSpecIsCreatedWithGivenPlotType

	| originalSpec newSpec newPlotType |
	originalSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension y
		                 plottingWith: ParticleChartPlotType line.
	newPlotType := ParticleChartPlotType scatter.
	newSpec := originalSpec plotType: newPlotType.

	self deny: newSpec identicalTo: originalSpec.
	self assert: newSpec property equals: originalSpec property.
	self assert: newSpec dimension equals: originalSpec dimension.
	self assert: newSpec plotType equals: newPlotType