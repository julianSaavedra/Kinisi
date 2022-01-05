initialization
initializeName

	name := SpLabeledPresenter label: 'Name:' input: self newTextInput.
	name input
		text: currentSpecification name;
		whenSubmitDo: [:newName | 
			| newSpecification |
			newSpecification := currentSpecification name: newName text asString.
			specificationUpdateAction value: newSpecification.
			currentSpecification := newSpecification ]