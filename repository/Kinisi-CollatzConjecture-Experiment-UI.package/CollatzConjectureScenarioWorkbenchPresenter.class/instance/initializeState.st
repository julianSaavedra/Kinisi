initialization
initializeState

	state := self newNumberInput.
	state number: workbench scenario state number.
	state whenSubmitDo: [
		[ workbench state: state number.
			self doPostUpdateAction.
			true ]
				on: Error
				do: [ :error | 
					self showWindowFor: error.
					state number: workbench scenario state number.
					false ] ]