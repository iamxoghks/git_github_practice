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
    # 2-1) .git 폴더 생성
        git init
    # 2-2) 원격지 주소 추가
        git remote add origin 주소~

# branch에서 master -> main 바꾸기
git checkout -b main

# 실습
# 다른사람의 repo 가져오고 내 repo에 올리기
# 1. 커밋 이력 그대로 가져가기
git remote set-url origin 레포지토리 주소 #원격지 주소 변경

# 2. 커밋 이력 없이 가져가기
rm -rf .git
git init
git remote add origin 주소~
git checkout -b main