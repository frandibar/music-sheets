% Cerny Opus 599 Exercise 3

rightExThree = {
  \clef treble
  \key do \major
  \time 4/4
  \relative do'' {
    sol2-1( si-3 |
    re-5 re-5 |
    re1-5 |
    si1-3) |
    la2-2( si-3 |
    do-4 la-2 |
    si-3 re-5 |
    sol,1-1) \bar ":|:"
    \break

    la1-2( | 
    sol2-1 la-2 |
    si-3 do-4 |
    re1-5) |
    re2-5( si-3 |
    do-4 la-2 |
    si-3 sol-1 |
    sol1-1) \bar ":|"
  }
}

leftExThree = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    sol1-5 |
    sol-5 |
    sol2-5( si-3 |
    re-1) re-1 |
    re1-1 |
    re1-1( |
    sol,2-5 si2-3 |
    sol1-5) \bar ":|:"
    \break

    re'2-1( do-2 |
    si-3 la-4 |
    sol-5 la-4 |
    si-3 sol-5 |
    re'1-1) |
    re1-1( |
    sol,2-5 si-3 |
    sol1-5) \bar ":|"
    \break
  }
}

ExThree = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "3. " }
    \context Staff = "Right hand" \rightExThree
    \context Staff = "Left hand" \leftExThree
  >>
