tests
testPluggableInterfaceSpecDescriptionIsNotEmpty

	| spec description |
	description := 'Dumy spec for test that will be extracted.'.
	spec := PluggableInterfaceSpec
		        onStartDo: [  ]
		        with: [ :observation |  ]
		        andWhenFinishedDo: [  ]
		        choosingDisplayWith: [  ]
		        description: description.

	spec accept: self.
	
	self assert: visitingSpecResult equals: description