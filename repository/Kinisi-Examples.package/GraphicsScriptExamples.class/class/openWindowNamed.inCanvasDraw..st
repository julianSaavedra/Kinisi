support
openWindowNamed: title inCanvasDraw: canvasDrawingAction

	| canvas |
	canvas := SpRoassalPresenter new.
	canvas script: canvasDrawingAction.
	canvas openWithSpec.
	canvas withWindowDo: [ :window | window title: title]