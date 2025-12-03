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

# 특정 commit ID로 전환
git checkout 커밋ID
# 특정 branch로 전환
git checkout 브랜치name

# pull은 원격사항을 local로 내려받는 것(fetch+merge)
git pull origin main
# fetch는 변경사항을 local로 가져오되, 병합은 하지 않는 것
git fetch origin main

# commit Id, 또는 branch 사이의 비교 명령어
git diff commitID1 commitID2
git diff branch1 branch2

# git cancle
# 1. directory -> ctl + z
# 2. staging area -> UI
# 3. local repo -> commit id 발생 -> commit id 취소
git reset HEAD~1
git reset --soft HEAD~1
git reset HEAD^
# 4. origin repo -> push 취소? -> 직전 commit 뒤집는 commit 생성 -> key 는 노출되었으므로 새로...

zzzz