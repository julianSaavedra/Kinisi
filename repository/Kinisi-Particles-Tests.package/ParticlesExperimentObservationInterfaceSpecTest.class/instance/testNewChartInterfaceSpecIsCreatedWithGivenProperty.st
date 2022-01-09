tests
testNewChartInterfaceSpecIsCreatedWithGivenProperty

	| originalSpec newSpec newProperty |
	originalSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension y
		                 plottingWith: ParticleChartPlotType line.
	newProperty := ParticleProperty velocity.
	newSpec := originalSpec property: newProperty.

	self deny: newSpec identicalTo: originalSpec.
	self assert: newSpec property equals: newProperty.
	self assert: newSpec dimension equals: originalSpec dimension.
	self assert: newSpec plotType equals: originalSpec plotType