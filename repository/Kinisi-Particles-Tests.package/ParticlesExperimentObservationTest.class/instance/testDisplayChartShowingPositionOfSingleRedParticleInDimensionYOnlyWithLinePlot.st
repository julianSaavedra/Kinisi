tests
testDisplayChartShowingPositionOfSingleRedParticleInDimensionYOnlyWithLinePlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension y
		                 plottingWith: ParticleChartPlotType line.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_SingleRedParticle_DimensionYOnly_Line'