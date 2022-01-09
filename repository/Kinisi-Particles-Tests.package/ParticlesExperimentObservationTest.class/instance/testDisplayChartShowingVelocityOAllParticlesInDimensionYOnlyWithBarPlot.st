tests
testDisplayChartShowingVelocityOAllParticlesInDimensionYOnlyWithBarPlot

	| interfaceSpec |
	self configureThreeFreeFallingParticlesWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		over: ParticleProperty velocity
		on: MeasureDimension y
		plottingWith: ParticleChartPlotType bar.
	self
		runExperimentUsing: interfaceSpec
		named: 'Velocity_AllParticles_DimensionYOnly_Bar'