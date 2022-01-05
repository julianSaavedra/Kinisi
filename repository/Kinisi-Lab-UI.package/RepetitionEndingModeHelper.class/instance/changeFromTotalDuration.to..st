change
changeFromTotalDuration: helper to: workbench

	| delta repetitions |
	delta := workbench delta.
	repetitions := (workbench endingMode totalDuration / delta) asInteger.
	workbench repeat: repetitions steppingBy: delta