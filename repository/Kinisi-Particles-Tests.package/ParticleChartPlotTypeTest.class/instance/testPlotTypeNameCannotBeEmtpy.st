tests
testPlotTypeNameCannotBeEmtpy

	self
		should: [ ParticleChartPlotType named: '' with: [:plotType :visitor | ] ]
		raise: Error
		whoseDescriptionIncludes: 'Plot Type name cannot be empty'