% Cerny Opus 599 Exercise 7

rightExSeven = {
  \clef treble
  \key do \major
  \relative do''' {
    do4-1( re-2 mi-3 fa-4 |
    sol2-5 sol-5 |
    fa4-4 re-2 fa-4 re-2 |
    do2-1 do-1) \bar ":|:"
    fa4-4( mi-3 re-2 sol-5 |
    mi2-3 do-1) |
    fa4-4( mi-3 re-2 sol-5 |
    do,1-1) \bar ":|"
  }
}

leftExSeven = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    do1-5 |
    do2-5( mi-3 |
    sol-1) sol-1( |
    do,1-5) \bar ":|:"
    sol'2-1 sol-1( |
    do,-5 mi-3 |
    sol-1) sol-1( |
    do,-5) do-5 \bar ":|"
  }
}

ExSeven = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "7. " }
    \context Staff = "Right hand" \rightExSeven
    \context Staff = "Left hand" \leftExSeven
  >>
