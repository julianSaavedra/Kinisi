initialization
initializeVisibilityWidgets

	| label |
	visibilityButton := self newButton.
	label := particleDraft isVisible ifTrue: [ 'Visible' ] ifFalse: [ 'Invisible' ].
	visibilityButton label: label.
	visibilityButton action: [
		particleDraft isVisible
			ifTrue: [
				particleDraft makeYourselfInvisible.
				visibilityButton label: 'Invisible' ]
			ifFalse: [
				particleDraft makeYourselfVisible.
				visibilityButton label: 'Visible' ]].