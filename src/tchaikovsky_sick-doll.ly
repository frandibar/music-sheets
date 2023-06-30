\version "2.10.33"
\include "espanol.ly"
\header{
  title = "The Sick Doll"
  composer = "Pyotr Il'ich Tchaikovsky (1840-1893)"
  opus = "Op. 39, No. 6"
  piece = "Lento"
}

\paper {
  between-system-space = 1.5 \cm
}

% TODO add more space for dynamics
% TODO revisar en piano

% define the left and the right hand in new variables
rightHand = {
  \clef treble
  \key sib \major
  \time 2/4
  \relative do''' {
    r4 \mf sol---3_\markup { \teeny \italic "espr." } |
    r fas---2 |
    r re---1 |
    r re---1 |
    r sol---3 |
    r fas---2 |
    r re---1 |
    r re---1 |
    \break

    % 9
    << 
      { <sib^3 re-1>2( } \\
      { r8 sol4.-1 }
    >> |
    << 
      { la2-5) } \\
      { r8 re,4.-1 }
    >> |
    << 
      { <sib'^3 re-1>2( } \\
      { r8 sol4.-1 }
    >> |
    << 
      { la2-5) } \\
      { r8 re,4.-1 }
    >> |
    << 
      { mib2-5( } \\
      { r8 la,4.-1 }
    >> |
    << 
      { re2-4) } \\
      { r8 la4.^1 \< }
    >> |
    << 
      { sol'2-5( } \\
      { r8 \! do,4.-1 }
    >> |
    << 
      { fas2)^\markup { \finger "4-3" } } \\  % finger change
      { r8 \> re4.^1 \! }
    >> |
    \break

    % 17
    r4 \p \< sol'---3 |
    r fas---2 |
    r re---1 |
    r re---1 |
    r sib'---5 \! \f |
    r la---4 |
    r re,---1 |
    r re-- |
    r _\markup { \teeny \italic dim. } sol---5 |
    \break

    % 26
    r \> mib---3 |
    r re---2 |
    r do---1 |
    r sib---3 |
    r <fas-1 la-2>-- \!
    r \mf <sib,-1 sol'-5> \< |
    r <do-1 fas-4>-- \! |
    r \p <sib sol'>-- \< |
    r <do fas>-- \! |
    \break

    % 35
    r \pp <sib sol'>-- \< |
    r <do sol'>-- |
    r <re-1 sol-5>-- |
    r \! <mib-3 sol-5>-- \> |
    r <re-1 sol-5>-- |
    r <do-1 sol'-5>-- |
    r \! <sib-1 sol'-5>--( \pp |
    <sib sol'>2) 
    \bar "|."
  }
}

leftHand = {
  \clef bass
  \key sib \major
  \time 2/4
  \relative do' {
    \set fingeringOrientations = #'(right)
    \set Staff.pedalSustainStyle = #'bracket
    <<
      {
        r8_\markup { \hspace #0 \raise #-2.0 \teeny \italic "marcato il basso" } <sib-2 re-1>4. |
        r8 <do-2 re-1>4. |
        r8 <re-3 sol-1>4. |
        r8 <do-2 re-1>4. |
        r8 <sib-2 re-1>4. |
        r8 <do-2 re-1>4. |
        r8 <re-3 sol-1>4. |
        r8 <do-2 re-1>4. |
      } \\
      { 
        sol2-5 \sustainOn | 
        la-4 \sustainOff \sustainOn | 
        sib-5 \sustainOff \sustainOn | 
        la-4 \sustainOff \sustainOn | 
        sol-5 \sustainOff \sustainOn | 
        la-4 \sustainOff \sustainOn | 
        sib-5 \sustainOff \sustainOn | 
        la \sustainOff \sustainOn |
      }
    >> |

    % 9
    r4 \sustainOff \sustainOn sol---1 |
    r \sustainOff \sustainOn fas---2 |
    r \sustainOff \sustainOn mi---3 |
    r \sustainOff \sustainOn <re-4 fas-2>-- |
    r \sustainOff \sustainOn <do-5 sol'-1>-- |
    r \sustainOff \sustainOn <re-4 fas-2>-- |
    r \sustainOff \sustainOn <mib-3 sol-1>-- |
    r \sustainOff \sustainOn <re-5 la'-1>-- |
    \break

    % 17
    <<
      {
        r8 <sib' re>4. |
        r8 <do re>4. |
        r8 <re sol>4. |
        r8 <re fas>4. |
        r8 <re sol>4. |
        r8 <re fas>4. |
        r8 <re sol>4. |
        r8 <re sol>4. |
        r8 <mib-2 sol-1>4. |
      } \\
      { 
        sol,2 \sustainOff \sustainOn | 
        la \sustainOff \sustainOn | 
        sib \sustainOff \sustainOn | 
        la \sustainOff \sustainOn | 
        sol \sustainOff \sustainOn | 
        la \sustainOff \sustainOn | 
        sib \sustainOff \sustainOn | 
        si-5 \sustainOff \sustainOn | 
        la-4 \sustainOff \sustainOn |
      }
    >> |
    \break

    % 26
    \clef treble
    <<
      {
        r8 <sol'-2 sib-1>4. |
        r8 <sol-2 sib-1>4. |
        r8 <sol-2 la-1>4. |
        r8 sol4. |
      } \\
      {
        dos,2-5 \sustainOff \sustainOn |
        re2-5 \sustainOff \sustainOn |
        mib2-4 \sustainOff \sustainOn |
        re2-4 \sustainOff \sustainOn |
      }
    >> |
    \clef bass
    << { r8 do4.-1 | } \\ { re,2-5 \sustainOff \sustainOn | } >>
    << { r8 re4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >>
    << { r8 la'4.-1 | } \\ { mib2-3 \sustainOff \sustainOn | } >>
    << { r8 re4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >>
    << { r8 la'4.-1 | } \\ { mib2-3 \sustainOff \sustainOn | } >>
    \break

    % 35
    << { r8 re4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >>
    \relative do { << { r8 mib4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >> } 
    \relative do { << { r8 fa4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >> }
    \relative do { << { r8 sol'4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >> }
    \relative do { << { r8 fa4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >> }
    \relative do { << { r8 mib4.-1 | } \\ { sol,2-5 \sustainOff \sustainOn | } >> } 
    \relative do { << { r8 re4.-1( | } \\ { sol,2-5( \sustainOff \sustainOn | } >> } 
    << { re'2) } \\ { sol,2) \sustainOff \sustainOn } >>
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


