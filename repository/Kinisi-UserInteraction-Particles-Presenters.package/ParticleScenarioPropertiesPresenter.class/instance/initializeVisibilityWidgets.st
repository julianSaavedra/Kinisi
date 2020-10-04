initialization
initializeVisibilityWidgets

	visibility := self newButton.
	self setVisibilityLabel.
	visibility action: [
		self toggleVisibility.
		self setVisibilityLabel ]