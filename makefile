GIT_REPO := https://github.com/DuoDuoMelb/java-maven-junit-helloworld.git
DIR := "dev1"
OS := $(shell uname)

build:
	#./scripts/my-important-task.sh my-parameter
	@echo    build..started
	mvn    clean    verify   compile

package:
	#./scripts/my-important-task.sh my-parameter
	@echo    Package${GIT_REPO}
	mvn  package

test:
	#./scripts/my-important-task.sh my-parameter
	@echo    delete${GIT_REPO}
	mvn  test

clean:
	@echo    "Clean starts."
	mvn  clean

dockerbuild:
	@echo    "Clean starts."
	#sudo docker build -t msgtokumar/testcode .
	#sudo docker login -u msgtokumar -p changeme123

dockerpush:
	@echo    "Clean starts."
	#sudo docker push msgtokumar/testcode
