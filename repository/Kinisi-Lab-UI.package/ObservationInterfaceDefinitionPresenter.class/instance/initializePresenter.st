initialization
initializePresenter

	name := self newTextInput.
	name text: definition name.
	name disable.
	spec := domainSpecification observationSpecPresenterFor: definition spec within: self