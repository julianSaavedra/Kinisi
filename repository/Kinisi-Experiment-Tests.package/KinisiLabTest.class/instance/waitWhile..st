support
waitWhile: condition

	[ condition whileTrue ]
		valueWithin: (Duration seconds: 3)
		onTimeout: [ self fail ]