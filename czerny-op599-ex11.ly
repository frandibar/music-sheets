% Cerny Opus 599 Exercise 11

rightExEleven = {
  \clef treble
  \key do \major
  \relative do'' {
    do4-1( mi-3 do-1 mi-3 |
    sol-5 mi-3 do-1 mi-3 |
    re-2 sol-5 fa-4 re-2 |
    mi-3 do-1 sol'-5 mi-3 |
    do-1 mi do mi |
    sol mi do mi |
    re sol-5 fa-4 re-2 |
    do-1 mi-3 do2-1) \bar ":|:"
    \break

    re4-2( mi fa re |
    mi-3 sol-5 mi-3 do-1 |
    re-2 mi fa re |
    mi-3 sol-5 fa-4 re-2 |
    do-1 mi-3 do mi |
    sol-5 mi-3 do-1 mi-3 |
    re-2 sol-5 fa-4 re-2 |
    do-1 mi do2) \bar ":|"
  }
}

leftExEleven = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    <do-4 mi-2 sol-1>1 |
    <do mi sol> |
    <si-5 re-3 sol-1> |
    <do-4 mi-2 sol-1> |
    <do mi sol> |
    <do mi sol> |
    <si-5 fa'-2 sol-1> |
    <do-4 mi-2 sol-1> \bar ":|:"
    \break

    <si-5 re-3 sol-1>1 |
    <do-4 mi-2 sol-1> |
    <sol-5 re' sol> |
    <do-4 mi sol>2 <si-5 re sol> |
    <do-4 mi sol>1 |
    <do mi sol> |
    <sol-5 fa'-2 sol-1>2 <sol fa' sol> |
    <do-4 mi-2 sol-1>1 \bar ":|"
  }
}

ExEleven = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "11. " }
    \context Staff = "Right hand" \rightExEleven
    \context Staff = "Left hand" \leftExEleven
  >>
