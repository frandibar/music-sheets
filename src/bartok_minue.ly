\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Minuet"
  composer = "Béla Bartók (1881-1945)"
  piece = "Andante"
}

% TODO: - mover el cresc. entre medio, y no por encima de la clave de sol

% define the left and the right hand in new variables
rightHand = {
  \time 3/4
  \tempo 4 = 80
  \override Score.MetronomeMark #'padding = #3.5
  \clef treble
  \partial 8*3
  \relative do'' {
    \set fingeringOrientations = #'(right)
    <si-1 sol'-5>8-._\markup { \hspace #2.0 \teeny \italic grazioso } \p <la-1 fa'-5>-.[ <sol-1 mi'-5>-.] |
    <fa re'>4-.-> <sol mi'>-. <fa re'>-. |
    <mi do'>-- r8 <si' sol'>-. <la fa'>-.[ <sol mi'>-.] |
    <fa re'>4-.-> <sol mi'>-. <fa re'>-. |
    <mi do'>-- r8 <si' sol'>-. \< <la fa'>-.[ <sol mi'>-.] |
    <fa re'>4-.-> <la fa'>-. <fa re'>-. |
    <mi do'>4-. <sol mi'>-. <mi do'>-. \! |
    <re si'>4-. \> <mi do'>-. <do la'>-. |
    \break

    % 8
    <si sol'>-- r8
    <si'-1 sol'-5>8-. \! \p <la-1 fa'-5>-.[ <sol-1 mi'-5>-.] |
    <fa re'>4-.-> <sol mi'>-. <fa re'>-. |
    <mi do'>-- r8 <si' sol'>-. <la fa'>-.[ <sol mi'>-.] |
    <fa re'>4-.-> <sol mi'>-. <fa re'>-. |
    \override TextSpanner #'edge-text = #(cons (markup #:bold "cresc." ) "")
    <mi do'>-- \startTextSpan r8 <mi' do'>-. <re si'>-.[ <mi do'>-.] |
    <re si'>4-.-> r8 <do la'>-. <si sol'>-.[ <do la'>-.] |
    <si sol'>4-.-> r8 <la fa'>-. <sol mi'>-.[ <fa re'>-.] \stopTextSpan |
    \break

    % 15
    <mi do'>4-. \mf \> <fa re'>-. <re si'>-. \! |
    <mi do'>-. \p r_\markup { \teeny \italic "poco marcato" } r |
    <fa'-1 sol-2>-. <fa sol>-. <fa sol>-. |
    <mi-1 sol-2>-- r r |
    <fa-1 sol-2>-. <fa sol>-. <fa sol>-. |
    <mi-1 sol-2>-- r8 <si sol'>-. <la fa'>-.[ <sol mi'>-.] |
    <fa re'>4-. <mi do'>-. <fa re'>-. |
    <mi do'>-- r8
    \bar "|."
  }
}

leftHand = {
  \clef bass
  \partial 8*3
  \relative do' {
    \set fingeringOrientations = #'(right)
    r8 r4 |
    sol2->-1 sol4-. |
    do,4->-5( mi-.) fa-. |
    sol2 sol4-. |
    do,4->-5( mi-.) fa-. |
    sol2 sol4-. |
    do,2 do4-. |
    re2-4 fas4-.-2 |

    % 8
    sol4-. sol-. r |
    sol2 sol4-. |
    do,4->-5( mi-.) fa-. |
    sol2 sol4-. |
    do,4->-5( re-.) mi-. |
    fa-- fa-. r |
    re4->( mi-.) fa-. |

    % 15
    sol2 sol4-. |
    <do,-5 sol'-1>-. r8 <sol'-5 mi'-1>-. <fa-5 re'-1>-.[ <mi-5 do'-1>-.] |
    <re-5 si'-1>4-.-> <do-5 la'-1>-. <re-5 si'-1>-. |
    <mi do'> r8 <sol mi'>-. <fa re'>-.[ <mi do'>-.] |
    <re si'>4-.-> <do la'>-. <re si'>-. |
    <mi do'>4-- r fa-.-2 |
    sol2 sol4-. |
    do,-- r8
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


