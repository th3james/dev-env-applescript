tell application "iTerm2"
  activate
  
  set projnameterm to (create window with default profile)
  
  tell projnameterm
    set servertab to (first tab)
    
    tell servertab
      repeat with aSession in sessions
        tell aSession
                set name to "projname-server"
                write text "cd ~/src/projname/"
                write text "foreman start web"
        end
      end
    end tell

    set cmdtab to (create tab with default profile)

    tell cmdtab
      repeat with aSession in sessions
        tell aSession
          write text "cd ~/src/projname/"
          write text "open -a MacVim ."
        end
      end
    end tell
  end
end tell
