tests
testDisplayChartShowingVelocityOfSingleRedParticleInDimensionYOnlyWithLinePlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		over: ParticleProperty velocity
		on: MeasureDimension y
		plottingWith: ParticleChartPlotType line.
	self
		runExperimentUsing: interfaceSpec
		named: 'Velocity_SingleRedParticle_DimensionYOnly_Line'