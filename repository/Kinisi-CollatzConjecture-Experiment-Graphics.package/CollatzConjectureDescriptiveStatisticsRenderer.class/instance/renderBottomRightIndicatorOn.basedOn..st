private - rendering
renderBottomRightIndicatorOn: canvas basedOn: stats

	| indicatorBox resultLabel indicator |
	indicatorBox := self baseSateliteIndicatorBox.
	indicatorBox
		cornerRadius: (RSCornerRadius new bottomRight: 20);
		translateTopLeftTo: self mainIndicatorBoxPosition.
	resultLabel := self sateliteStatTextIn: indicatorBox with: 0 @ 15 showing: stats minimun.
	self
		label: indicatorBox
		with: 'Min'
		at: [:location | location inner; bottom ].
	indicator := RSComposite new.
	indicator shapes: {indicatorBox. resultLabel }.
	canvas add: indicator