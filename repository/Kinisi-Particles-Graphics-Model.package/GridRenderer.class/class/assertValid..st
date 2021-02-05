asserting
assertValid: targetSize

	targetSize negative ifTrue: [ RenderingError signal: 'Grid size cannot be negative' ]