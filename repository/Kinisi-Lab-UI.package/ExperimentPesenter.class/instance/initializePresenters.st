initialization
initializePresenters

	simulation := self newTextInput.
	simulation beNotEditable.
	observation := self newTextInput.
	observation beNotEditable.
	controlPanel := self instantiate: ExperimentControlPanelPresenter on: experiment. 
	self refresh.
	self startRefresshingProcess