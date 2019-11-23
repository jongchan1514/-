[github] github 로컬저장소 만들고 파일 올리기
2016.06.09 20:28
git 프로그램이 설치되어 있음을 전제로 한다.





저장소로 사용하려는 디렉토리에 마우스 우클릭 후 git bash를 실행한다.









git의 환경설정에서 username과 email을 등록한다.(github가입했을 때의 유저명과 이메일)

$ git config --global user.name "유저명"
$ git config --global user.email "이메일"




현재 폴더에 대해서 저장소로 등록해둔다.

$ git init




github에 올릴 임의의 파일을 등록해둔 저장소 폴더에 생성하거나 붙여 넣는다. 그리고 git에 추가하는 명령을 입력한다.

(여기서는 파일을 index.java파일을 올린다고 해둔다.)

$ git add "대상파일/폴더이름"

$ git add index.java
$ git add .
위에 명령은 index.java파일에 대해서만 추가 한다는 것이고, 아래는 모든 파일에 대하여 추가한다는 것.







로컬 저장소를 커밋한다.

$ git commit -m "initial commit"






원격저장소 추가하기

  ex) $ git remote add origin https://github.com/add1234/myProjectCode.git

$ git remote add [원격저장소이름] [github에서 new repository했을 때 생성된 url]






$ git remote 를 입력했을 때 생성된 원격저장소 이름(origin)이 뜬다.








원격 저장소에 업로드하기

$ git push [원격 저장소 이름] [브랜치 이름]
//ex) git push origin master






이제 github 사이트에 가보면 업로드 된 것을 확인 할 수 있다.
