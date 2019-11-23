<img src="https://t1.daumcdn.net/cfile/tistory/2156E84A5857BBDF06"></img>

## Github

현재 폴더에 대해서 저장소로 등록해둔다.

<pre>
  $ git init
</pre>

github에 올릴 임의의 파일을 등록해둔 저장소 폴더에 생성하거나 붙여 넣는다. 그리고 git에 추가하는 명령을 입력한다.
(여기서는 파일을 index.java파일을 올린다고 해둔다.)

$ git add "대상파일or폴더이름
<pre>
  $ git add index.js
  $ git add .
</pre>

위에 명령은 index.js파일에 대해서만 추가 한다는 것이고, 아래는 모든 파일에 대하여 추가한다는 것.

### 로컬 저장소를 커밋한다.

<pre>
  $ git commit -m "커밋 할 메세지"
</pre>

### 원격저장소 추가하기

<pre>
  ex) $ git remote add origin https://github.com/jongchan1514/node.git

$ git remote add [원격저장소이름] [github에서 new repository했을 때 생성된 url]
</pre>

$ git remote 를 입력했을 때 생성된 원격저장소 이름(origin)이 뜬다.

<pre>
  $ git remote
  origin
</pre>

### 원격 저장소에 업로드하기

<pre>
$ git push [원격 저장소 이름] [브랜치 이름]
//ex) git push origin master
</pre>

이제 github 사이트에 가보면 업로드 된 것을 확인 할 수 있다.
// 원격저장소에 현재 프로젝트에 존재하지 않는 파일이 있을 시 간혹 에러가 나는 경우가 있다.
// 이 경우에 [ git push origin +master ] 로 해결은 할 수 있지만 기존 데이터가 사라지게 되므로 권장하지 않는다. 
