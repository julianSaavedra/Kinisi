initialization
initializeWindow: aWindowPresenter

	aWindowPresenter
		title: configuration windowTitle;
		toolbar: self toolbar;
		whenResizingDo: [ self refresh ];
		askOkToClose: true;
		initialExtent: configuration windowInitialExtent
		