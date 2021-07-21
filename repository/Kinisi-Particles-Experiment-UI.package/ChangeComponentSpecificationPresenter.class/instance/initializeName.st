initialization
initializeName

	name := SpLabeledPresenter label: 'Name:' input: self newTextInput.
	name input
		text: currentSpecification name;
		whenTextChangedDo: [:newName | 
			| newSpecification |
			newSpecification := currentSpecification name: newName.
			specificationUpdateAction value: newSpecification.
			currentSpecification := newSpecification ]