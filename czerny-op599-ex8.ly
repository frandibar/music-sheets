% Cerny Opus 599 Exercise 8

rightExEight = {
  \clef treble
  \key do \major
  \relative do'' {
    <do^1 mi^3 sol^5>1 |
    <do^1 mi^3 sol^5>1 |
    <si^1 re^2 sol^5>1 |
    <do^1 mi^3 sol^5>1 \bar ":|:"
    <si^1 re^3 fa^5>1( |
    <do-2 mi^4>) |
    <si^1 re^3 fa^5>1( |
    <do^2 mi^4>) |
    <sol^1 do^3 mi^5> |
    <sol^1 do^3 mi^5> |
    <fa^1 si^3 re^5> |
    <mi^1 sol^2 do^5> \bar ":|"
  }
}

leftExEight = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    do2-5( mi-3 |
    do-5( mi-3 |
    sol-1 sol-1 |
    do,1-5) \bar ":|:"
    sol'2-1( sol-1 |
    do,1-5) |
    sol'2-1( sol-1 |
    do,1-5) |
    do2-2( mi-1 |
    do-2 mi-1 |
    sol,-5 sol-5 |
    do1-2) \bar ":|"
  }
}

ExEight = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "8. " }
    \context Staff = "Right hand" \rightExEight
    \context Staff = "Left hand" \leftExEight
  >>
