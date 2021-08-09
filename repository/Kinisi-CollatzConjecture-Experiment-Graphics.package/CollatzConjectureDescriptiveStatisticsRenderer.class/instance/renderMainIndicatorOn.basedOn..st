private - rendering
renderMainIndicatorOn: canvas basedOn: stats

	| indicatorBox stateLabel stepLabel indicator textOffset |
	indicatorBox := self mainIndicatorBox.
	textOffset := self mainIndicatorTextAbsoluteOffset.
	stateLabel := self statTextIn: indicatorBox with: 35 and: textOffset showing: stats state number.
	stepLabel := self statTextIn: indicatorBox with: 15 and: textOffset negated showing: ('Step: <1s>' expandMacrosWith: stats index asString).
	indicator := RSComposite new.
	indicator shapes: { indicatorBox. stateLabel. stepLabel}.
	canvas add: indicator