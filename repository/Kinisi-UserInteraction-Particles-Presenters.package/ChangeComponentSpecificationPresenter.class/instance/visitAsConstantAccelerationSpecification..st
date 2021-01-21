initialization - visitor
visitAsConstantAccelerationSpecification: specification

	self
		initializeComponent: 'Constant Acceleration'
		with: {UnitProvider soleInstance standardAccelerationUnit}
		gettingWith: [:aSpecification | specification acceleration ]
		andUsing: [:aSpecification :newComponent | aSpecification acceleration: newComponent ]