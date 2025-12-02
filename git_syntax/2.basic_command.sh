# 현재 working directory, staging area 상태 확인
git status 
# iamxoghks@kimtaehwan-ui-MacBookPro git_github_practice % git status
# On branch main
# Untracked files:
# (use "git add <file>..." to include in what will be committed)
#         git_syntax/2.basic_command.sh

# nothing added to commit but untracked files present (use "git add" to track)
# iamxoghks@kimtaehwan-ui-MacBookPro git_github_practice % git add .
# iamxoghks@kimtaehwan-ui-MacBookPro git_github_practice % git status
# On branch main
# Changes to be committed:
# (use "git restore --staged <file>..." to unstage)
#         new file:   git_syntax/2.basic_command.sh

# 모든 수정사항 추가
git add . 
# 특정 파일만 add 할 때(파일 경로까지 포함해야 함)
git add test_folder/test1.txt

# commit을 통해 메시지 타이틀과 메시지 내용을 commit log로 생성
git commit -m "title" -m "content"

# git commit 만 입력하고 엔터시 vi 모드. 첫 줄은 제목, 두 번째 줄부터는 내용
git commit

# commit 이력 조회
git log
# git log 이력 빠져나가는 키
q

# log 한 줄로 보겠다
git log --oneline

# HEAD, main, origin은 뭘까?
# origin/main, origin/HEAD
# HEAD 하단의 로그만 보는 것이 아닌, 모든 commit 이력을 조회
# HEAD는 현재 사용하고 있는(checkout) commit ID
git log --all

# 원격 저장소로 업로드
git push origin 브랜치명
# 충돌 방생시 충돌 무시하고, 로컬 기준의 코드를 원격에 덮어쓰기
# 절대 쓰면 안 됨
git push origin 브랜치명 --force 
