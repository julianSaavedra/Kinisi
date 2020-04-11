accessing model
initializeWidgets

	initialState := self instantiate: CollatzConjectureInitialStateConfigurationPresenter on: workbench.
	play := self newButton.
	play icon: (self iconNamed: #glamorousGo).
	play action: [workbench play].
	lastResult := self newButton.
	lastResult icon: (self iconNamed: #glamorousTable).
	lastResult action: [workbench lastResult inspect].
	