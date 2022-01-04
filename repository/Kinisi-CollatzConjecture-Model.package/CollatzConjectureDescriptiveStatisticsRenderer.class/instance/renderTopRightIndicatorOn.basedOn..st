private - rendering
renderTopRightIndicatorOn: canvas basedOn: stats

	| indicatorBox resultLabel indicator |
	indicatorBox := self baseSateliteIndicatorBox.
	indicatorBox
		cornerRadius: (RSCornerRadius new topRight: 20);
		translateBottomLeftTo: self mainIndicatorBoxPosition.
	resultLabel := self
		               sateliteStatTextIn: indicatorBox
		               with: self mainIndicatorTextAbsoluteOffset
		               showing: stats maximun.
	self
		label: indicatorBox
		with: 'Max'
		at: [:location | location inner; top ].
	indicator := RSComposite new.
	indicator shapes: { indicatorBox. resultLabel}.
	canvas add: indicator