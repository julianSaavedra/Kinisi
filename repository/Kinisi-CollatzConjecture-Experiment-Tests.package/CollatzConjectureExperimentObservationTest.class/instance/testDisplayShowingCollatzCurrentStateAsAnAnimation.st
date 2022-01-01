tests
testDisplayShowingCollatzCurrentStateAsAnAnimation

	| interfaceSpec |
	interfaceSpec := CollatzConjectureAnimationInterfaceSpec new.
	self runExperimentUsing: interfaceSpec named: 'Animation'