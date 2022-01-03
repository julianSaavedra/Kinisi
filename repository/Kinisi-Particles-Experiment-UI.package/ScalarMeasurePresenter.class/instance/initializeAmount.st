initialization
initializeAmount

	amount := self instantiate: KinisiNumberInputFieldPresenter on: measure amount.
	amount changeModelWith: [:newAmount | self updateModelWith: measure unit and: newAmount ]