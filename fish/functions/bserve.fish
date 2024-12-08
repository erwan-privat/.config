function bserve --wraps='browser-sync start --server --files .' --description 'alias bserve=browser-sync start --server --files .'
  browser-sync start --server --files . $argv
        
end
