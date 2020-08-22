initialization
initializeNumberSize

	size := self newNumberInput.
	size number: workbench scenario numberSize.
	size acceptBlock: [:targetNumber |
		[ workbench numberSize: targetNumber asNumber.
			self doPostUpdateAction.
			true ] on: Error do: [ :error |	
			self showWindowFor: error.
			size number:  workbench scenario numberSize.
			false ]
		]