tests-rendering
testIdentifyIn

	| html checkbox |

	checkbox := self newBinaryChoiceView.
	html := self
		renderUsing: [ :canvas | 
			checkbox identifyIn: canvas.
			canvas render: checkbox ].

	self
		assert: html equals: '<input checked="checked" name="2" id="checkbox-id1" type="checkbox"/><input name="3" type="hidden"/>';
		assert: checkbox identifier equals: 'checkbox-id1'