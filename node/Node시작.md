<img src="https://velopert.com/wp-content/uploads/2016/02/nodejs-2560x1440-1024x576.png"></img>

Node.js Application 만들기
1단계: 필요한 모듈 import 하기
어플리케이션에 필요한 모듈을 불러올땐 require 명령을 사용합니다.
다음 코드는 HTTP 모듈을불러오고 반환되는 HTTP 인스턴스를 http 변수에 저장합니다.

var http = require("http");
2단계: 서버 생성하기
이번 단계에선, 1단계에서 만들은 http 인스턴스를 사용하여 http.createServer() 메소드를 실행합니다. 그리고 listen 메소드를 사용하여 포트 8081과 bind 해줍니다.
http.createServer() 의 매개변수로는 request와 response를 매개변수로 가지고있는 함수를 넣어줍니다.

다음 코드는 언제나 “Hello World” 를 리턴하는 포트 8081의 웹서버를 생성해줍니다.

http.createServer(function(request, response){
    /* 
        HTTP 헤더 전송
        HTTP Status: 200 : OK
        Content Type: text/plain
    */
    response.writeHead(200, {'Content-Type': 'text/plain'});
    
    /*
        Response Body 를 "Hello World" 로 설정
    */
    response.end("Hello World\n");
}).listen(8081);
3단계: 서버 테스트 해보기
1단계와 2단계를 파일 main.js에 합쳐서 작성해보세요

var http = require("http");

http.createServer(function(request, response){
    /* 
        HTTP 헤더 전송
        HTTP Status: 200 : OK
        Content Type: text/plain
    */
    response.writeHead(200, {'Content-Type': 'text/plain'});
    
    /*
        Response Body 를 "Hello World" 로 설정
    */
    response.end("Hello World\n");
}).listen(8081);

console.log("Server running at http://127.0.0.1:8081");
서버를 실행해봅시다.

$ node main.js
서버가 성공적으로 실행됐다면 다음 텍스트가 출력됩니다.

Server running at http://127.0.0.1:8081/
브라우저에서 http://127.0.0.1:8081/ 을 열으면 다음과 같은 결과를 확인 할 수 있습니다.

[TIP] Cloud9 을 사용하신다면 아래버튼을 눌러주세요.

출력물
 

이미지 21

축하합니다! 조금은 초라하지만..  첫 HTTP 서버를 완성하셨습니다!
