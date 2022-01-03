initialization
initializeState

	state := self instantiate: KinisiNumberInputFieldPresenter on: workbench scenario state number.
	state changeModelWith: [:newNumber | workbench state: newNumber ].
	state whenModelChangesDo: [ self doPostUpdateAction ]