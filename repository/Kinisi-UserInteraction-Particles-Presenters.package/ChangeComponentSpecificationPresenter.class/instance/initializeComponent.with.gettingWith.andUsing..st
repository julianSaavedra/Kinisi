initialization
initializeComponent: componentTypeName with: units gettingWith: componentExtractor andUsing: specificationCreator

	component := self
		instantiate: VectorMeasurePresenter
		on: (componentExtractor value: currentSpecification).
	component
		label: ('Type: <s1>' expandMacrosWith: componentTypeName) asText allBold;
		units: units;
		changeModelWith:[:newComponent | 
			| newSpecification |
			newSpecification := specificationCreator value: currentSpecification value: newComponent.
			self updateCurrentSpecificationWith: newSpecification ]