accessing model
initializePresenters

	periodLabel := self newLabel.
	periodLabel label: 'Period'.
	periodAmount := self newNumberInput.
	periodAmount beFloat.
	periodAmount number: workbench period asSeconds.
	periodAmount whenNumberChangedDo: [:newPeriodAmount |
		workbench period: (periodUnitTranslator translate: newPeriodAmount) ].
	periodUnit := self newDropList.
	periodUnit
		addItemLabeled: 'Seconds'
		do: [
			periodUnitTranslator := ObservationPeriodTranslator toSeconds.
			periodAmount number: periodAmount number ];
		addItemLabeled: 'Milliseconds'
		do: [
			periodUnitTranslator := ObservationPeriodTranslator toMilliseconds.
			periodAmount number: periodAmount number ];
		selectItem: 'Seconds'.
	
	interfaceDefinitions := self instantiate: ObservationInterfaceDefinitionsWorkbench on: workbench