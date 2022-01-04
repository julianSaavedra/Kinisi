menu
addMenu

	| menu |
	menu := self newMenu.
	menu
		addItem: [ :anItem | 
			anItem
				name: 'Constant Acceleration';
				action: [ self addConstantAccelerationOnSelectedParticle ] ];
		addItem: [ :anItem | 
			anItem
				name: 'Constant Force';
				action: [ self addConstantForcenOnSelectedParticle ] ].
	^ menu