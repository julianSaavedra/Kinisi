initialization
initializeNumberSize

	size := self instantiate: KinisiNumberInputFieldPresenter on: workbench scenario numberSize.
	size changeModelWith: [:newNumber | workbench numberSize: newNumber ].
	size whenModelChangesDo: [ self doPostUpdateAction ]