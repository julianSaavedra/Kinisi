private
applyObservationOn: workbench

	| observationWorkbench interfaceDefinition |
	observationWorkbench := workbench observationWorkbench.
	observationWorkbench period: (Duration milliSeconds: 500).
	interfaceDefinition := InterfaceDefinition
		                       named: 'Animation'
		                       with:
		                       CollatzConjectureAnimationInterfaceSpec new.
	observationWorkbench add: interfaceDefinition