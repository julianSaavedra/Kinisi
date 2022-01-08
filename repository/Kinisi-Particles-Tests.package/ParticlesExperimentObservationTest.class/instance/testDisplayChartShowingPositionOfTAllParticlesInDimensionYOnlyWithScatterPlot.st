tests
testDisplayChartShowingPositionOfTAllParticlesInDimensionYOnlyWithScatterPlot

	| interfaceSpec |
	self configureThreeFreeFallingParticlesWithSpeedInX.
	interfaceSpec := ParticlePositionChartInterfaceSpec
		on: MeasureDimension y
		plottingWith: PlotTypeSelector scatter.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_AllParticles_DimensionY_Scatter'