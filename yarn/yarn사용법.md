<img src="https://heropy.blog/css/images/vendor_icons/yarn.png"></img>
# Yarn 사용법
NPM을 사용한다면 어렵지 않습니다.

프로젝트를 시작할 때 초기화를 하려면(package.json을 생성합니다.)
<pre>
  <code>
    $ yarn init
  </code>
</pre>

### package.json으로부터 의존성 모듈을 설치하는 명령어
<pre>
  <code>
    $ yarn
      or
    $ yarn install
  </code>
</pre>

### 의존성 모듈을 설치하는 명령어
<pre>
  <code>
   $ yarn add [package]
   $ yarn add [package]@[version]
   $ yarn add [package]@[tag]
  </code>
</pre>

### devDependencies, peerDependencies, optionalDependencies와 같은 다른 범주의 의존성을 추가기위한 명령어
<pre>
  <code>
    $ yarn add [package] --dev
    $ yarn add [package] --peer
    $ yarn add [package] --optional
  </code>
</pre>

### 의존성 모듈을 업그레이드하는 명령어
<pre>
  <code>
    $ yarn upgrade [package]
    $ yarn upgrade [package]@[version]
    $ yarn upgrade [package]@[tag]
  </code>
</pre>

### 의존성 모듈을 제거하는 명령어
<pre>
  <code>
    $ yarn remove [package]
  </code>
</pre>

# yarn.lock
Yarn.lock 파일은 설치된 모듈의 버전을 저장해 어디서나 같은 버전과 구조의 의존성을 가지게 합니다.
Yarn에서는 자동으로 yarn install 때 마다 yarn.lock이 생성됩니다.
package-lock.json와 비슷한 기능을 한다고 생각하면 됩니다.
