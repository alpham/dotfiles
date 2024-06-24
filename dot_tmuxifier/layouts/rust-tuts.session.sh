# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "$HOME/projects/tuts/rust-tuts"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "rust-tuts"; then

  # Create a new window inline within session layout definition.
  new_window "editor"
  run_cmd "lvim ."
  split_h 20 0
  run_cmd "lvim /Users/ahmed.magdy/Documents/Avinode-work/"
  select_pane 0
  # Load a defined window layout.
  #load_window "example"
  
  # Select the default active window on session creation.
  #select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
