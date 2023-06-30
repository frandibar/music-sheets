% Cerny Opus 599 Exercise 1

rightExOne = {
  \clef treble
  \key do \major
  \time 4/4
  \relative do'' {
    do1-1( |
    re2-2 mi-3 |
    do1-1 |
    re2-2 mi-3|
    do-1 mi-3 |
    sol-5 fa-4 |
    mi-3 re-2 |
    do1-1) \bar ":|:"
    \break

    re2-2( mi-3 |
    fa-4 re-2 |
    mi-3 fa-4 |
    sol-5 mi-3 |
    re-2 mi-3 |
    fa-4 re-2 |
    do-1 mi-3 |
    do1-1) \bar ":|"
    \break
  }
}

leftExOne = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    do2-5( mi-3 |
    sol1-1) |
    do,2-5( mi-3 |
    sol1-1) |
    do,1-5( |
    mi2-3 fa-2 |
    sol-1 fa-2 |
    mi1-3) \bar ":|:"
    \break

    sol1-1( |
    sol-1 |
    do,2-5 re-4 |
    mi-3 do-5 |
    sol'1-1 |
    sol-1 |
    mi2-3 sol-1 |
    do,1-5) \bar ":|"
  }
}

ExOne = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "1. " }
    \context Staff = "Right hand" \rightExOne
    \context Staff = "Left hand" \leftExOne
  >>
