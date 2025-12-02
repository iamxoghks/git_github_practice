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

# commit 이력 조회
git log

