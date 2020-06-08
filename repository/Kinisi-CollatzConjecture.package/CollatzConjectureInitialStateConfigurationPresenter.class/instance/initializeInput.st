initialization
initializeInput

	input := self newNumberInput.
	input number: workbench initialState number.
	input acceptBlock: [:targetNumber |
		[ (CollatzConjectureInitialStateModifier with: targetNumber asNumber) modify: workbench.
			true ] on: CollatzConjectureError do: [ :error |	
			self showWindowFor: error.
			input number: workbench initialState number.
			false ]
		]