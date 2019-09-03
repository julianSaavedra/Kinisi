initialization
initializeColorWidgets

	colorLabel := self newLabel.
	colorLabel label: 'Color'.
	color := self newDropList.
	color
		items: (Color registeredColorNames sort collect: [:colorName | Color named: colorName]);
		displayBlock: [:selectedColor | selectedColor name ].
	postColorChangeBlock := [].