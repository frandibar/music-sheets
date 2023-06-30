\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Minuet en Fa Mayor"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  opus = "K. 2"
  piece = "Allegretto"
}

% define the left and the right hand in new variables
rightHand = {
  \clef treble
  \key fa \major
  \time 3/4
  \relative do'' {
    \bar "|:"
    % parte A
    fa8-3( \p la-5) do,4-1 do |
    re8-3( fa-5) sib,4-1 sib |
    la8-3( do-5) fa,4-1 mi-2 |
    mi2-2( fa4-3) |
    do8-1( mi-3) sol4-5 sol |
    do,8-1( fa-3) la4-5 la |
    \break
    
    % 7
    \times 2/3 { do,8-1( mi-2 sol-3 } sib4-5) la-4 |
    la2-3( sol4-2) \bar ":|"
    % se repite parte A
    fa'8( la) do,4 do |
    re8( fa) sib,4 sib |
    la8( do) fa,4 mi |
    mi2( fa4) |
    \break

    % 13
    do8( mi) sol4 sol |
    do,8( fa) la4 la |
    \times 2/3 { do,8( mi sol } sib4) la |
    la2( sol4) |
    % parte B
    do8-3( \mf mib-5) la,4-1 la-2 |
    sib8-3( re-5) sol,4-1 sol |
    \break

    % 19
    la8-3( do-5) fas,4-2 fas-2 |
    fas2-2( sol4-3) |
    sib8-3( \p re-5) sol,4-1 sol |
    la8-3( do-5) fa,4-1 fa-2 |
    sol8-3( sib-5) mi,4-1 mi-1 |
    mi2-2( fa4-3)
    % repite parte A (4 primeros compases)
    % pregunta A
    fa'8-3( la-5) do,4-1 do |
    \break

    % 26
    re8-3( fa-5) sib,4-1 sib |
    la8-3( do-5) fa,4-1 mi-2 |
    mi2-2( fa4-3) \fermata |
    % respuesta A
    fa'8-3( la-5) do,4-1 do |
    re8-3( fa-5) sib,4-1 sib |
    la8-3( do-5) fa,4-1 mi-2 |
    mi2-2(_\markup { \teeny \italic "rit." } fa4-3)
    \bar "|."

  }
}

leftHand = {
  \clef bass
  \key fa \major
  \time 3/4
  \relative do {
    % parte A
    fa2-5 la4-3 |
    sib2-2 sib4-2 |
    do2-1 do,4-5 |
    fa4-1 do-2 fa,-5 |
    do'2.-1 |
    do2.-1 |

    % 7
    do4-5 mi-3 fa-2 |
    do'-1 sol-2 do,-5 |
    % se repite parte A
    fa2 la4 |
    sib2 sib4 |
    do2 do,4 |
    fa4 do fa, |

    % 13
    do'2. |
    do2. |
    do4 mi fa |
    do' sol do, |
    fas2.-2 |
    sol2.-1 |

    % 19
    do4-2 re-1 re,-5 |
    sol-1 re-2 sol,-5
    mi'2.-2 |
    fa2.-1 |
    sib4-2 do-1 do,-5 |
    fa-1 do-2 fa,-5 |
    la'2.-3 |

    % 26
    sib2.-2 |
    do2-1 do,4-5 |
    re2.-4 \fermata |
    la'2.-1 |
    sib2.-2 |
    do2-1 do,4-3 |
    fa-1 do-2 fa,-5
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


