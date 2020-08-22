tests
testBackgroungChangesToYellow

	self
		assert: [:scenario | scenario background ]
		changesTo: Color yellow
		when: [:property | workbench background: property ]