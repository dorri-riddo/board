# board
누구나 사용할 수 있는 게시판 기초. 스프링 부트 실행 후 http://localhost:8080/list 로 시작.

### 특징 및 기능
1. 부트 스트랩 사용 (https://startbootstrap.com/templates/blog-home/)
2. 기초적인 게시판 글쓰기/수정/삭제/상세화면 보기 기능 
3. 메인 화면에 페이징 기능 

### 개발환경
1. 스프링 부트

### 실행화면
<p align="center">
  <img src="https://user-images.githubusercontent.com/59874084/91931885-a9659f80-ed1f-11ea-9eb6-df41b64b1835.JPG"></img>
</p>

#### 1. 메인 화면
 한 페이지에 5개의 리스트가 나온다. 한 개의 리스트에는 제목, 작성자, 작성 날짜를 표시한다. 더 읽기 버튼을 누르면 상세 화면으로 넘어간다. 

<p align="center">
  <img src="https://user-images.githubusercontent.com/59874084/91931932-c7cb9b00-ed1f-11ea-986e-819dac9dbcf2.JPG"></img>
</p>

#### 2. 상세 화면
 제목, 작성 시간, 작성자, 내용을 순서대로 보여준다. 위 버튼을 각각 누르면, 수정 페이지로 넘어가가나 현재 글삭제되고, 다시 메인 화면으로 이동한다.

<p align="center">
  <img src="https://user-images.githubusercontent.com/59874084/91931850-8e932b00-ed1f-11ea-9363-da60a6676aee.JPG"></img>
</p>

#### 3. 글쓰기 화면
 제목, 작성자, 내용을 순서대로 작성할 수 있다. 작성 시간은 작성 버튼을 누르면 자동적으로 DB 에 입력된다.

<p align="center">
  <img src="https://user-images.githubusercontent.com/59874084/91931937-c9955e80-ed1f-11ea-959a-5191d2c3b27d.JPG"></img>
</p>

#### 4. 수정 화면
 제목, 작성자, 내용을 그대로 가지고 오며, 대신 작성자는 수정할 수 없다. 수정을 마치고 버튼을 누르면, 다시 그 글의 상세화면으로 넘어가면서 수정한 내용을 확인할 수 있다.

### 개선점
1. 검색 기능 추가
2. 비동기적으로 실행 가능한 댓글 기능 추가
