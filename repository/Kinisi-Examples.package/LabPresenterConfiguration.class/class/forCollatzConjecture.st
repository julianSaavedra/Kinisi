instance creation
forCollatzConjecture

	| workbench lab |
	workbench := LabWorkbench
		using: CollatzConjectureScenarioWorkbench default
		with: CollatzConjectureSteppingWorkbench new.
	lab := KinisiLab using: workbench.
	^self
		title: 'Lab - Collatz Conjecture'
		extent: 600@400
		with: CollatzConjecturePresenterSpecification default
		on: lab