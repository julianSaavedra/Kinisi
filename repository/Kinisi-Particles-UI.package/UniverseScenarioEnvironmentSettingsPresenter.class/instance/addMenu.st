menu
addMenu

	| menu |
	menu := self newMenu.
	menu
		addItem: [ :anItem | 
			anItem
				name: 'Acceleration - Constant';
				action: [ self addConstantAccelerationOnSelectedParticle ] ];
		addItem: [ :anItem | 
			anItem
				name: 'Force - Constant';
				action: [ self addConstantForcenOnSelectedParticle ] ];
		addItem: [ :anItem | 
			anItem
				name: 'Force - Perpendicular to Velocity - Clockwise';
				action: [ self addForcePerpendicularToVelocityClockwiseOnSelectedParticle ] ];
		addItem: [ :anItem | 
			anItem
				name: 'Force - Perpendicular to Velocity - Counterclockwise';
				action: [ self addForcePerpendicularToVelocityCounterclockwiseOnSelectedParticle ] ].
	^ menu