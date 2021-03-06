tests-Configuring - CSS
testAddCssClassToComponentsMatching

	| interpreter html |

	interpreter := CombinedWebInteractionInterpreter combiningInterpretersOf: self buttons.
	interpreter addCssClass: WillowCssStyles willow toComponentsMatching: [ :canvas | canvas jQuery this ].
	html := self
		renderUsing: [ :canvas | 
			canvas
				render: okButton;
				render: cancelButton ].
	self
		assert: html
		equals:
			'<button id="button-id1" type="button">Ok</button><button id="button-id2" type="button">Cancel</button><script type="text/javascript">$("#button-id1").click(function(){$(this).addClass("willow")});$("#button-id2").click(function(){$(this).addClass("willow")});</script>'