initialization
initializeWindow: aWindowPresenter

	aWindowPresenter
		title: configuration windowTitle;
		toolbar: self toolbar;
		askOkToClose: true;
		initialExtent: configuration windowInitialExtent;
		whenResizingDo: [ self refresh ]