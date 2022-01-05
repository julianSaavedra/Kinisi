initialization
colorChangeTo: newColor

	modelChangingBlock value: newColor.
	currentColor := newColor.
	postColorChangeBlock cull: newColor 