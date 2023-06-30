\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Toccatina"
  composer = "Dmitri Kabalesky (1904-1987)"
  piece = "Allegretto"
}

% define the left and the right hand in new variables
rightHand = {
  \time 2/4
  \clef treble
  \partial 8
  \relative do' {
    \set fingeringOrientations = #'(right)
    r8 |
    % part A
    r <do-1 mi-2 la-5>-.[_\markup { \hspace #2.0 \teeny \italic sempre } \p <do mi la>-. <mi sol do>-.] |
    r <re fa si>-.[ r <si re sol>-.] |
    r <do mi la>-.[ <do mi la>-. <mi sol do>-.] |
    r <re fa si>-.[ r <si re sol>-.] |
    \break

    % 5
    r <do mi la>-.[ r <re fa si>-.] |
    r_\markup { \teeny \italic cresc. } <mi sol do>-.[ r <fa la re>-.] |
    % part B
    r \mf <sol si mi>-.[ <sol si mi>-. <la do fa>-.] |
    r <sol si mi>-.[ <sol si mi>-. <la do fa>-.] |
    r <fa la re>-.[ <fa la re>-. <sol si mi>-.] |
    \break

    % 10
    r <fa la re>-.[ <fa la re>-. <sol si mi>-.] |
    r_\markup { \teeny \italic dim }  <mi sol do>-.[ r <fa la re>-.] |
    r <re fa si>-.[ r <mi sol do>-.] |
    % part A
    r \p <do-1 mi-2 la-5>-.[ <do mi la>-. <mi sol do>-.] |
    r <re fa si>-.[ r <si re sol>-.] |
    \break

    % 15
    r <do mi la>-.[ <do mi la>-. <mi sol do>-.] |
    r <re fa si>-.[ r <si re sol>-.] |
    r <do mi la>-.[ r <re fa si>-.]_\markup { \teeny \italic cresc. } |
    r <mi sol do>-.[ r <fa la re>-.] |
    % part C
    r \f <solb-1 sib-2 mib-5>-.[ <solb sib mib>-. <la-1 do-2 fa-5>-.] |
    \break

    % 20
    r <solb-1 sib-2 mib-5>-.[ <solb sib mib>-. <la-1 do-2 fa-5>-.] |
    r <sib reb solb>-.[ <sib reb solb>-. <la do fa>-.] |
    r <sib reb solb>-.[ <sib reb solb>-. <la do fa>-.] |
    r <solb sib mib>-.[ r <lab do fa>-.] |
    r <fa lab reb>-.[ r <solb sib mib>-.] |
    \pageBreak

    % page 2
    % 25
    r <mi sol do>-.[ <mi sol do>-. <fa lab reb>-.] |
    r <mi sol do>-.[ <mi sol do>-. <fa lab reb>-.] |
    r <res fas si>-.[ <res fas si>-. <mi sol do>-.] |
    r <res fas si>-.[ <res fas si>-. <mi sol do>-.] |
    r <re fa sib>-.[ <re fa sib>-. <res fas si>-.] |
    \break

    % 30
    r <re-1 fa-2 sib-5>-.[ <re fa sib>-. <res fas si>-.] |
    r <re fa sib>-.[ r <re-1 sols-3 si-5>]_\markup { \hspace #-2.0 \teeny \italic dimin. } \staccato |
    r <re fa sib>-.[ r <re sols si>-.] |
    r \> <re fa sib>-.[ r <re sols si>-.] |
    r <re fa sib>-.[ r <re sols si>-.] \! |
    \break

    % 35
    r \p <do-1 mi-2 la-5>-.[ <do mi la>-. <mi sol do>-.] |
    r <re fa si>-.[ r <si re sol>-.] |
    r <do mi la>-.[ <do mi la>-. <mi sol do>-.] |
    r <re fa si>-.[ r <si re sol>-.] |
    r <do mi la>-.[ r <si re sol>-.] |
    \break

    % 40
    r <la do fa>-.[ r <sol si mi>-.] |
    \clef bass
    r <fa la re>-.[ r <sol si mi>-.] |
    r <mi sol do>-.[ r <re fa si>-.] \p |
    r <do mi la>-.[ \> <do mi la>-. <si re sol>-.] |
    r <do mi la>-.[ <do mi la>-. <si re sol>-.] \! |
    \break

    % 45
    r <do mi la>-.[ \pp r <si re sol>-.] |
    r <do mi la>-.[ r <si re sol>-.] |
    <do mi la>4-. r |
    <si re sol>4-. r |
    <do mi la>4-. r |
    \bar "|."
  }
}

leftHand = {
  \clef bass
  \partial 8
  \relative do {
    mi8-5(_\markup { \hspace #3.0 \teeny \italic "cantando e legatissimo" } \mf |
    % part A
    la4.-2 do8-1 |
    si4^\markup { \finger "2-1" } mi,) |  % finger change
    la4.-2( do8-1 |
    si4^\markup { \finger "2-1" } mi,) |

    % 5
    la4-4( si-3 |
    do-2 re-1) |
    % part B
    mi4.-2( fa8-1) |
    mi4.-2( fa8-1) |
    re4.-2( mi8-1) |

    % 10
    re4.-2( mi8-1) |
    do4-2 re |
    si -2 do |
    % part A
    la4.-2( do8-1 |
    si4^\markup { \finger "2-1" } mi,) |  % finger change

    % 15
    la4.-2( do8-1 |
    si4^\markup { \finger "2-1" } mi,) |
    la4-4( si-3 |
    do-2 re-1) |
    % part C
    mib4.-2( fa8) |

    % 20
    mib4.-2( fa8) |
    solb4.( fa8) |
    solb4.( fa8) |
    mib4-2 fa |
    reb-3 mib-2 |

    % page 2
    % 25
    do4.-3( reb8-2) |
    do4.( reb8) |
    si4.-2( do8-1) |
    si4.( do8) |
    sib4.-2( la8-3) |

    % 30
    sib4.( la8) |
    sib4-2 mi,-5 |
    sib' mi, |
    sib' mi, |
    sib' mi,( |
    
    % 35
    la4. do8 |
    si4 mi,) |
    la4.( do8 |
    si4 mi,) |
    la-1 sol |

    % 40
    fa-3 mi-1 |
    re mi-1 |
    do-3 si-1 |
    la4.-2( mi8) |
    la4.( mi8) |

    % 45
    la4 mi |
    la mi |
    la-2-. r |
    mi-1 r
    la,-5 r
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


