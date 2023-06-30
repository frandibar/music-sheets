\version "2.10.33"
\include "espanol.ly"
\header{
  title = "The Flowers Sing of Love"
  subtitle = "No. 6 from GYERMEKEKNEK (For Children)"
  composer = "Béla Bartók (1881-1945)"
  opus = "Sz. 42"
  piece = "Allegro"
}

% define the left and the right hand in new variables
rightHand = {
  \clef treble
  \time 2/4
  \relative do'' {
    r2 | r | r | r | 
    % parte A1
    la8-.-3[ \f la-._\markup { \teeny \italic "molto marcato" } la-. la-.] |
    sol-2( la-3) fa4-- |
    \break

    % 7
    la8-.[ la-. la-. la-.] |
    sol( la) fa4-- |
    sol8-3([ fa) fa-3( mi)] |
    mi-2( fa) re4---1 |
    sol8-3([ fa) fa-3( mi)] |
    mi-2( fa) re4---1( |
    \break

    % 13
    re2)( \> | re)( | re)( | re) \! |
    % parte A2
    la'8-.-3[ \mf la-. la-. la-.] |
    sol( la) fa4-- |
    \break

    % 19
    la8-.[ la-. la-. la-.] |
    sol( la) fa4-- |
    sol8([ fa) fa( mi)] |
    mi( fa) re4--( |
    sol8([ fa) fa( mi)] |
    mi( fa) re4--( \sf |
    \pageBreak

    % 25
    re2)( | re)( \> | re)( | re) \! |
    % parte A3
    la'8-.[ \p la-. la-. la-.] |
    sol( la) fa4-- |
    \break

    % 31
    la8-.[ \p la-. la-. la-.] |
    sol( la) fa4-- |
    sol8([ fa) fa( mi)] |
    mi( fa) re4--( |
    sol8([ fa) fa( mi)] |
    mi( fa) re4-^( |
    \break

    % 37
    re2)( | re)( | re)( | re) |
    % parte A4
    la'8-.[ \pp la-. la-. la-.] |
    sol( la) fa4-- |
    la8-.[ \p la-. la-. la-.] |
    \break

    % 44
    sol( la) fa4-- |
    sol8([ fa) fa( mi)] |
    mi( fa) re4--( |
    sol8([ fa) fa( mi)] |
    mi( fa) re4->( |
    re2) | r |
    \break

    % 51
    mi8( \ppp fa) re4( |
    re2)( | re)( | 
    mi8( fa) re4( |
    re2)( \> | re)( | re) \!
    \bar "|"
  }
}

patronA = { <re la'>8[ <re la'> <re la'> <re la'>] }

leftHand = {
  \clef bass
  \time 2/4
  \relative do {
    \set fingeringOrientations = #'(right)
    <re-5 la'-1>8-.[^\f <re la'>-. <re la'>-. <re la'>-.] |
    <re la'>[^\markup { \teeny \italic sim. } <re la'> <re la'> <re la'>] |
    \repeat unfold 4 { \patronA | }

    % 7
    \repeat unfold 6 { \patronA | }

    % 13
    \repeat unfold 6 { \patronA | }

    % 19
    \patronA |
    \repeat unfold 2 { <re sib'>8[ <re sib'> <re sib'> <re sib'>] | }
    \repeat unfold 2 { <do la'>8[ <do la'> <do la'> <do la'>] | }
    <si sol'>8-.[ <si sol'> <si sol'> <si sol'>] | 

    % 25
    \repeat unfold 4 { <si sol'>8[ <si sol'> <si sol'> <si sol'>] | }
    r2 |
    <sol'-3 si-1>8[ <sol si> <sol si> <sol si>] |

    % 31
    \repeat unfold 2 { r2 | <sol si>8[ <sol si> <sol si> <sol si>] | }
    r2 |
    <fa-5 sib-2>8[ <fa sib> <fa sib> <fa sib>] |

    % 37
    \repeat unfold 4 { <fa sib>8[ <fa sib> <fa sib> <fa sib>] | }
    r2 |
    <fa-5 do'-1>8[ <fa do'> <fa do'> <fa do'>] |
    <fa do'>8[ <fa do'> <fa do'> <fa do'>] |

    % 44
    \repeat unfold 2 { <fa do'>8[ <fa do'> <fa do'> <fa do'>] | }
    <re-5 si'-1>8[ <re si'> <re si'> <re si'>] |
    <re si'>8[ <re si'> <re si'> <re si'>] |
    <re-5 sib'-1>8[ <re sib'> <re sib'> <re sib'>] |
    \repeat unfold 2 { <re sib'>8[ <re sib'> <re sib'> <re sib'>] | }

    % 51
    r2 |
    <re-5 la'-1>8[ <re la'> <re la'> <re la'>] |
    \repeat unfold 2 { <re la'>8[ <re la'> <re la'> <re la'>] | r2 | }
    <re la'>8[ <re la'> <re la'> <re la'>] 
    \bar "|"
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


