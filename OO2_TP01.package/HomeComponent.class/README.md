|app|
	app := WAAdmin register: self asApplicationAt: 'home'.
	app addLibrary: JQDeploymentLibrary; addLibrary: TBSDeploymentLibrary; addLibrary: JQUiDeploymentLibrary. "Librerias de bootstrap y jQuery,  las use para que se vea mejor la presentacion de la pagina"
	
	app preferenceAt: #sessionClass put: UserSession.