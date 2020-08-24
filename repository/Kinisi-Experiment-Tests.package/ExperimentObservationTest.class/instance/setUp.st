running
setUp

	super setUp.
	lab := KinisiLab using: self workbench.
	observationWorkbench := lab workbench observationWorkbench.
	recordKeepers := Dictionary new