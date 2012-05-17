\version "2.12.3"
\include "espanol.ly"
\header{
  title = "Pequeños preludios y fugas"
  composer = "Johann Sebastian Bach (1685-1750)"
}

% TODO terminar
% TODO revisar en piano

keyAndTime = {
  \key mib \major
  \time 3/4
}

righthand = {
  \tempo "Con moto" 4 = 116
  \override Score.MetronomeMark #'padding = #3
  \clef treble
  \keyAndTime
  \relative do' {
    \repeat unfold 2 { r16 do-1 mib-3 sol-5 mib-3 do-1 mib do r do-1 r do-1 | }
    r16 do-1 fa-3 lab-5 fa-3 do-1 fa do r do-1 r do-1 | 
    \break

    % 4
    r16 do fa lab fa do fa do r do-1 r do-1 | 
    \repeat unfold 2 { r16 si-1 re-3 fa-5 re si re si r si-1 r si-1 | }
    r16 sol-1 do-3 mib-5 do sol do sol r sol-1 r sol-1 |
    \break

    % 7
    \repeat unfold 3 { r16 sol do mib do sol do sol r sol r sol | }
    la-1 do-3 mib-5 do la do la r la-1 r la-1 |
    \break

    % 11


    \override Fingering #'extra-offset = #'(0.5 . 0)
    \once \set fingeringOrientations = #'(right)
  }
}

lefthand = {
  \clef bass
  \keyAndTime
  \relative do {
    \repeat unfold 2 { do4-5 r sol'16-.-1 r mib-.-3 r | }
    do4-5 r lab'16-.-1 r fa-.-2 r | 

    % 4
    \repeat unfold 3 { do4-5 r lab'16-.-1 r fa-.-2 r | }
    do4-- r mib16-.-1 r do-.-2 r |

    % 7

  }
}

\score {
  \context PianoStaff <<
    \context Staff = "Right hand" {
      \righthand
      % add fermata over last bar
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \mark \markup { \musicglyph #"scripts.ufermata" } 
    }
    \context Staff = "Left hand" \with { \consists "Mark_engraver" } {
      % add fermata over last bar
      \override Staff.RehearsalMark #'direction = #DOWN
      \override Staff.RehearsalMark #'transparent = ##t
      \lefthand
      \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \override Staff.RehearsalMark #'transparent = ##f
      \mark \markup { \musicglyph #"scripts.dfermata" } 
    }
  >>

  \layout {}
  \midi {
    \context {
      \Score
    }
  }
}


