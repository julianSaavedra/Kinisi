tests
testSequenceChartSpec

	| spec |
	spec := ParticleChartInterfaceSpec
				over: ParticleProperty position
				on: MeasureDimension x
				plottingWith: ParticleChartPlotType line.
	self
		assert: spec
		isVisitedComparing: self particleChartSpecVisitingCode