\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Minuet en Sol Mayor"
  composer = "Johann Sebastian Bach (1685-1750)"
}

% define the left and the right hand in new variables
right = {
  \tempo "Allegretto"
  \clef treble
  \key sol \major
  \time 3/4
  \relative do'' {
    re4-5 sol,8-1 la si do |
    re4-5 sol,-1 sol |
    mi'-3 do8-1 re mi fas |
    sol4-5 sol, sol |
    do-3 re8-4 do si la |
    si4-3 do8-4 si la sol |
    \break

    % 7
    fas4-2 sol8-1 la si sol-1 |
    \appoggiatura si8-3 la2.-2 |
    re4-5 sol,8-1 la si do |
    re4-5 sol,-1 sol |
    mi'-3 do8 re mi fas |
    sol4-5 sol, sol |
    \break

    % 13
    do4-3 re8-4 do si la |
    si4-2 do8-4 si la sol |
    la4-2 si8-3 la sol-1 fas-2 |
    sol2.-1 \bar ":|:" |
    si'4-3 sol8-1 la si sol |
    la4-2 re,8 mi fas re |
    \break

    % 19
    sol4-4 mi8-2 fas sol-4 re-1 |
    dos4-2 si8-1 dos-3 la4-1 |
    la8-1 si dos re-1 mi fas |
    sol4-4 fas-3 mi |
    fas-3 la,-1 dos-3 |
    re2.-4 |
    re4-5 sol,8-1 fas-2 sol4-1 |
    \break

    % 26
    mi'4-5 sol,8-1 fas-2 sol4-1 |
    re'4-5 do si |
    la8-2 sol-1 fas-2 sol-1 la4-2 |
    re,8-1 mi fas-3 sol-1 la si|
    do4-4 si-3 la-2 |
    si8-3( re-5 sol,4-1) fas4-4 |
    % set fingering to the right with extra offset
    \override Fingering #'extra-offset = #'(0.5 . 0)
    \once \set fingeringOrientations = #'(right)
    <si,-1 re-2 sol-5>2. |
  }
}

left = {
  \clef bass
  \key sol \major

  % set fingering to the right for 1st chord
  \once \set fingeringOrientations = #'(right)
  <sol-5 si-3 re'-1>2 la4-4 |
  si2.-3 |
  do'-2 |
  si-3 |
  la-4 |
  sol-5 |

  % 7
  re'4-1 si-3 sol-5 |
  re'-1 re8-5 do'-1 si-2 la-3|
  si2-2 la4-3 |
  sol-4 si-2 sol-4 |
  do'2.-1 |
  si4-2 do'8-1 si la sol|

  % 13
  la2-3 fas4-4 |
  sol2-3 si4-1 |
  do'-2 re'-1 re-5 |
  sol2-1 sol,4-5 \bar ":|:" |
  sol2.-1 |
  fas-2 |

  % 19
  mi4-3 sol-1 mi-3 |
  la2-1 la,4-5 |
  la2.-1 |
  si4-3 re'-1 dos'-2 |
  re'-1 fas-5 la-3 |
  re'-1 re-5 do'-1 |
  << 
    % offset the rest higher
    { r re'2-1 } \\
    { si2-3 si4-3 }
  >>

  % 26
  << 
    { r mi'2-1 } \\
    { do'2-2 do'4-2 }
  >>
  si4-3 la-4 sol-5 |
  re'2-1 r4|
  << 
    { r r fas4-3 } \\
    { re2.-5 }
  >>
  mi4-4 sol-2 fas-3 |
  sol-1 si,-5 re-3 |
  sol-1 re-2 sol,-5 |
}

% bring the two hands together
\score {
  \context PianoStaff <<
    \override PianoStaff.VerticalAlignment #'forced-distance = #11.3
    \set PianoStaff.connectArpeggios = ##t
    \context Staff = "Right hand" \right
    \context Staff = "Left hand" \left
  >>

  \layout {}
  \midi {
      \context {
          \Score
          tempoWholesPerMinute = #(ly:make-moment 120 4) 
      }
  }
}


