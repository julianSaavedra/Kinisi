initialization
initializeWindow: aWindowPresenter

	aWindowPresenter
		title: 'Experiment';
		askOkToClose: true;
		initialExtent: 350@150;
		whenWillCloseDo: [ refreshing terminate ]