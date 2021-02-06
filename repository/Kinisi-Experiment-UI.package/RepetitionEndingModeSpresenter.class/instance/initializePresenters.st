initialization
initializePresenters

	repetitions := self newNumberInput.
	repetitions
		beInteger;
		minimum: 0;
		number: endingMode numberOfRepetitions