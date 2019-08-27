accessing
initializeWidgets

	view := self instantiate: RoassalModel.
	view script: [:rtView :canvas |
		| viewSize particleSize particleShape physicalStateElement |
		canvas color: Color black.
		"rtView @ RTZoomableView."
		viewSize := 250@250.
		particleSize := (viewSize x min: viewSize y) // 4.
		particleShape := RTEllipse new
			borderColor: Color black;
			color: particleDraft color;
			size: particleSize.
			physicalStateElement := particleShape elementOn: particleDraft.
			rtView add: physicalStateElement.
			physicalStateElement translateTo: 0 @ 0.
			canvas camera focusOnCenterScaled: 65@65.
			"physicalStateElement @ RTLabeled."
		VelocityRenderer new drawIn: rtView basedOn: particleDraft velocity holdBy: physicalStateElement.
		PositionMarksRenderer new drawIn: rtView basedOn: particleDraft position movedFromCenterBy: 80.
		AxisReferenceRenderer new drawIn: rtView movedFromCenterToLeftBottomCornerBy: 80].
	
	self focusOrder add: view