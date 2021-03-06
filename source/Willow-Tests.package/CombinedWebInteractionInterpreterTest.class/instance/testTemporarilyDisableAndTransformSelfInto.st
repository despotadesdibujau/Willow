tests-Configuring-DOM
testTemporarilyDisableAndTransformSelfInto

	| interpreter html |

	interpreter := CombinedWebInteractionInterpreter combiningInterpretersOf: self buttons.

	html := self
		renderUsing: [ :canvas | 
			interpreter temporarilyDisableAndTransformInto: 'Loading...'.
			canvas
				render: okButton;
				render: cancelButton ].
	self
		assert: html
		equals:
			'<button id="button-id2" type="button">Ok</button><button id="button-id4" type="button">Cancel</button><script type="text/javascript">$("#button-id2").click(function(){Willow.callServer({"data":[disabledComponent=$(this).html(),$(this).addClass("willow-disabled-component").attr("disabled",true).html("Loading..."),"1"].join("&"),"complete":function(){$(".willow-disabled-component").attr("disabled",false).removeClass("willow-disabled-component").html(disabledComponent)},"url":"/"})});$("#button-id4").click(function(){Willow.callServer({"data":[disabledComponent=$(this).html(),$(this).addClass("willow-disabled-component").attr("disabled",true).html("Loading..."),"3"].join("&"),"complete":function(){$(".willow-disabled-component").attr("disabled",false).removeClass("willow-disabled-component").html(disabledComponent)},"url":"/"})});</script>'