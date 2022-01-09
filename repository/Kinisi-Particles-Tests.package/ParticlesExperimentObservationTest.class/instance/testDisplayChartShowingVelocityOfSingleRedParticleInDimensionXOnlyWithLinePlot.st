tests
testDisplayChartShowingVelocityOfSingleRedParticleInDimensionXOnlyWithLinePlot

	| interfaceSpec |
	self configureFreeFallingParticleWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		                 over: ParticleProperty position
		                 on: MeasureDimension y
		                 plottingWith: ParticleChartPlotType line.
	self
		runExperimentUsing: interfaceSpec
		named: 'Velocity_SingleRedParticle_DimensionYOnly_Line'