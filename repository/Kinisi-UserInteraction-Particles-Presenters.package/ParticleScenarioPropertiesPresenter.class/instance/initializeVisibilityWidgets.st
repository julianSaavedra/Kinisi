initialization
initializeVisibilityWidgets

	| label |
	visibility := self newButton.
	label := particle isVisible ifTrue: [ 'Visible' ] ifFalse: [ 'Invisible' ].
	visibility label: label.
	visibility action: [
		particle isVisible
			ifTrue: [
				particle makeYourselfInvisible.
				visibility label: 'Invisible' ]
			ifFalse: [
				particle makeYourselfVisible.
				visibility label: 'Visible' ]].