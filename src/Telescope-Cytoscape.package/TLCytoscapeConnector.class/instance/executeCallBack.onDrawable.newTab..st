callback
executeCallBack: aBlockClosure onDrawable: aDrawable newTab: openInNewTab
	"first we should parameter the callback"

	self visuCallBack block: [ :anything | aBlockClosure value: aDrawable ].	"then ask the client to execute it"
	self
		addCommand:
			(TLVisualizationRequireCallBackExecutionCommand new
				callbackUrl: self visuCallBackUrl;
				openInNewTab: openInNewTab;
				yourself)