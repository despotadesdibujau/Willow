tests - Configuring - DOM
testRender

	| interpreter html id |

	interpreter := WebInteractionInterpreter forChangeInComponentValue.
	id := '15'.

	html := self
		renderUsing: [ :canvas | 
			| textInput |

			textInput := canvas textInput.
			textInput id: id.
			interpreter render: textInput.
			interpreter applyTo: textInput on: canvas ].

	self
		assert: html
		equals:
			'<input id="15" type="text"/><script type="text/javascript">$("#15").change(function(){Willow.callServer({"type":"POST","url":"/","data":["1",$(this).serialize()].join("&")})});</script>'