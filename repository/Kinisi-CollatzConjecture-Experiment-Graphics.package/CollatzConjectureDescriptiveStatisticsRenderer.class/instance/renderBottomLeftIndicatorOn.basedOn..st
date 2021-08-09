private - rendering
renderBottomLeftIndicatorOn: canvas basedOn: stats

	| indicatorBox resultLabel indicator |
	indicatorBox := self baseSateliteIndicatorBox.
	indicatorBox
		cornerRadius: (RSCornerRadius new bottomLeft: 20);
		translateTopRightTo: self mainIndicatorBoxPosition.
	resultLabel := self sateliteStatTextIn: indicatorBox with: 0 @ 15 showing: stats odds.
	self
		label: indicatorBox
		with: 'Odds'
		at: [:location | location inner; bottom ].
	indicator := RSComposite new.
	indicator shapes: {indicatorBox. resultLabel }.
	canvas add: indicator