initialization
initializeName

	name := self instantiate: SpLabelledTextInput.
	name label: 'Name:'.
	name text: currentSpecification name.
	name whenTextChangedDo: [:newName | 
		| newSpecification |
		newSpecification := currentSpecification name: newName.
		specificationUpdateAction value: newSpecification.
		currentSpecification := newSpecification ]