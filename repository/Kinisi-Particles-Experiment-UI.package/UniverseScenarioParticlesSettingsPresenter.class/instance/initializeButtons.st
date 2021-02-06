initialization
initializeButtons

	addButton := self newButton.
	addButton label: 'Add'.
	addButton action: [ self addButtonAction ].
	removeButton := self newButton.
	removeButton label: 'Remove'.
	removeButton action: [ self removeButtonAction ].
	removeAllButton := self newButton.
	removeAllButton label: 'Remove all'.
	removeAllButton action: [ self removeAllButtonAction ]