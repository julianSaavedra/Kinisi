initialization
initializeBasedOn: measures withMinimunAt: amount

	minimunValue := amount.
	scaleMinimun := (measures collect: [:aMeasure | aMeasure amount abs]) min log