\version "2.12.3"
\include "espanol.ly"
\header {
  title = "INVENTIO 8"
  composer = "Johann Sebastian Bach (1685-1750)"
  opus = "BWV 779"
}

#(set-default-paper-size "a4")

% TODO terminar
% TODO revisar en piano

righthand = {
  \tempo 4 = 220
  \override Score.MetronomeMark #'transparent = ##t
  \clef treble
  \key la \major
  \time 3/4
  \relative do'' {
    fa la fa do fa |
    \break

    % 4
    \break

    % 7
    \break

    % 10
    \break

    % 13
    \pageBreak

    % 17
    \break

    % 20
    \break

    % 23
    \break

    % 26
    \break

    % 29
    \bar "|."
  }
}

lefthand = {
  \clef bass
  \key la \major
  \time 3/4
  \relative do {
    \break

    % 4
    \break

    % 7
    \break

    % 10
    \break

    % 13
    \pageBreak

    % 17
    \break

    % 20
    \break

    % 23
    \break

    % 26
    \break

    % 29
    \bar "|."

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


