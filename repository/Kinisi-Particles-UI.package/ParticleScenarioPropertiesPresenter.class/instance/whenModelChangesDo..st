API
whenModelChangesDo: block

	postNameChangeBlock := block.
	position whenModelChangesDo: block.
	velocity whenModelChangesDo: block.
	color whenModelChangesDo: block.
	visibility whenActionPerformedDo: block