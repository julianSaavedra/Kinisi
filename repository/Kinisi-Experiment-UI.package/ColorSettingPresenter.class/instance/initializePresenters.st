initialization
initializePresenters

	list := self newDropList.
	list
		items: self colors;
		selectItem: currentColor;
		display: [ :selectedColor | selectedColor name ];
		whenSelectedItemChangedDo: [ :newColor | self colorChangeTo: newColor ].
	modelChangingBlock := [ :newColor |  ].
	postColorChangeBlock := [  ].
	self initializeFocusOrder