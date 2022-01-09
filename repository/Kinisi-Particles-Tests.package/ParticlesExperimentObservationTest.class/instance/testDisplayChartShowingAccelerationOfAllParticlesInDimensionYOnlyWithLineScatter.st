tests
testDisplayChartShowingAccelerationOfAllParticlesInDimensionYOnlyWithLineScatter

	| interfaceSpec |
	self configureThreeFreeFallingParticlesWithSpeedInX.
	interfaceSpec := ParticleChartInterfaceSpec
		over: ParticleProperty acceleration
		on: MeasureDimension y
		plottingWith: ParticleChartPlotType scatter.
	self
		runExperimentUsing: interfaceSpec
		named: 'Acceleration_SingleRedParticle_DimensionYOnly_Scatter'