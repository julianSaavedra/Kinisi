accessing
whenChangedDo: block

	self whenNameChangesDo: block.
	self whenPositionChangesDo: block.
	self whenVelocityChangesDo: block.
	self whenColorChangesDo: block