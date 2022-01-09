private
updateSelectedDefinitionWith: definition

	selectedDefinition := self instantiate: ObservationInterfaceDefinitionPresenter on: definition.
	selectedDefinition whenModelChangesDo: [:newDefinition |
		self replaceCurrentSelectedDefinitionWith: newDefinition ]