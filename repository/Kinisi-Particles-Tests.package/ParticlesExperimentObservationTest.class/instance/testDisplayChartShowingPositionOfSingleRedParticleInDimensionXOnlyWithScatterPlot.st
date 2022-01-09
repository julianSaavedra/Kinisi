tests
testDisplayChartShowingPositionOfSingleRedParticleInDimensionXOnlyWithScatterPlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension x
		                 plottingWith: ParticleChartPlotType scatter.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_SingleRedParticle_DimensionXOnly_Scatter'