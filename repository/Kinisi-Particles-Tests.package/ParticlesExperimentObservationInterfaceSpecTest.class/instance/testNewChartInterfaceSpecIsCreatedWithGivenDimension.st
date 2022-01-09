tests
testNewChartInterfaceSpecIsCreatedWithGivenDimension

	| originalSpec newSpec newDimension |
	originalSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension y
		                 plottingWith: ParticleChartPlotType line.
	newDimension := MeasureDimension x.
	newSpec := originalSpec dimension: newDimension.

	self deny: newSpec identicalTo: originalSpec.
	self assert: newSpec property equals: originalSpec property.
	self assert: newSpec dimension equals: newDimension.
	self assert: newSpec plotType equals: originalSpec plotType