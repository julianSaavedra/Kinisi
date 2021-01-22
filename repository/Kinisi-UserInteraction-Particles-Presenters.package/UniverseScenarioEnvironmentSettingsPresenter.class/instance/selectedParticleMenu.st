menu
selectedParticleMenu

	| menu |
	menu := self newMenu.
	menu
		title: 'Specifications Menu';
		addItem: [ :anItem | 
			anItem
				name: 'Add...';
				description: 'Add change specification to selected particle';
				subMenu: self addMenu ];
		addItem: [ :anItem | 
			anItem
				name: 'Remove all';
				description: 'Removes all change specifications of selected particle';
				action: [ self removeAllSpecificationsInSelectedParticle ] ].
	^menu