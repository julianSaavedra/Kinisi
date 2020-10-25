instance creation
using: domainModelWorkbench

	| steppingWorkbench |
	steppingWorkbench := SteppingWorkbench for: domainModelWorkbench.
	^self using: domainModelWorkbench with: steppingWorkbench