initialization
initializeWindow: aWindowPresenter

	aWindowPresenter
		title: 'Experiment';
		askOkToClose: true;
		initialExtent: 350@110;
		whenWillCloseDo: [ refreshing terminate ]