test - change components
testGravitationalInteractionsAreDisabled

	self
		shouldnt: [ workbench disableGravitationalInteraction ]
		raise: Error