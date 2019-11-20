<img src="https://heropy.blog/css/images/vendor_icons/yarn.png" width="189" height="80"></img>

# Yarn 설치
Yarn은 다양한 OS의 설치를 지원합니다.


# macOS
### Homebrew를 사용하는 설치
<pre>
  <code>
   $ brew install yarn
  </code>
</pre>
NVM 같은 버전 관리 툴을 사용해야 한다면 Node.js의 설치를 제외하도록 합니다.
<pre>
  <code>
  $ brew install yarn --without-node
  </code>
</pre>


# Windows
### Chocolatey를 사용하는 설치
<pre>
  <code>
   $ choco install yarn
  </code>
</pre>

### Scoop를 사용하는 설치
<pre>
  <code>
   $ scoop install yarn
  </code>
</pre>

# NPM
NPM으로 설치할 수도 있습니다.
<pre>
  <code>
   $ npm install -g yarn
  </code>
</pre>
설치가 잘 되었는지 확인합니다.
<pre>
  <code>
    $ yarn --version
  </code>
</pre>

설치 후 전역 사용에 문제가 있다면 Path 설정을 해줘야 합니다.

<code>.profile</code>, <code>.bash_profile</code>, <code>.bashrc</code>, <code>.zshrc</code> 등…

<pre>
  <code>
    $ export PATH="$PATH:/opt/yarn-[version]/bin"
  </code>
</pre>

