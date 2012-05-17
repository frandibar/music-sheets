\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Dialogue"
  composer = "Béla Bartók (1881-1945)"
  piece = "Moderato"
}

% define the left and the right hand in new variables
rightHand = {
  \tempo 4 = 96
  \override Score.MetronomeMark #'padding = #3.5

  \time 3/4
  \clef treble
  \relative do'' {
    % parte A
    la2-1( \p si4-2 |
    do2.-3 |
    si4 la si |
    do) r r |
    % parte A
    la2( si4 |
    do2. |
    si4 la si |
    do) r r |
    \break

    % 9
    do2( re4 |
    mi re do |
    si la si |
    do2.) |
    si4( la si |
    do2.) |
    si4( do si |
    la) r r
    \bar "|."
  }
}

leftHand = {
  \clef bass
  \relative do {
    % parte A
    r2 r4 |
    mi2( fas4 |
    sols2. |
    la4 si la) |
    % parte A
    r2 r4 |
    mi2( fas4 |
    sols2. |
    la4 si la) |
    \break

    % 9
    r2 r4 |
    mi2( fas4 |
    sols2. |
    la4 si la |
    sols) r r |
    la( sols fas |
    sols2. |
    la4) r r
    \bar "|."
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


