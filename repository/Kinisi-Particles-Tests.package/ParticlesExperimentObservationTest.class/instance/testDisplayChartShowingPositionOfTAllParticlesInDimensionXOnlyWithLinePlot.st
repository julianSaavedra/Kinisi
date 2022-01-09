tests
testDisplayChartShowingPositionOfTAllParticlesInDimensionXOnlyWithLinePlot

	| interfaceSpec |
	self configureThreeFreeFallingParticlesWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension x
		                 plottingWith: ParticleChartPlotType line.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_AllParticles_DimensionX_Scatter'