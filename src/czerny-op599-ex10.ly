% Cerny Opus 599 Exercise 10

rightExTen = {
  \clef treble
  \key do \major
  \relative do'' {
    <mi^1 sol^2 do^5>2 <mi sol do> |
    <do^1 mi^2 sol^4> <do mi sol> |
    <re^1 sol^3 si^5> <re sol si> |
    <mi^1 sol^2 do^5>1 \bar ":|:"
    <do^1 fa^3 la^5>2 <do fa la> |
    <do^1 mi^2 sol^4>1 |
    <si^1 re^3 fa^5>2 <si re fa> |
    <sol^1 do^3 mi^5>1 |
    <sol^1 si^2 re^4>2 <sol si re> |
    <sol^1 do^3 mi^5> <sol do mi> |
    <re'^3 fa^5> <si^1 re^3> |
    do1^2 \bar ":|"
  }
}

leftExTen = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    <do_4 mi_2 sol_1>2 <do mi sol> |
    <do mi sol> <do mi sol> |
    <sol_5 re'_2 fa_1> <sol re' fa> |
    <do_3 mi_1>1 \bar ":|:"
    <do_5 fa_2 la_1>2 <do fa la> |
    <do_5 mi_3 sol_1>1 |
    <sol_5 re'_2 fa_1>2 <sol re' fa> |
    <do_3 mi_1>1 |
    <sol_5 re'_2>2 <sol re'> |
    <do_3 mi_1> <do mi> |
    <sol_5 si_3 re_1> <sol_5 re'_2 fa_1> |
    <do_3 mi_1>1 \bar ":|"
  }
}

ExTen = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "10. " }
    \context Staff = "Right hand" \rightExTen
    \context Staff = "Left hand" \leftExTen
  >>
