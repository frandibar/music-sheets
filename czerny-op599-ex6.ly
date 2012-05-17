% Cerny Opus 599 Exercise 6

rightExSix = {
  \clef treble
  \key do \major
  \relative do'' {
    sol4-1( si-2 re-3 sol-5 |
    re1-2) |
    do4-1( la'-5 do,-1 la'-5 |
    do,4-1( la'-5 do,-1 la'-5) |
    re,-1( sol-2 si-4 re-5 |
    si1-3) |
    do4-4( la-2 do-4 la-2 |
    sol-1 sol-1 sol2-1) \bar ":|:"
    \break

    la2-2( sol4-1 la-2 |
    si1-3) |
    la2-2( sol4-1 la-2 |
    si1-3) |
    re4-5( si-3 re-5 si-3 |
    sol-1 si-3 sol-1 si-3 |
    do-4 la-2 do-4 la-2 |
    sol-1 sol sol2) \bar ":|"
  }
}

leftExSix = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    sol1-5 |
    sol4-5( la-4 si-3 do-2 |
    re2-1) re-1( |
    sol,-5) sol-5 |
    sol1-5 |
    sol4-5( re'-1 si-3 sol-5 |
    re'2-1) re-1( |
    sol,1-5 \bar ":|:"
    \break

    re'4-1( do-2 si-3 la-4 |
    sol-5 re'-1 si-3 sol-5 |
    re'-1 do-2 si-3 sol-5 |
    sol-5 si-3 re-1 si-3 |
    sol1-5) |
    sol-5( |
    re'2-1) re-1(
    sol,1-5) \bar ":|"
  }
}

ExSix = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "6. " }
    \context Staff = "Right hand" \rightExSix
    \context Staff = "Left hand" \leftExSix
  >>
