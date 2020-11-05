action
start

	canvas openWithSpec.
	canvas withWindowDo: [:window |
		window
			title: 'Animation';
			extent: extent].
