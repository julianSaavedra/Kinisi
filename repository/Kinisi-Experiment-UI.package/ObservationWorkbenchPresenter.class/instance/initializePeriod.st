initialization
initializePeriod

	periodUnitTranslator := ObservationPeriodTranslator basedOn: workbench period.
	self initializePeriodLabel.
	self initializePeriodAmount.
	self initializePeriodUnit