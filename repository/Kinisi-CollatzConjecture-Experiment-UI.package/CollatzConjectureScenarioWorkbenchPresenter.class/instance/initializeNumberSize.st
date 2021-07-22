initialization
initializeNumberSize

	size := self newNumberInput.
	size number: workbench scenario numberSize.
	size whenSubmitDo: [
		[ workbench numberSize: size number.
			self doPostUpdateAction.
			true ] on: Error do: [ :error |	
			self showWindowFor: error.
			size number:  workbench scenario numberSize.
			false ]
		]