<img src="https://velopert.com/wp-content/uploads/2016/02/nodejs-2560x1440-1024x576.png"></img>
# REPL
REPL 은 Read Eval Print Loop의 약자입니다. 이는 윈도우 커맨드, 혹은 UNIX/LINUX Shell 처럼 사용자가 커맨드를 입력하면 시스템이 값을 반환하는 환경을 가르킵니다.

Node.js는 REPL 환경과 함께 제공되며 다음과 같은 기능을 수행 할 수 있습니다.

<pre>
 <code>
  Read – 유저의 값을 입력 받아 JavaScript 데이터 구조로 메모리에 저장합니다.
  Eval – 데이터를 처리(Evaluate) 합니다.
  Print – 결과값을 출력합니다.
  Loop – Read, Eval, Print 를 유저가 Ctrl+C를 두번 눌러 종료할때까지 반복합니다.
  Node.js 의 REPL 환경은 자바스크립트 코드를 테스팅 및 디버깅할때 유용하게 사용됩니다.
 </code>
</pre>
 

REPL 시작하기
REPL 은 쉘/콘솔에 파라미터 없이 node 를 실행하여 실행 할 수 있습니다.

$ node
>
간단한 표현식 사용
Node.js REPL 커맨드 프롬프트에 간단한 연산자를 사용해봅시다.

$ node
> 1 + 5
6
> 1 + ( 6 / 2 ) - 3
1
>
변수 사용
다른 스크립트처럼, 변수에 값을 저장하고 나중에 다시 출력 할 수 있습니다.

만약 var 키워드를 사용하면 명령어를 입력했을때 변수의 값이 출력되지 않고, var 키워드를 사용하지 않으면 값이 출력됩니다.

또한, console.log() 를 통해 출력 할 수 있습니다.

$ node
> x = 10
10
> var y = 5
undefined
> x + y
15
> console.log("Value is " + ( x + y ))
Value is 15
undefined
Multi-Line 표현식 사용
do-while 루프를 REPL에서 실행해봅시다.

$ node
> var x = 0
undefined
> do {
... x++;
... console.log("x: " + x);
... } while ( x < 3 );
x: 1
x: 2
x: 3
undefined
>
Underscore ( _ ) 변수
밑줄 _ 변수는 최근 결과값을 지칭합니다.

$ node
> var x = 10;
undefined
> var y = 5;
undefined
> x + y;
15
> var sum = _
undefined
> console.log(sum)
15
undefined
>
 

REPL 커맨드
Ctrl+C – 현재 명령어를 종료합니다.
Ctrl+C (2번)  – Node REPL 을 종료합니다.
Ctrl+D – Node REPL을 종료합니다.
위/아래 키 – 명령어 히스토리를 탐색하고 이전 명령어를 수정합니다.
Tab – 현재 입력란에 쓴 값으로 시작하는 명령어 / 변수 목록을 확인합니다.
.help – 모든 커맨드 목록을 확인합니다.
.break – 멀티 라인 표현식 입력 도중 입력을 종료합니다.
.clear – .break 와 같습니다.
.save filename – 현재 Node REPL 세션을 파일로 저장합니다.
.load filename – Node REPL 세션을 파일에서 불러옵니다.
