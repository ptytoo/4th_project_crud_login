- :name
  - symbol이라고 한다.

    #두 줄 모두 같은 의미이다.
    order = {:item => "" , :weight => ""}
    order = {item: "", weight: ""}	

- rspec 이용

    gem install rspec
    #해당 파일 위치로 들어가서
    rspec calculator_spec.rb

- BDD (behavior driven development)
  - 더 명확하다. 사람말과 비슷하게 하려함
-     # 배열로 만드는 방법. 
      # https://simpleror.wordpress.com/2009/03/15/q-q-w-w-x-r-s/
      "aeiou".split('')
      %w(a e i o u)
- 로그인 서비스 만들기
      rails g(enerate) controller user
      rails d(estroy) controller user
      rails g controller user index new create
      
      #비밀번호 암호화
      require 'digest'
      Digest::MD5.hexdigest("  ")
      
      #db날리기 db자체를 날려버려서
      rake db:drop
      #다시 밑의 명령어 해야함
      rake db:migrate
- 보조강의 - 세션(Session)
  - http는 stateless하다
    - http에서는 페이지 이동을 새로운 연결로 인식
    - 우리가 이름을 입력해서 알려줘도 까먹음
  - 다시 요청이 왔을 때 
    - 쿠키를 사용(클라이언트에 저장)
    - 보안이 안좋음
  - 근데 이걸 유저한테 두지말고 우리가 가지고 있자고 한게 session
    - 서버에 저장된 (데이터베이스 노노) 세션을 이용
    - 보안, 유저 입장에서 부담이 없다.
    - 서버가 살아있는 동안, 일정 기간 기억을 하는 정보
    - rails에서는 session hash를 이용한다.
    -     session[:user_id] = @current_user.id
          User.find(session[:user_id])
    - 
