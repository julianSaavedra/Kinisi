graphic - decorations
exampleAxisReferenceCenteredInView

	self
		openWindowNamed: 'Axis Reference - Center'
		inCanvasDraw: [:canvas | 
			canvas color: Color black.
			AxisReferenceRenderer inOrigin drawIn: canvas ]