function pym
  # This function allow to use the path syntax to call a python
  # module with `python -m`, thus allowing autocomplete in terminal.
  # Usage: pym path/to/python/module.py
  # Erwan Privat 2026; public domain

  set path $argv[1]
  set args $argv[2..-1]

  set ext (path extension $path)
  if test $ext != .py
    echo 'not a python path' >&2
    return 1
  end

  set module (path change-extension '' $path)
  set module (string replace -a / . $module)
  echo 'python -m' $module $args >&2
  python -m $module $args
end
