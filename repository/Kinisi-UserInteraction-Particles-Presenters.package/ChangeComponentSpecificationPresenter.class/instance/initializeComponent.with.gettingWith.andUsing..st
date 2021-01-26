initialization
initializeComponent: componentTypeName with: units gettingWith: componentExtractor andUsing: specificationCreator

	component := self
		instantiate: VectorMeasurePresenter
		on: (componentExtractor value: currentSpecification).
	component
		label: ('Type: <1s>' expandMacrosWith: componentTypeName);
		units: units;
		changeModelWith:[:newComponent | 
			| newSpecification |
			newSpecification := specificationCreator value: currentSpecification value: newComponent.
			self updateCurrentSpecificationWith: newSpecification ]