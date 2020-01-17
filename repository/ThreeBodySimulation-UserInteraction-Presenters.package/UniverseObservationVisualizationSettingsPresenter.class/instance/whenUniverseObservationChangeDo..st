API
whenUniverseObservationChangeDo: universeChangeAction

	background whenModelChangesDo: universeChangeAction.
	zoom whenModelChangesDo: universeChangeAction.
	scale whenModelChangesDo: universeChangeAction