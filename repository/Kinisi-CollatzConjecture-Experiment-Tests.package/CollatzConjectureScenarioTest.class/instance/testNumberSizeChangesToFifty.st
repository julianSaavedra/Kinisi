tests
testNumberSizeChangesToFifty

	self
		assert: [:scenario | scenario numberSize ]
		changesTo: 50
		when: [:property | workbench numberSize: property ]