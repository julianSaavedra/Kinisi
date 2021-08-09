actions
drawIn: canvas basedOn: stats

	self renderTopLeftIndicatorOn: canvas basedOn: stats.
	self renderTopRightIndicatorOn: canvas basedOn: stats.
	self renderBottomLeftIndicatorOn: canvas basedOn: stats.
	self renderBottomRightIndicatorOn: canvas basedOn: stats.
	self renderMainIndicatorOn: canvas basedOn: stats.
	canvas zoomToFit