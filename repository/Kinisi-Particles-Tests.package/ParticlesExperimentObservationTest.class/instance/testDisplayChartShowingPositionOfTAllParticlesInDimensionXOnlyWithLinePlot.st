tests
testDisplayChartShowingPositionOfTAllParticlesInDimensionXOnlyWithLinePlot

	| interfaceSpec |
	self configureThreeFreeFallingParticlesWithSpeedInX.
	interfaceSpec := ParticlePositionChartInterfaceSpec
		on: MeasureDimension x
		plottingWith: PlotTypeSelector line.
	self
		runExperimentUsing: interfaceSpec
		named: 'Position_AllParticles_DimensionX_Scatter'