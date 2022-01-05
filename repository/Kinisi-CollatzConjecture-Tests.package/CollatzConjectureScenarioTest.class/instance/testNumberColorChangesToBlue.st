tests
testNumberColorChangesToBlue

	self
		assert: [:scenario | scenario numberColor ]
		changesTo: Color blue
		when: [:property | workbench numberColor: property ]