accessing
whenChangedDo: block

	postNameChangeBlock := block.
	position whenModelChangesDo: block.
	velocity whenModelChangesDo: block.
	color whenChangedDo: block