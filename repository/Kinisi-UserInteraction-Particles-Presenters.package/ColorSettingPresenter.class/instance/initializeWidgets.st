initialization
initializeWidgets

	label := self newLabel.
	label label: 'Color'.
	list := self newDropList.
	list
		items: self colors;
		setSelectedItem: currentColor;
		displayBlock: [:selectedColor | selectedColor name ];
		whenSelectedItemChanged: [:newColor | self colorChangeTo: newColor].
	modelChangingBlock := [:newColor | ].
	postColorChangeBlock := []