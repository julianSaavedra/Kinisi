private
descriptionSpecWith: description

	| specPresenter |
	specPresenter := ownerPresenter newText.
	specPresenter
		beNotEditable;
		text: ('Description: ' , description).
	^specPresenter