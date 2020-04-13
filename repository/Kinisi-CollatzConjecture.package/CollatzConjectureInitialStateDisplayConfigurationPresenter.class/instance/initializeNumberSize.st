initialization
initializeNumberSize

	size := self newNumberInput.
	size number: workbench displaySettings numberSize.
	size acceptBlock: [:targetNumber |
		[ (CollatzConjectureDisplaySettingsModifier onSize: targetNumber asNumber) modify: workbench.
			self doPostUpdateAction.
			true ] on: Error do: [ :error |	
			self showWindowFor: error.
			size number:  workbench displaySettings numberSize.
			false ]
		]