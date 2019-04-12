initialization
initialize
|app|
	app := WAAdmin register: self asApplicationAt: 'home'.
	app addLibrary: JQDeploymentLibrary; addLibrary: TBSDeploymentLibrary; addLibrary: JQUiDeploymentLibrary. "Librerias de bootstrap y jQuery"
	
	app preferenceAt: #sessionClass put: UserSession.