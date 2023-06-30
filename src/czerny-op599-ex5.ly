% Cerny Opus 599 Exercise 5

rightExFive = {
  \clef treble
  \key do \major
\relative do'' {
    sol4-1( do-2 mi-3 sol-5 |
    fa-4 re-2 fa-4 re-2 |
    si-1) si-1( re-3 fa-5 |
    mi-4 do-2 mi-4 do-2 |
    sol-1 do-2 mi-3 sol-5 |
    fa-4 re-2 fa-4 re-2 |
    si-1 re-3 si-1 re-3 |
    do-2 mi-4 do2-2) \bar ":|:"
    \break

    do4-1( fa-2 la-3 do-5 |
    do-5 sol-3 mi-2 do-1) |
    do4-1( fa-2 la-3 do-5 |
    do-5 sol-3 mi-2 do-1) |
    sol'-2( do-5 si-4 la-3 |
    sol-2 mi-1 sol-3 mi-1 |
    fa-4 re-2 fa-4 re-2 |
    do-1 mi-3 do2-1) \bar ":|"
  }
}

leftExFive = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    do2-5 do-5( |
    sol'-1) sol-1 |
    sol-1 sol-1( |
    do,-5) do-5
    do2-5 do-5( |
    sol'-1) sol-1 |
    sol-1 sol-1( |
    do,1-5) \bar ":|:"
    \break

    fa2-2 fa-2( |
    mi-3 do-5 |
    fa-2) fa-2( |
    mi-3 do-5 |
    mi-3 fa-2 |
    mi-3 do-5 |
    sol'-1) sol-1( |
    do,1-5) \bar ":|"
  }
}

ExFive = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "5. " }
    \context Staff = "Right hand" \rightExFive
    \context Staff = "Left hand" \leftExFive
  >>
