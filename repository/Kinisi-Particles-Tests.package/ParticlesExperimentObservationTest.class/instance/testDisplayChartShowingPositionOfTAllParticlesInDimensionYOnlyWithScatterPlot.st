tests
testDisplayChartShowingPositionOfTAllParticlesInDimensionYOnlyWithScatterPlot

	| interfaceSpec |
	self configureThreeFreeFallingParticlesWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension y
		                 plottingWith: ParticleChartPlotType scatter.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_AllParticles_DimensionY_Scatter'