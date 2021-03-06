tests-Configuring-DOM
testSetValueToWithoutTriggeringChangeOnComponentWithId

	| interpreter html id |

	interpreter := CombinedWebInteractionInterpreter combiningInterpretersOf: self buttons.
	id := '15'.

	interpreter setValueTo: [ 'Ok' ] withoutTriggeringChangeOnComponentWithId: id.

	html := self
		renderUsing: [ :canvas | 
			canvas textInput id: id.
			canvas
				render: okButton;
				render: cancelButton ].
	self
		assert: html
		equals:
			'<input id="15" type="text"/><button id="button-id2" type="button">Ok</button><button id="button-id4" type="button">Cancel</button><script type="text/javascript">$("#button-id2").click(function(){Willow.callServer({"url":"/","data":"1"})});$("#button-id4").click(function(){Willow.callServer({"url":"/","data":"3"})});</script>'