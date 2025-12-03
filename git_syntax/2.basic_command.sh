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

# git 취소
# HEAD commit 취소(가장 최신?)
git reset HEAD~1
git reset --soft HEAD~1
git reset HEAD^

# 이미 push된 commit 사항을 되돌리기 위해 새로운 commit을 실행하는 것.
# 기존 commit 삭제 아님!
git revert commitID

# 작업 중인 사항을 임시 저장
git stash
# 임시 저장한 작업사항을 다시 적용
git stash pop

# 브랜치 생성
# 현재 checkout 되어 있는 브랜치를 기준으로 새로운 브랜치 생성
git branch feat/member_list
# 브랜치 목록 조회
git branch 
# 특정 브랜치로 전환
git checkout 브랜치명
# branch 생성과 동시에 전환
git branch -b 브랜치명
# 로컬 branch 삭제(원격은 별도로 삭제)
git branch -D 브랜치명


#############
# role 담당
# main checkout + pull -> main 최신화!
# feat branch 생성
# github repogitory에서 pull request!

test11