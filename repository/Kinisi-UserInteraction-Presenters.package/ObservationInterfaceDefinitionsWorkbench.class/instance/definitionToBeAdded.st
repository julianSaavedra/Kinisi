initialization
definitionToBeAdded

	^PopupChoiceDialogWindow
		chooseIn: World
		title: 'Interface Definition options'
		labels: (definitionOptions collect: [:option | option name ])
		values: definitionOptions
		lines: #()