private
setVisibilityLabel

	| label |
	label := particle isVisible
		ifTrue: [ 'Visible' ]
		ifFalse: [ 'Invisible' ].
	visibility label: label