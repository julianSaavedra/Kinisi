initialization
initializeFont

	font := self
		        newDropListOn: self systemFonts
		        with: [ :targetFont | workbench font: targetFont ]
		        using: [ workbench scenario font ]