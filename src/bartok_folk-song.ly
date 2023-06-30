\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Folk-song"
  composer = "Béla Bartók (1881-1945)"
  piece = "Moderato"
}

% define the left and the right hand in new variables
rightHand = {
  \time 4/4
  \tempo 4 = 52
  \override Score.MetronomeMark #'padding = #4
  \clef treble
  \key fa \major
  \relative do'' {
    la4-3( \f fa8-1) r la4( fa8) r |
    sol4-. sol8( la fa4-.) r |
    la4-3( \p fa8-1) r la4( fa8) r |
    sol4-. sol8( la fa4-.) r |
    \break

    % 5
    \bar "|:"
    do'4-.\f do-. do-.( la8-.) r |
    do4-.\p do-. do-.( la8-.) r |
    la4( \f fa8) r la4( fa8) r |
    sol4-. sol8( la fa4-.) r
    \bar ":|"
  }
}

leftHand = {
  \clef bass
  \key fa \major
  \relative do' {
    do8( fa, la fa do' fa, la fa |
    sib( fa sib do la do la fa) |
    do'( fa, la fa do' fa, la fa |
    sib( fa sib do la do la fa) |

    % 5
    \bar "|:"
    sib( la sib sol la sol la fa) |
    sib( la sib sol la sol la fa) |
    si( la si sol si la si sol |
    sib do sib do la do fa,4-.)
    \bar ":|"
  }
}

% bring the two hands together
\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "acoustic grand"
    <<
      \new Staff = "Right Hand" { \rightHand }
      \new Staff = "Left Hand" { \leftHand }
    >>
  }

  \midi {}
  
  \layout {
    \context {
      \PianoStaff
    }
  }
}


