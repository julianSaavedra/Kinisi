tests
testDisplayChartShowingPositionOfSingleRedParticleInDimensionYOnlyWithBarPlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension y
		                 plottingWith: ParticleChartPlotType bar.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_SingleRedParticle_DimensionYOnly_Bar'