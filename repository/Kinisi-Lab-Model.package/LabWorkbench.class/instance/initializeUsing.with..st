initialization
initializeUsing: aDomainModelWorkbench with: aSteppingWorkbench
  
	domainModelWorkbench := aDomainModelWorkbench.
	observationWorkbench := ObservationWorkbench default.
	steppingWorkbench := aSteppingWorkbench