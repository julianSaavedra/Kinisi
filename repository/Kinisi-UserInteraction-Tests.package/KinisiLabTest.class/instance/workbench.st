test objects
workbench

	| experimentDefinition |

	experimentDefinition := ExperimentDefinition
		basedOn: 1
		changingWith: [ :step :currentState | currentState * 2 ]
		over: 1
		until: 5
		observingBasedOn: self nullObservationDefinition.
	^ LabWorkbench fixedWith: experimentDefinition