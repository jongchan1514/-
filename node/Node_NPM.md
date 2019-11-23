# NPM

Node Package Manager (NPM) 은 두가지의 주요 기능을 지니고 있습니다.

NPMSearch 에서 탐색 가능한 Node.js 패키지/모듈 저장소
Node.js 패키지 설치 및 버전 / 호환성 관리를 할 수 있는 커맨드라인 유틸리티
 

npm이 제대로 설치되있는지 확인하려면 다음 명령어를 입력하세요:

$ npm --version
3.7.1
npm 버전이 구버전이라면 다음 명령어로 쉽게 최신버전으로 업데이트 할 수 있습니다:

$ sudo npm install npm -g
npm http GET https://registry.npmjs.org/npm
npm http 200 https://registry.npmjs.org/npm
npm http GET https://registry.npmjs.org/npm/-/npm-3.7.1.tgz
npm http 200 https://registry.npmjs.org/npm/-/npm-3.7.1.tgz
/usr/local/bin/npm -> /usr/local/lib/node_modules/npm/bin/npm-cli.js
npm@3.7.1 /usr/local/lib/node_modules/npm
NPM 에서 일부 패키지를 설치 할 때 python 을 요구하므로 호환성을 맞추기 위하여 파이썬 런타임도 설치하도록 합시다.

 NPM을 사용하여 모듈 설치하기
npm install <모듈 이름>
예를들어 유명한 Node.js 웹 프레임워크중 하나인 express를 설치한다면 다음 명령어를 입력하면됩니다.

$ npm install express
설치하면 여러분의 js에서 이렇게 모듈을 사용 할 수 있습니다.

var express = require('express');
 

글로벌 vs 로컬 모듈 설치
기본적으로는, npm은 모듈을 로컬모드로 설치합니다. 로컬모드란건, 패키지를 명령어를 실행한 디렉토리안에 있는 node_modules에 설치하는것을 의미합니다.

글로벌 설치는 시스템 디렉토리에 설치하는것을 의미합니다. 한번 express 를 글로벌 모드로 설치해볼까요?

$ sudo npm install express -g
/usr/lib
└─┬ express@4.13.4
 ├─┬ accepts@1.2.13
 │ ├─┬ mime-types@2.1.9
 │ │ └── mime-db@1.21.0
 │ └── negotiator@0.5.3
 .... 길어서 생략....
 │ └── statuses@1.2.1
 ├── utils-merge@1.0.0
 └── vary@1.0.1
보이다시피, 현재 경로가 아닌 /usr/lib/node_modules 에 모듈을 설치합니다.
시스템에 저장하므로, 루트 계정이 아니라면 앞에 sudo를 붙여주어야합니다.
글로벌 모드로 설치하였을때는, node 어플리케이션에서 바로 require 할 수는 없습니다.
단, 다음처럼 npm link 명령어를 입력하고나면 해당 모듈을 불러올 수 있습니다.

$ npm install -g express
$ cd [local path]/project
$ npm link express
package.json
package.json 은 노드 어플리케이션 / 모듈의 경로에 위치해 있으며 패키지의 속성을 정의합니다.

다음은 express로 프로젝트를 생성했을때 생성되는 package.json 입니다.

{
  "name": "myapp",
  "version": "0.0.0",
  "private": true,
  "scripts": {
    "start": "node ./bin/www"
  },
  "dependencies": {
    "body-parser": "~1.13.2",
    "cookie-parser": "~1.3.5",
    "debug": "~2.2.0",
    "express": "~4.13.1",
    "jade": "~1.11.0",
    "morgan": "~1.6.1",
    "serve-favicon": "~2.3.0"
  }
}
보시다시피 이 파일은 프로젝트가 의존하는 모듈과 모듈버전의 정보를 담고있습니다.

package.json 에 관한 자세한 내용은 감성 프로그래밍 블로그에서 읽어보실 수 있습니다.

 

모듈 제거
다음 명령어로 설치된 모듈을 제거 할 수 있습니다.

$ npm uninstall express
 

모듈 업데이트
다음 명령어로 모듈을 업데이트 할 수 있습니다.

$ npm update express
 

모듈 검색
다음 명령어로 모듈을 검색 할 수 있습니다.

$ npm search express
이 명령어는 처음 이용 할 때 메모리를 굉장히 많이 잡아먹습니다.

클라우드 IDE를 사용하거나 서버에 램이 1G 정도라면 매우 오래걸리거나 에러가 납니다.

그럴 경우엔 NPMSearch 에서 검색을 하면 됩니다.
