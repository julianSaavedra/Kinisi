tests
testStateChangesToFive
	
	self
		assert: [:scenario | scenario state number ]
		changesTo: 5
		when: [:property | workbench state: property ]