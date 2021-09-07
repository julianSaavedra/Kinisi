initialization
initializePeriodUnit

	periodUnit := self newDropList.
	self unitTranslators do: [ :translator | 
		periodUnit
			addItemLabeled: translator unitName
			do: [ 
				periodUnitTranslator := translator.
				self updateModelPeriod ] ].
	periodUnit selectItem: periodUnitTranslator unitName