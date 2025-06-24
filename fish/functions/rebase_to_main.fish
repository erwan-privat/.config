function rebase_to_main
  set branch (git branch --show-current)
  git checkout main
  and git pull
  and git rebase $branch
  and git pull
  and git push
  and git checkout $branch
end

