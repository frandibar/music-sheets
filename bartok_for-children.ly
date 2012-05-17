\version "2.10.33"
\include "espanol.ly"
\header{
  title = "For Children"
  composer = "Béla Bartók (1881-1945)"
  piece = "Allegro robusto"
}

% define the left and the right hand in new variables
rightHand = {
  \tempo 4 = 138
  \override Score.MetronomeMark #'padding = #3.5
  \clef treble
  \time 2/4
  \relative do'' {
    \set fingeringOrientations = #'(right)
    <do-1 mi-2 sol-4>8[ \f <do mi sol> <do mi sol>( \sf la')] |
    <la,-1 fa'-5>[ <la fa'> <la fa'>( \sf re-3)] |
    <la-1 do-2>[ <la-1 do-2>( re-3) <la mi'-4>] |
    <la fa'-5>4-^ <la fa'>-^ |
    \break

    % 5
    <mi'-1 sol-3>8[ <mi sol> <mi sol>-^( <fa la>)] |
    <fa-2 la-4>-^[( <mi-1 sol-3>) <mi-2 sol-4>-^( <re-1 fa-4>)] |
    <re-3 fa-5>-^[( <sib-2 re-4>) <sib-2 re-4> <la-1 do-3>] |
    <fas-1 la-2 re-5>4-^ <fas la re>-^ |
    <<
      { la8-.-2 re-.-5 re4-^-5 } \\
      { r8 \p <fa,-1 la-2>-. r <fa-1 si-3>-. }
    >> |
    \break

    % 10
    <<
      { do'8-.-5 la-.-5 la4-^-5 } \\
      { r8 <do,-1 mi-2>-. r <do-1 mi-3>-. }
    >> |
    <<
      { sol'8-.-4[ sol-.-5 la-^-5( sol-4)] } \\
      { r8 <si,-1 mi-2>-. r <si-1 mi-2>-. }
    >> |
    <<
      { do'8-.-5 do-.-5 do4-^-5 } \\
      { r8 mi,-. r mi-.-1 }
    >> |
    <<
      { re'8-.-4[ re-.-4 mi-^-5( re-4)] } \\
      { r8 <fa,-1 si-2>-. r <fa si>-. }
    >> |
    <<
      { do'8-.-5 la-.-5 la4-^-5 } \\
      { r8 <do,-1 mi-2>-. r <do-1 mi-2>-. }
    >> |
    \break

    % 15
    <<
      { sol'8-.-4[ sol-.-4 sol->-4 sol-.-4] } \\
      { r8 <si,-1 mi-2>-. r <si-1 mi-2>-. }
    >> |
    <<
      { la'8-.-5 la-.-4 la4-^-5 } \\
      { r8 <do,-1 mi-2>-. r <do-1 mi-2>-. }
    >> |
    <fa'-1 la-2>8-. \f <fa re'>-. <fa re'>4-- |
    <mi-1 do'-5>8-. <do-1 la'-5>-. <do la'>4-- |
    <si-1 sol'-4>8-. <si sol'>-. <si la'-5>( \sf sol'-4) |
    \break

    % 20
    <mi-1 do'-5>8-. <mi do'> <mi do'>4-- |
    <fa-1 re'-4>8-.[ <fa re'> <fa mi'-5>( \sf re')] |
    <mi,-1 do'-5>-. <do-1 la'-5>-. <do la'>4-- |
    <si-1 mi-2 sol-4>8-.[ <si mi sol>-. <si mi sol>-. \sf <si mi sol>-.] |
    <do-1 mi-2 la-5>-. <do mi la>-. <do mi la>4--
    \bar ":|"
  }
}

leftHand = {
  \clef treble
  \time 2/4
  \relative do' {
    \set fingeringOrientations = #'(right)
    <la-5 do-3 mi-1>8 <la do mi> <la do mi>4-- \sf |
    <re-2 fa-1>8 <re fa> <re fa>4-- \sf |
    \clef bass
    <la-5 mi-1>8 <la mi>( \sf re-2) <la-5 do-3> |
    <fa-5 do'-1>4-^ <fa do'>4-^
    \break

    % 5
    \clef treble
    <do'-5 sol'-2>8 <do sol'> <do sol'>-^( <fa-2 la-1>) |
    <fa la>-^( <do sol'>) <do sol'>-^( <re-2 fa-4>) |
    \clef bass
    <re-1 fa-2>-^( <sib re>) <sib-2 re-1> <fa-5 do'-1> |
    <re-5 la'-1>4-^ <re la'>4-^ |
    re-.-1 sol,-.-5 |
    \break

    % 10
    la-.-4 la-.-2 |
    mi-.-5 mi-.-5 |
    la-.-2 la-.-2 |
    sol-.-3 sol-.-3 |
    la-.-2 la-.-2 |
    \break

    % 15
    mi-.-5 mi-.-5 |
    la-.-2 la-.-2 |
    \clef treble
    re'8-.-5[ <fa-4 la-2 re-1> sol,-.-5 <si-4 re-2 sol-1>-.] |
    la-.[ <do-4 mi-2 la-1>-. la-. <do mi la>-.] |
    \clef bass
    mi,[ <sol-4 si-2 mi-1> mi <sol si mi>] |
    \break

    % 20
    \clef treble
    la[ <do mi la> la <do mi la>] |
    sol[ <si re sol> sol <si re sol>] |
    la[ <do mi la> la <do mi la>] |
    \clef bass
    mi,[ <sol si mi> mi <sol si mi>] |
    \clef treble
    la <do mi la> <la do mi la>4-- 
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


