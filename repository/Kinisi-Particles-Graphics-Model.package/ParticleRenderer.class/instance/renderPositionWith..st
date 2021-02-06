configuring
renderPositionWith: scale

	scale negative ifTrue: [ RenderingError signal: 'Scale cannot be negative' ].
	scaleToMovedParticle := scale