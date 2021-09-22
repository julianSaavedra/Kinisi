initialization
initializeWindow: aWindowPresenter

	aWindowPresenter
		title: 'Experiment';
		askOkToClose: true;
		initialExtent: 250@100;
		whenWillCloseDo: [ refreshing terminate ]