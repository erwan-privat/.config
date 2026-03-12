function gpall
  for d in ./*/
    cd $d
    echo $d
    gp
    cd ..
  end
end

