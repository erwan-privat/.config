function rebase_to_main
  git checkout main
  and git pull
  and git rebase dev
  and git push
  and git checkout dev
end

