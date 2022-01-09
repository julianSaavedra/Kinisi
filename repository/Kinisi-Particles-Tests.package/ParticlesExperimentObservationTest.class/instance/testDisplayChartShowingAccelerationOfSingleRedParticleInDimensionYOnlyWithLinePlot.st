tests
testDisplayChartShowingAccelerationOfSingleRedParticleInDimensionYOnlyWithLinePlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		over: ParticleProperty acceleration
		on: MeasureDimension y
		plottingWith: ParticleChartPlotType line.
	self
		runExperimentUsing: interfaceSpec
		named: 'Acceleration_SingleRedParticle_DimensionYOnly_Line'