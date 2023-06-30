\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Vals en Sol Mayor"
  composer = "Franz Schubert (1797-1828)"
  opus = "Op. 67, No. 15"
  piece = "Allegro moderato"
}

% define the left and the right hand in new variables
rightHand = {
  \time 3/4
  \tempo 2. = 60
  \override Score.MetronomeMark #'padding = #4
  \clef treble
  \key sol \major
  \partial 4
  \relative do'' {
    \set fingeringOrientations = #'(right)
    <sol-1 si-3>4-. \f |
    <sol si>2 <sol si>4-. |
    <sol si>2 <sol si>4-. \mf |
    % parte A
    << 
      { la8-2( si do re la4-2-.) } \\
      { fas2-1 fas4 }
    >> |
    << 
      { si8-2( do re mi si4-.) } \\
      { sol2-1 sol4 }
    >> |
    << 
      { la8-2( si do re la4-2-.) } \\
      { fas2-1 fas4 }
    >> |
    <sol-1 si-2>2 <si-2 re-4>4-._\markup { \teeny \italic "cresc." }
    \break

    % 7
    << 
      { mi8-2( fas sol la-5 mi4-2-.) } \\
      { do2-1 do4 }
    >> |
    << 
      { re8-2( mi fas sol-5 re4-2-.) } \\
      { si2 si4 }
    >> |
    \acciaccatura re8-3 \> do-2( si do-3 mi-5 re do |
    <sol-1 si-2>2) \! <sol si-3>4-. \pp |
    % se repite parte A
    << 
      { la8( si do re la4-.) } \\
      { fas2 fas4 }
    >> |
    << 
      { si8( do re mi si4-.) } \\
      { sol2 sol4 }
    >> |
    << 
      { la8( si do re la4-.) } \\
      { fas2 fas4 }
    >> |
    \break

    % 14
    <sol si>2 <si re>4-._\markup { \teeny \italic "cresc." } |
    << 
      { mi8( fas sol la mi4-.) } \\
      { do2 do4 }
    >> |
    << 
      { re8( mi fas sol re4-.) } \\
      { si2 si4 }
    >> |
    \acciaccatura re8 \> do( si do mi re do) |
    <sol si>2 \! <si-1 re-4>4-. \mf |
    % parte B
    << 
      { mi8-2( fas sol la-5 mi4-2-.) } \\
      { do2-1 do4 }
    >> |
    << 
      { re8-2( mi fas sol-5 re4-2-.) } \\
      { si2 si4 }
    >> |
    \break

    % 21
    \acciaccatura re8-3 do( si do mi-4 re do |
    si4-.) \< <si re>-. <re sol>-. \! |
    mi8-1( \f la-3 si do-5 mi,4-.) |
    re8-1( sol-3 la-4 si-5 re,4-.) |
    << 
      { mi8-2( fas sol la-5 fas4-3-.) } \\
      { do2-1 do4 }
    >> |
    <si sol'>2 <si-1 re-2>4 \p |
    % se repite parte B
    << 
      { mi8( fas sol la mi4-.) } \\
      { do2 do4 }
    >> |
    \break

    % 28
    << 
      { re8( mi fas sol re4-.) } \\
      { si2 si4 }
    >> |
    \acciaccatura re8 do( si do mi re do |
    si4-.) \< <si re>-. <re sol>-. \! |
    mi8( la si do mi,4-.) |
    re8(_\markup { \teeny \italic "dim." } sol la si re,4-.) |
    << 
      { mi8( \p fas sol la fas4-.) } \\
      { do2 do4 }
    >> |
    <si sol'>2 r4
    \bar "|."
  }
}

leftHand = {
  \clef bass
  \key sol \major
  \partial 4
  \relative do' {
    \set fingeringOrientations = #'(right)
    <sol re'>4-. |
    \repeat unfold 6 { <sol re'>2 <sol re'>4-. | }

    % 7
    <sol mi'>2 <sol fas'>4-. |
    <sol-5 re'-2 sol-1>2 <sol-5 re'-1>4-. |
    re-5 <la'-5 re-2 fas-1> <la re fas> |
    % se repite parte A
    <sol-5 re'-1>2 <sol re'>4 |
    \repeat unfold 3 { <sol re'>2 <sol re'>4-. | }

    % 14
    <sol re'>2 <sol re'>4-. |
    <sol mi'>2 <sol fas'>4-. |
    <sol re' sol>2 <sol re'>4-. |
    re <la' re fas> <la re fas> |
    <sol re'>2 <sol re'>4-. |
    % parte B
    do,-5 <do'-5 mi-3 la-1> <do mi la> |
    re,-5 <si'-5 re-3 sol-1> <si re sol> |

    % 21
    re, <la'-5 re-2 fas-1> <la re fas> |
    sol-5 <si-5 re-3 sol-1> <si re sol> |
    do,-5 <do'-5 mi-3 la-1> <do mi la> |
    re,-5 <si'-5 re-3 sol-1> <si re sol> |
    re,-5 re' <re-5 la'-1> |
    <sol, re' sol>2 <sol re'>4-. |
    do,-5 <do'-5 mi-3 la-1> <do mi la> |

    % 28
    re,-5 <si'-5 re-3 sol-1> <si re sol> |
    re, <la'-5 re-2 fas-1> <la re fas> |
    sol-5 <si-5 re-3 sol-1> <si re sol> |
    do,-5 <do'-5 mi-3 la-1> <do mi la> |
    re,-5 <si'-5 re-3 sol-1> <si re sol> |
    re,-5 re' <re-5 la'-1> |
    <sol, re' sol>2 r4 
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


