initialization
initializePresenters

	workbench := self instantiate: LabWorkbenchPresenter on: lab workbench.
	workbench using: LabWorkbenchPresenterExamples observationInterfaceSpecsForCollatz.