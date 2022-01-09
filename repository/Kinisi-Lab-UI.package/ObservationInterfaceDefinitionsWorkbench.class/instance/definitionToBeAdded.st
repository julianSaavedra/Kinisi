private
definitionToBeAdded

	| definitionOptions |
	definitionOptions := domainSpecification interfaceOptions.
	^UIManager default
		chooseFrom: (definitionOptions collect: [:option | option name ])
		values: definitionOptions
		title: 'Interface Definition options'