initialization
initializePresenter

	name := self newTextInput.
	name text: definition name.
	name disable.
	spec := domainSpecification observationSpecPresenterFor: definition spec within: self.
	spec whenModelChangesDo: [:newSpec |
		| newDefinition |
		newDefinition := definition spec: newSpec. 
		modelChangesAction value: newDefinition.
		definition := newDefinition]