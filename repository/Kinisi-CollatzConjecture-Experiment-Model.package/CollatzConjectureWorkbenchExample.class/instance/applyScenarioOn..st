private
applyScenarioOn: workbench

	| modelWorkbench |
	modelWorkbench := workbench modelWorkbench.
	modelWorkbench
		state: 5;
		numberColor: Color blue;
		background: Color lightGray;
		font: #'Source Code Pro'