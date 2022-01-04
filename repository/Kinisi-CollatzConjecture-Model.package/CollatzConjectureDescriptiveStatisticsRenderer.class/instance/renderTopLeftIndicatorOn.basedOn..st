private - rendering
renderTopLeftIndicatorOn: canvas basedOn: stats

	| indicatorBox result indicator |
	indicatorBox := self baseSateliteIndicatorBox.
	indicatorBox
		cornerRadius: (RSCornerRadius new topLeft: 20);
		translateBottomRightTo: self mainIndicatorBoxPosition.
	result := self
		sateliteStatTextIn: indicatorBox
		with: self mainIndicatorTextAbsoluteOffset
		showing: stats evens.
	self
		label: indicatorBox
		with: 'Evens'
		at: [:location | location inner; top ].
	indicator := RSComposite new.
	indicator shapes: { indicatorBox. result }.
	canvas add: indicator