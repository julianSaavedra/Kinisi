initialization
initializeNotebook

	notebook := self newNotebook.
	notebook
		whenSelectedPageChangedDo: [ :page | page retrievePresenter refresh ]