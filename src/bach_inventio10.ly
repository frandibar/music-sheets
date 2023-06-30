\version "2.12.3"
\include "espanol.ly"
\header {
  title = "INVENTIO 10"
  composer = "Johann Sebastian Bach (1685-1750)"
  opus = "BWV 781"
}

#(set-default-paper-size "a4")

% command for specifying fingerings for mordents / pralls
% i.e. fa ^\markup \fingering #"2 1 2"
#(define-markup-command (fingering layout props fingers) (string?)
   (interpret-markup layout props
     (markup #:hspace -1.5 #:raise -1 #:finger fingers)))

keyAndTime = {
  \key sol \major
  \time 9/8
}

righthand = {
  \tempo 4 = 220
  \override Score.MetronomeMark #'transparent = ##t
  \clef treble
  \keyAndTime
  \relative do'' {
    sol8-1 si-2 re-4 si sol re'-4 si-2 sol sol'-3 |
    fas4 \prall ^\markup \fingering #"2 3 2" re8 la'-5 fas re la' fas re |
    sol-5 re-2 si-1 fa'-4 re si fa'-5 re-3 si |
    \break

    % 4
    mi8-5 do-3 la-1 fas!-2 la-1 do-3 mi-5 re do |
    re-5 si-3 sol-2 mi-1 sol-2 si-3 re-5 do si |
    do-5 la-3 fas-2 re-1 fas la-3 do-5 si-3 la-1 |
    \break

    % 7
    si-2 do re mi-5 si-1 sol'-5 mi-3 si sol' |
    la, si dos re-4 la fas'-5 re la fas' |
    sol,4.( \mordent ^\markup \fingering #"3 2 3" sol8) la-4 sol-3 fas sol-3 mi-1 |
    \break

    % 10
    fas-2 sol fas mi-1 fas-2 re-1 la'-3 si do |
    si-3 do si la si sol mi'-3 fas-4 sol-5 |
    dos,-2 re-3 dos-2 si-1 dos-2 la-1 sol'-3 la si |
    \break

    % 13
    la sol fas mi fas-4 re-2 la-1 re-3 dos-2 |
    re4. \mordent ^\markup \fingering #"3 2 3" r4 r8 r4 r8 |
    la8 dos mi dos la mi' dos la sol'-3 |
    fas4. \prall ^\markup \fingering #"2 3 2" re4. r4 r8 |
    \pageBreak

    % 17
    sol,-1 si-2 re-4 si sol re' si sol fa'-5 |
    mi-4 do-2 la-1 la'-5 mi-3 do-2 la-1 si do |
    re-4 si-2 sol-1 sol'-5 re-3 si-2 sol-1 la si-1 |
    \break

    % 20
    do2.( \prall ^\markup \fingering #"2 3 2" do4.)( |  % use slurs instead of ~ since they are rounder
    do2.)( \prall do4.) |
    si2.( \prall ^\markup \fingering #"2 3 2" si4.) ~ |
    \break

    % 23
    si2.( \prall si4.)( |
    si8) mi-5 re do re si-1 la-2 si sol |
    la-2 do-4 si la si sol-1 fas-2 sol-3 mi |
    \break

    % 26
    fas4 \prall ^\markup \fingering #"2 3 2" re8 la'4 \mordent ^\markup \fingering #"2 1 2" fas8-1 re'4 \mordent ^\markup \fingering #"2 1 2" fas,8-1 |
    sol-1 si re si sol re'-4 si sol sol' |
    re-1 fas-3 la-5 fas re la'-5 fas re do' |
    \break

    % 29
    si-3 la sol-1 fas-2 sol la re, sol-4 fas |
    sol-5 fas mi re do si-3 la si do |
    si la sol fas-2 sol-3 la-4 re, sol-4 fas |
    sol-5 re-3 si-2 sol4.-1 r4 r8 \bar "|."
    \break
  }
}

lefthand = {
  \clef bass
  \keyAndTime
  \relative do {
    R8*9 |
    re8-5 fas la fas re la' fas re-5 do'-1 |
    si4 \prall ^\markup \fingering #"2 1 2" sol8-4 re'-1 si-3 sol-5 re' si sol |
    \break

    % 4
    do-2 mi-1 do la-4 do-1 la-2 fas-4 sol-3 la-1 |
    si-2 re-1 si-2 sol-4 si-1 sol-2 mi-4 fas sol-1 |
    la-2 do-1 la fas-4 la-1 fas-3 re-5 mi-3 fas |
    \break

    % 7
    sol4.( \mordent ^\markup \fingering #"1 2 1" sol8-1) fas-2 mi re mi-3 dos-5 |
    fas4.( \mordent ^\markup \fingering #"1 2 1" fas8) mi-1 re dos re si-4 |
    mi-1 fas-3 sol-2 la-1 mi-5 dos'-1 la-2 mi dos'-1 |
    \break

    % 10
    re4. \mordent ^\markup \fingering #"1 2 1" ~ re8 re,-5 mi-3 fas-2 mi re |
    sol4.( \mordent ^\markup \fingering #"1 2 1" sol8) mi-3 fas sol fas mi |
    la4.( \mordent ^\markup \fingering #"1 2 1" la8) sol-2 fas-3 mi-1 re dos |
    \break

    % 13
    re-2 mi fas-3 sol la si-2 la4-1 la,8-5 |
    re-3 fas la fas-3 re la'-1 fas re re'-1 |
    dos4. \prall ^\markup \fingering #"2 1 2" la4. r4 r8 |
    re, fas la-1 fas re la' fas re do' |
    \pageBreak

    % 17
    si4. \prall ^\markup \fingering #"2 1 2" sol4.-4 r4 r8 |
    do,4.( \mordent ^\markup \fingering #"1 2 1" \stemUp do8) re-2 mi \stemNeutral fas,-4 sol la |
    si4.( \mordent ^\markup \fingering #"1 2 1" si8-1) do-2 re mi,-5 fas-4 sol-3 |
    \break

    % 20
    la-2 do-1 mi-2 la mi do-3 la-5 si-4 do-3 |
    re-1 fas-3 la-2 re-1 la-2 fas-3 re-5 mi fas |
    sol-2 si-1 re-2 sol-1 re-2 si-3 sol-5 la-3 si-1 |
    \break

    % 23
    mi,-5 sol-4 si mi si sol-3 mi fas-3 sol-1 |
    do,2.( \prall ^\markup \fingering #"2 1 2" do4.)( |
    do2.)( do4.)( |
    \break

    % 26
    do8) re-1 fas-2 la fas re-1 do-2 si-3 la-4 |
    si-3 fas si re-1 si sol-5 re' si-3 sol-5 |
    fas-3 re fas-3 la fas re la' fas re |
    \break

    % 29
    sol-3 la si la-3 si do si-3 do re |
    mi,4.-5 ~ mi4 mi'8-3 fas-2 mi re |
    sol4 \mordent si,8-5 mi-1 re-2 do-3 re4 \mordent ^\markup \fingering #"1 2 1" re,8-5 |
    sol4. ^\markup { \hspace #-1.0 \raise #-1.0 \finger "1-5" } ~ sol8-5 si-3 re-2 sol4.-1 \bar "|."
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


