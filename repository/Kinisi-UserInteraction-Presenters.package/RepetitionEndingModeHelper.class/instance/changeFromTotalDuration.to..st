change
changeFromTotalDuration: helper to: workbench

	| delta repetitions |
	delta := workbench deltaMode.
	repetitions := workbench endingMode totalDuration / delta.
	workbench repeat: repetitions steppingBy: delta