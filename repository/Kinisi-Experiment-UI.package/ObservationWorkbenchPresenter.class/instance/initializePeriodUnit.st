initialization
initializePeriodUnit

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
		selectItem: 'Seconds'