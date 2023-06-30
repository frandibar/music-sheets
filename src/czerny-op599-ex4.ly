% Cerny Opus 599 Exercise 4

rightExFour = {
  \clef treble
  \key do \major
  \relative do''' {
    do2-1( re-2 |
    mi1-3) |
    do2-1( re-2 |
    mi1-3) |
    fa2-4( fa-4 |
    sol-5 fa-4 |
    mi1-3 |
    do-1) \bar ":|:"
    \break

    re2-2( re-2 |
    mi-3 fa-4 |
    sol-5 mi-3 |
    do1-1) |
    re2-2( re-2 |
    fa-4 re-2 |
    do-1 mi-3 |
    do1-1) \bar ":|"
  }
}

leftExFour = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    mi2-3( sol-1 |
    do,-5 sol'-1 |
    mi-3 sol-1 |
    do,-5 sol'-1 |
    re-4 sol-1 |
    re-4 sol-1 |
    do,-5 sol'-1 |
    mi1-3) \bar ":|:"
    \break

    sol2-1( fa-2 |
    mi-3 re-4 |
    do-5 sol'-1 |
    mi-3 do-5 |
    sol'1-1) |
    sol-1( |
    do,-5) |
    do-5 \bar ":|"
  }
}

ExFour = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "4. " }
    \context Staff = "Right hand" \rightExFour
    \context Staff = "Left hand" \leftExFour
  >>
