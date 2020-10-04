deprecated
initializeGrid

	| gridVisibilityLabel |
	gridColor := ColorSettingPresenter on: workbench scenario gridColor.
	"gridColor label: 'Grid Color'."
	gridColor
		changeModelWith: [ :newColor | workbench gridColor: newColor ].
	gridVisibility := self newButton.
	gridVisibilityLabel := workbench scenario isGridVisible
		ifTrue: [ 'Visible Grid' ]
		ifFalse: [ 'Invisible Grid' ].
	gridVisibility label: gridVisibilityLabel.
	gridVisibility
		action: [ workbench scenario isGridVisible
				ifTrue: [ workbench turnGridOff.
					gridVisibility label: 'Invisible Grid' ]
				ifFalse: [ workbench turnGridOn.
					gridVisibility label: 'Visible Grid' ] ]