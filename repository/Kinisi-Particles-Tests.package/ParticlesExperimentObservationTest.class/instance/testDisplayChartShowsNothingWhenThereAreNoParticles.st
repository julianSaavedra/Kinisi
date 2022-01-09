tests
testDisplayChartShowsNothingWhenThereAreNoParticles

	| interfaceSpec |
	self assertEmpty: lab workbench modelWorkbench scenario particles.
	interfaceSpec := ParticleChartInterfaceSpec
		over: ParticleProperty acceleration
		on: MeasureDimension y
		plottingWith: ParticleChartPlotType scatter.
	self
		runExperimentUsing: interfaceSpec
		named: 'EmptyScenario_NothingIsShown'