initialization
colorChangeTo: newColor

	currentColor := newColor.
	modelChangingBlock value: newColor.
	postColorChangeBlock value