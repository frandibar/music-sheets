% Cerny Opus 599 Exercise 9

rightExNine = {
  \clef treble
  \key do \major
  \relative do'' {
    do4-1( mi-3 sol-5 mi-3 |
    do-1 mi-3 sol-5 mi-3 |
    fa-4 re-2 fa re |
    mi2-3 do-1) \bar ":|:"
    re4-2( re-2 re-2 re-2 |
    mi-3 do-1 sol'2-5) |
    sol4-5( fa-4 re-2 si-1 |
    do-2 do-2 do2-2) \bar ":|"
  }
}

leftExNine = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    <do_4 mi_2 sol_1>1 |
    <do mi sol> |
    <si_5 re_3 sol_1> |
    <do_4 mi_2 sol_1> \bar ":|:"
    <sol_5 si_3 re_1> |
    <sol_5 do_2 mi_1> |
    <sol_5 re'_2 fa_1> |
    <do mi> \bar ":|"
  }
}


ExNine = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "9. " }
    \context Staff = "Right hand" \rightExNine
    \context Staff = "Left hand" \leftExNine
  >>
