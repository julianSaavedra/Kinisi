initialization
initializePeriodAmount

	periodAmount := self
		instantiate: KinisiNumberInputFieldPresenter
		on: (periodUnitTranslator translateFrom: workbench period).
	periodAmount beFloat.
	periodAmount changeModelWith: [:newPeriodAmount | self updateModelPeriod: newPeriodAmount]