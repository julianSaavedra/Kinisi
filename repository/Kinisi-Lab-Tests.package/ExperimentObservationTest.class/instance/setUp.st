running
setUp

	super setUp.
	lab := KinisiLab using: self workbench.
	observationWorkbench := lab workbench observationWorkbench.
	observationWorkbench period: (Duration milliSeconds: 50).
	recorders := Dictionary new