function gcom
  git add --all
  if count $argv >/dev/null
    git commit -m $argv
  else
    git commit
  end
  and git pull --rebase
  and git push
end
