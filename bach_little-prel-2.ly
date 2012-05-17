\version "2.12.2"
\include "espanol.ly"
\header {
  title = "Pequeños preludios y fugas"
  composer = "Johann Sebastian Bach (1685-1750)"
}

% TODO add slurs

% command for specifying fingerings for mordents / pralls
% i.e. fa ^\markup \fingering #"2 1 2"
#(define-markup-command (fingering layout props fingers) (string?)
   (interpret-markup layout props
     (markup #:hspace -1.5 #:raise -1 #:finger fingers)))

% same as above but since fingers is supposed to be shorter, hspace is smaller
#(define-markup-command (muteFinger layout props fingers) (string?)
   (interpret-markup layout props
     (markup #:hspace -1 #:raise -1 #:finger fingers)))

#(set-default-paper-size "a4")

keyAndTime = {
  \key mib \major
  \time 3/4
}

righthand = {
  \tempo 8 = 100
  \clef treble
  \keyAndTime
  \relative do'' {
    do8-2 \( \p re _\markup { \bold \italic "cantabile" } mib-4 sol, re'-5 fa,-1 |
    \appoggiatura fa16 \mordent ^\markup \fingering #"3 2 3" mib8 _\markup { \hspace #-1 \finger "2-3" } re-2 do-1 mib-2 sol-3 do-5 |
    fa,-1 \) \( mib'-3 re-2 fa-3 lab-5 do,-1 |
    \appoggiatura do16 \mordent ^\markup \fingering #"3 2 3" si8-2 la _\markup { \hspace #-1 \finger "1-2" } sol-1 si-2 re-3 fa-5 \) |
    \break

    % 5
    << { mib2-4 \tenuto } \\ { mib8-4 do-2 sol-1 do mi-4 do } >> |      % TODO add slur
    fa8-3 \< do sol'-4 do, lab'!-5 do, \! |
    << { re2-4 \tenuto \p } \\ { re8-4 sib!-2 fa-1 sib-2 re-4 sib-1 } >> |
    mib-3 \< sib-1 fa'-4 sib, sol'-5 sib, \! |
    \break

    % 9
    \phrasingSlurUp
    do-4 \( \p lab-2 sol-1 lab do-3 mib-5 |
    sib-3 \) \( sol-2 fa-1 sol-2 sib-3 mib |
    lab,-3 \) \( sol-2 fa-1 sol-3 lab ^\markup \muteFinger #"4-5" mib-2 |
    re-1 \) \( mib fa-3 re-1 sib-3 lab-2 |
    \break

    % 13
    sol-1 \) \( sib-2 mib-5 sib sol-1 sib-2 |
    lab-1 _\markup { \bold \italic "cresc." } mib'-5 sib-2 mib-5 do-3 mib-5 |
    sib-1 mib-4 do-1 mib-3 reb-2 mib-3 |
    do4-1 \) mib-2 lab-5 ~ |
    \break

    % 17
    lab fa-1 re'-5 ~ |
    re sib-1 sol'-5 ~ |
    sol8 fa mib re do re-3 |    % TODO add slur
    << { mib2. \tenuto } \\ { r8 \override Slur #'direction = #'UP sib( sol2) } >> \bar ":|"
    \pageBreak

    % 21
    sol'8-2 \( \mf lab-3 sib-4 sol-1 sib-5 fa-2 |
    \appoggiatura fa16 ^\markup \fingering #"3 2 3" mi8-2 re ^\markup \muteFinger #"1-2" do-1 mi-2 sol-3 sib-5 |
    lab-4 \) \( fa-2 reb-1 sol-5 mi-3 do-1 |
    sib-2 sol-1 lab-2 do-3 fa-5 \) la,-1(|
    \break

    % 25
    sib-2) \( \< re!-1 fa-2 lab!-4 sol-3 fa-1 \! |
    sol-5 mib-4 re-3 do-2 si-1 fa'-4 |
    mib \) \( \> re do-1 mib-5 la,-2 sol-1 \! |
    fas-2 sol-3 la-4 fas-2 \< re-1 la'-2 \! |
    \break


    % 29
    re-5 \) \( _\markup { \bold \italic "più" \dynamic "f" } sol,-1 fas-2 do'-5 sib-4 sol-2 |
    do,-1 \) \( fas-3 sol-4 la-5 mib-2 do-1 |
    sib \) \( ^\markup \muteFinger #"2-1" re-2 fas-4 sol-5 la,-1 \) \( fas'-4 |
    sol4-5 \) \f \< sib2 \! \marcato \mordent ^\markup { \natural } ^\markup \fingering #"2 1 2" ~ |
    \break

    % 33
    sib8 reb-3 \( mi-5 _\markup { \bold \italic "dim.  a  poco  a  poco" } do-1 sol'-5 sib,-1 |
    lab!-2 sib-3 do-5 lab-3 fa-1 \) mi-2( |
    fa-1) lab-3 \( si-5 sol-1 re'-5 fa,-1 |
    mib-2 fa-3 sol-5 mib-3 do-1 \) si-2( |
    \break

    % 37
    \phrasingSlurDown
    do-1) \p mib-2 \( fas-4 re-1 la'-5 do, ^\markup \muteFinger #"1-2" |
    si-1 \) \( re-2 fa!-3 lab!-5 \) \< sol-1 \( si-2 |
    re-3 fa-5 mib-4 \) \( \! do-2 sol-1 si-4 \) |   % TODO add slur
    << { do2.-5 } \\ { r8 sol-2 mib2-1 } >> |
    \bar ":|"
  }
}

lefthand = {
  \clef bass
  \keyAndTime
  \relative do {
    \dynamicUp 
    do4 \( do' sol-2 |
    lab-1 lab,-5 \) r |
    lab'-1 \( fa-2 re-4 |
    sol-1 sol, \) r |
    \break

    % 5
    do \( do' sib! |
    lab sol-1 fa |
    sib, \) \( sib'-1 lab-2 |
    sol-3 fa mib |
    \break

    % 9
    lab-2 \) \( do fa,-4 |
    sol-3 \) \( sib-1 mib,-5 |
    fa-3 \) \( lab-1 fa-3 |
    sib-1 \) \( sib,-5 re-2 |
    \break

    % 13
    mib-1 \) \( mib,-5 reb'-1 |
    do-1 sib-2 lab-3 |
    sol-1 fa-2 mib-3 |
    lab8 \) \( ^\markup \muteFinger #"1-5" _\markup { \bold \italic "espressivo" } mib'-2 lab-1 sol-2 fa-3 mib-4 |
    \break

    % 17
    re!8-5 \) \( fa-3 sib-1 lab-3 sol-4 fa-5 |
    sol-4 \) \( sib-2 mib-1 reb do-1 sib |
    lab4-3 \) sib-4 sib,-2 |
    mib4.-1 sib'8 mib4 \bar ":|"
    \pageBreak

    % 21
    mib,-5 \( mib'-1 reb |
    do-1 \) \( mi,-3 do-5 |
    fa-1 \) \( sib,-2 do-1 |
    fa,-5 \) \( fa'-1 mib!-2 \) \( |
    \break

    % 25
    re!-3 \) \( sib-5 re-1 |
    mib-3 \) \( mib'-1 re-2 |
    do-1 la-4 do-2 |
    re-1 \) \( re, ^\markup \muteFinger #"5-1" do-2 |
    \break

    % 29
    sib-3 \) \( la-4 sol-5 |
    mib'-1 \) \( re-2 do-3 |
    re-1 \) \( do-2 re-1 |
    sol,8-5 \) re'-2[ \( sol-1 sib-2 \> reb-1 fa,-2] \! |
    \break

    % 33
    \phrasingSlurUp
    mi4-3 \) do-5 mi-3 |
    fa8-2 sol-1 lab4-2 r |
    si,-3 sol-5 si-3 |
    do8-2 re-1 mib4-2 r |
    \break

    % 37
    \phrasingSlurDown
    fas,-3 \( re-5 fas-3 |
    sol-1 \) \( re'-2 mib-1 |
    lab,-3 \) \( fa-5 sol-4 |
    do4. _\markup \muteFinger #"1-5" \) \> sol'8 do4-3 \! \bar ":|"
  }
}

\score {
  \context PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \huge "2." }
    \context Staff = "Right hand" \righthand
    \context Staff = "Left hand" \lefthand
  >>

  \layout {}
  \midi {
    \context {
      \Score
    }
  }
}


