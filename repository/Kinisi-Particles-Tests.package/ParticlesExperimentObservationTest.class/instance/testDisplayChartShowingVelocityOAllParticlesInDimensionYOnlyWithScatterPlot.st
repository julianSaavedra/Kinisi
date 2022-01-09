tests
testDisplayChartShowingVelocityOAllParticlesInDimensionYOnlyWithScatterPlot

	| interfaceSpec |
	self configureThreeFreeFallingParticlesWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		over: ParticleProperty velocity
		on: MeasureDimension y
		plottingWith: ParticleChartPlotType scatter.
	self
		runExperimentUsing: interfaceSpec
		named: 'Velocity_AllParticles_DimensionYOnly_Scatter'