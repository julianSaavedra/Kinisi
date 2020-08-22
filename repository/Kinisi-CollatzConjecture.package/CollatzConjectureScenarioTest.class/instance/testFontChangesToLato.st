tests
testFontChangesToLato

	self
		assert: [:scenario | scenario font ]
		changesTo: #Lato
		when: [:property | workbench font: property ]