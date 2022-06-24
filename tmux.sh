# try connect to exist session? or create new
tmux attach || tmux new

# detach session
Ctrl+b d

# create new window
Ctrl+b c
# switch window to 0..9
Ctrl+b 0...9
# switch to prewious window
Ctrl+b p
# switch to next window
Ctrl+b n
# switch to prewious active window
Ctrl+b l
# close window
Ctrl+b &

# split the current panel into two, vertically
Ctrl+b %
# split the current panel into two, horizontally
Ctrl+b "
# switch between panels
Ctrl+b →←↑↓
# close panel
Ctrl+b x

# copy mode
Ctrl+b PgUp
# after - you can scrolling
PgUp, PgDown
# exit from copy mode
q
