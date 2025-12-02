# .은 모든 것을 의미함 
git add .
git commit -m "message"
git push origin main

# 인증 방법
# 1. 웹을 통한 인증(토큰 간접 발급)
# 2. 직접 토큰 발급

# 사용자 지정
git config --global user.name "유저명"
git config --global user.email "이메일"
# git 설정 정보 조회
git config --list

# git 프로젝트 생성 방법
# 1. github repo to local -> clone
# 2. local to github repo -> upload