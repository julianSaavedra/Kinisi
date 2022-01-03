tests
testFontChangesToBitmapDejaVuSans

	self
		assert: [:scenario | scenario font ]
		changesTo: #'Bitmap DejaVu Sans'
		when: [:property | workbench font: property ]