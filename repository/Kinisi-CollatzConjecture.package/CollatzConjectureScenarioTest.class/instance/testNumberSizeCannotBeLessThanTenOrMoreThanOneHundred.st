tests
testNumberSizeCannotBeLessThanTenOrMoreThanOneHundred

	self
		assert: [ :scenario | scenario numberSize ]
		isNotChangedWhen: [ workbench numberSize: 9 ]
		because: 'Number size must be between 10 and 100'.

	self
		assert: [ :scenario | scenario numberSize ]
		isNotChangedWhen: [ workbench numberSize: 101 ]
		because: 'Number size must be between 10 and 100'