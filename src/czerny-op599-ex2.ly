% Cerny Opus 599 Exercise 2

rightExTwo = {
  \clef treble
  \key do \major
  \time 4/4
  \relative do''' {
    sol2-1( do-4 |
    si-3 la-2 |
    sol-1 sol-1 |
    sol1-1) |
    si-3( |
    si-3 |
    do2-4 sol-1 |
    sol1-1) |
    sol2-1( do-4 |
    si-3 la-2 |
    \break

    sol-1 sol-1 |
    sol1-1) |
    si2-3( si-3 |
    si-3 si-3
    do-4 do-4 |
    do1-4) \bar ":|:"
    si2-3( do-4 |
    re-5 si-3 |
    do-4 sol-1 |
    sol1-1) |
    si2-3( do-4 |
    \break

    re2-5 si-3 |
    do-4 sol-1 |
    sol1-1) |
    sol2-1( do-4 |
    si-3 la-2 |
    sol-1 sol-1 |
    sol1-1) |
    si-3( |
    si-3 |
    do2-4 do-4 |
    do1-4) \bar ":|"
  }
}

leftExTwo = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    mi2-3( do-5 |
    fa-2 do-5 |
    mi-3 do-5 |
    mi-3 do-5 |
    re-4 sol-1 |
    fa-2 re-4 |
    mi-3 sol-1 |
    mi-3 sol-1 |
    mi-3)( do-5 |
    fa-2 do-5 |
    \break

    mi-3 do-5 |
    mi-3 do-5 |
    re-4 sol-1 |
    fa-2 re-4 |
    do-5 mi-3 |
    do1-5)( \bar ":|:"
    sol'1-1 |
    sol-1 |
    do,2-5 sol'-1 |
    mi-3 do-5 |
    sol'1-1)(
    \break

    sol2-1 sol-1 |
    do,-5 mi-3 |
    sol-1 fa-2 |
    mi-3)( do-5 |
    fa-2 do-5 |
    mi-3 do-5 |
    mi-3 do-5 |
    re-4 sol-1 |
    fa-2 re-4 |
    do-5 mi-3 |
    do1-5) \bar ":|"
  }
}

ExTwo = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "2. " }
    \context Staff = "Right hand" \rightExTwo
    \context Staff = "Left hand" \leftExTwo
  >>
