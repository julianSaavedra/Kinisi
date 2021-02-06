initialization - visitor
visitAsConstantForceSpecification: specification

	self
		initializeComponent: 'Constant Force'
		with: {UnitProvider soleInstance standardForceUnit}
		gettingWith: [:aSpecification | aSpecification force ]
		andUsing: [:aSpecification :newComponent | aSpecification force: newComponent ]