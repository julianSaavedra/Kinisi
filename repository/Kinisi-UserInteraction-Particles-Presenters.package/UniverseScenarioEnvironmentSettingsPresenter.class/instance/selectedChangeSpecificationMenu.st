menu
selectedChangeSpecificationMenu

	| menu |
	menu := self newMenu.
	menu
		title: 'Specification Menu';
		addItem: [:anItem | 
			anItem
				name: 'Remove';
				description: 'Removes selected specification';
				action: [ self removeSelectedSpecification ] ].
	^menu