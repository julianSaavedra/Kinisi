rendering
drawIn: canvas

	| visionReferenceZone verticalCenterLine lines finalLeftPosition leftLineTranslation currentLine finalRightPosition rightLineTranslation horizontalCenterLine finalTopPosition upLineTranslation finalBottomPosition downLineTranslation |

	visionReferenceZone := canvas visibleRectangle scaleBy: 0.95.
	lines := OrderedCollection new.
	separation ifNotNil: [
		verticalCenterLine := visionReferenceZone topCenter -> visionReferenceZone bottomCenter.
		lines add: verticalCenterLine.
		finalLeftPosition := visionReferenceZone leftCenter x.
		leftLineTranslation := separation negated @ 0.
		currentLine := verticalCenterLine key + leftLineTranslation -> (verticalCenterLine value + leftLineTranslation).
		[ currentLine key x >= finalLeftPosition ] whileTrue: [
			lines add: currentLine.
			currentLine := currentLine key + leftLineTranslation -> (currentLine value + leftLineTranslation) ].
		
		finalRightPosition := visionReferenceZone rightCenter x.
		rightLineTranslation := separation @ 0.
		currentLine := verticalCenterLine key + rightLineTranslation -> (verticalCenterLine value + rightLineTranslation).
		[ currentLine key x <= finalRightPosition ] whileTrue: [
			lines add: currentLine.
			currentLine := currentLine key + rightLineTranslation -> (currentLine value + rightLineTranslation) ].
		horizontalCenterLine := visionReferenceZone leftCenter -> visionReferenceZone rightCenter.
		lines add: horizontalCenterLine.
		finalTopPosition := visionReferenceZone topCenter y.
		upLineTranslation := 0 @ separation negated.
		currentLine := horizontalCenterLine key + upLineTranslation -> (horizontalCenterLine value + upLineTranslation).
		[ currentLine key y >= finalTopPosition ] whileTrue: [
			lines add: currentLine.
			currentLine := currentLine key + upLineTranslation -> (currentLine value + upLineTranslation) ].
		finalBottomPosition := visionReferenceZone bottomCenter y.
		downLineTranslation := 0 @ separation.
		currentLine := horizontalCenterLine key + downLineTranslation -> (horizontalCenterLine value + downLineTranslation).
		[ currentLine key y <= finalBottomPosition ] whileTrue: [
			lines add: currentLine.
			currentLine := currentLine key + downLineTranslation -> (currentLine value + downLineTranslation) ] ]
		ifNil: [
			lines add: visionReferenceZone topLeft -> visionReferenceZone topRight.
			lines add: visionReferenceZone leftCenter -> visionReferenceZone rightCenter.
			lines add: visionReferenceZone bottomLeft -> visionReferenceZone bottomRight.
			lines add: visionReferenceZone topLeft -> visionReferenceZone bottomLeft.
			lines add: visionReferenceZone topCenter -> visionReferenceZone bottomCenter.
			lines add: visionReferenceZone topRight -> visionReferenceZone bottomRight ].
	self add: lines to: canvas