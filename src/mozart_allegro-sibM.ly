\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Allegro en Sib Mayor"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  opus = "K. 3"
  piece = "Allegro"
}

% define the left and the right hand in new variables
rightHand = {
  \clef treble
  \key sib \major
  \time 2/4
  \partial 8
  \relative do'' {
    % parte A
    fa8-.-5 \mf |
    re-4([ sib-2) la-1( do-3)] |
    sib-2( fa-1) r fa-1( |
    sol-.-2)[ sol-.-2 la-.-3 la-.-3] |
    sib4-4-- r8 fa-1( \p |
    \break

    % 5
    sol-2)[ sol-.-2 la-.-3 la-.-3] |
    sib4---4 r8 re-.-5 \mf |
    do-4( fa,-1) mi-1( sib'-4) |
    la-3( fa-1) r fa-.-1 |
    \break
    
    % 9
    \acciaccatura la-2 sol-1( fas-2) sol-3( la-4) |
    fa4-2 r8 fa-2 \p |
    sol16-1[ fas-2 sol-1 fas-2] sol8-.-3 \noBeam la-.-4 |
    fa4. 
    % se repite parte A
    fa'8-. \mf |
    \break

    % 13
    re([ sib) la( do)] |
    sib( fa) r fa( |
    sol-.)[ sol-. la-. la-.] |
    sib4-- r8 fa( \p |
    sol)[ sol-. la-. la-.] |
    \pageBreak

    % 18
    sib4-- r8 re-. \mf |
    do( fa,) mi( sib') |
    la( fa) r fa-. |
    \acciaccatura la sol( fas) sol( la) |
    fa4 r8 fa \p |
    \break

    % 23
    sol16[ fas sol fas] sol8-. \noBeam la-. |
    fa4.
    % parte B
    fa'8-.-5 \mf |
    fa-5( re-3) re-3( si-1) |
    si4-2 r8 sol-.-1 |
    do-3( sol) re'-4( sol,) |
    \break

    % 28
    mib'4-5 r8 mib-.-4 \p |
    mib-4[( do-2) do-3( la-1)] |
    la4-2 r8 fa-.-1 |
    sib-3[( fa-3) do'-4( fa,)] |
    re'4-5 r8
    % se repite parte A (primeros 7 compases)
    fa8-. \mf |
    \break

    % 33
    re([ sib) la( do)] |
    sib( fa) r fa( |
    sol)[ sol-. la-. la-.] |
    sib4-- r8 fa( \p |
    sol-.)[ sol-. la-. la-.] |
    \break

    % 38
    sib4-- r8 sib-. \mf |
    \acciaccatura re do[( si-1) do-2( re-3)] |
    sib4-1 r8 sib8-.-2 \p |
    do16-3 si-2 do si do8-. \noBeam re-. |
    sib4.-2
    \bar "|."
  }
}

leftHand = {
  \clef bass
  \key sib \major
  \time 2/4
  \partial 8
  \relative do' {
    % parte A
    r8 |
    sib4-.-3 do-.-2 |
    re-.-1 r8 re-3( |
    mib-2)[ mib-. do-.-4  do-.] |
    <sib-5 re-3>4 r8 re-3( |

    % 5
    mib)[ mib do do] |
    <sib-5 re-3> 4 r8 sib-2 |
    la4-3 sol-4 |
    fa-5 r8 la-4 |

    % 9
    sib4-.-3 do-.-2 |
    re-1 r8 la-3-. |
    sib4.-2 do8-. |
    fa,4.-5
    % se repite parte A
    r8 |

    % 13
    sib4-. do-. |
    re-. r8 re( |
    mib)[ mib-. do-.  do-.] |
    <sib re>4 r8 re( |
    mib-.)[ mib-. do-. do-.] |

    % 18
    <sib re> 4 r8 sib |
    la4 sol |
    fa r8 la |
    sib4-. do-. |
    re r8 la-. |

    % 23
    sib4. do8-. |
    fa,4.
    % parte B
    r8 |
    r2 |
    sol4-.-1 fa-.-2 |
    mib-.-3 si-.-5 |

    % 28
    do-.-4 r4 |
    r2 |
    fa4-.  mib-. |
    re-. la-.-5
    sib-.-4 r4 |

    % se repite parte A (primeros 7 compases)
    % 33
    sib'4-. do-. |
    re-. r8 re( |
    mib)[ mib-. do-.  do-.] |
    <sib re>4-- r8 re( |
    mib-.)[ mib-. do-. do-.] |

    % 38
    <sib re> 4 r8 re,-.-4 |
    mib4-3 fa-2 |
    sol-1 r8 re-3 |
    mib4.-2 fa8-1 |
    sib,4.-5 
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


