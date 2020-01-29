accessing
whenModelChangesDo: block

	postNameChangeBlock := block.
	position whenModelChangesDo: block.
	velocity whenModelChangesDo: block.
	color whenModelChangesDo: block