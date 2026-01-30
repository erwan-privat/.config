pym () {
  # This function allow to use the path syntax to call a python
  # module with `python -m`, thus allowing autocomplete in terminal.
  # Usage: pym path/to/python/module.py
  # Erwan Privat 2026; public domain

  ext="${1##*.}"

  if [ "$ext" != py ]; then
    echo 'not a python path' >&2
    return 1
  fi

  module="${1%.*}"
  module="${module//'/'/'.'}"
  shift
  echo "python -m $module" $@ >&2
  python -m "$module" $@
}
