tests
testPluggableInterfaceSpecCannotBeHaveAnEmptyDescription

	self
		should: [ 
			PluggableInterfaceSpec
				onStartDo: [  ]
				with: [ :observation |  ]
				andWhenFinishedDo: [  ]
				choosingDisplayWith: [  ] 
				description: '' ]
		raise: Error
		whoseDescriptionIncludes:
		'Specification description cannot be empty'