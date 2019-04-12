initialize
on: anUser for: aManagementSystem
	user := anUser.
	cuoora := aManagementSystem.
	questionRender := user questions collect: [ :question| QuestionRenderComponent on: question for:cuoora .]