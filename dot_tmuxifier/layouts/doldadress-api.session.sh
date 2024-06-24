# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/projects/doldadress/api"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "doldadress-api"; then
  # start nex shell
  # run_cmd "nix develop"
  # Create a new window inline within session layout definition.
  new_window "editor"
  run_cmd "lvim ."
  # Load a defined window layout.
  new_window "DB-client"
  run_cmd "lvim +DBUI"

  new_window "Runtime"
  run_cmd "pnpm dev"
  split_h 50 0
  run_cmd "pnpm test:"
  select_pane 0
  split_v 50 0
  run_cmd "ngrok http http://localhost:3000"
  
  # Select the default active window on session creation.
  select_window 0

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
