\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Inquiétude"
  composer = "Friederich Bürgmuller (1806-1874)"
  opus = "Op. 100, No. 18"
}

% TODO revisar en piano

keyAndTime = {
  \key sol \major
  \time 2/4
}

rightHand = {
  \clef treble
  \tempo "Allegro agitato"
  \keyAndTime
  \relative do'' { 
    % parte A
    \mark \default
    r16 \p sol'-3( fas mi) r \< mi-3( re do) \! |
    r \> si-1( las-2 si-1) \! r si-1( do si) |
    r sol'-3( fas mi) r \< mi-3( re do) \! | 
    \break

    % 4
    r \> si-1( las si) \! r si-1( do si) |
    r si-1(_\markup { \italic cresc. } sol'-5 fas-4) r si,-1( sol'-5 fas-4) | 
    r si,-1( fas'-4 mi-3) r \< si-1( fas'-4 mi-3) \! | 
    % fin parte A
    \break

    % 7
    r re-1( mi re) r \> dos-2( re dos) \! |
    r si-1( las-2 si si'8-.-5) r |
    \mark \default
    \repeat volta 2 {
    r16 \mf si-3( la sol) r \< sol-3( fas mi) \! |
    \break

    % 10
    r16 \> re-1( dos-2 re-1) \! r re( mi re) |
    r si'-3( la sol) r \< sol-3( fas mi-1) \! |
    r \> re-1( dos-2 re-1) \! r re-1( mi re) |
    \pageBreak

    % 13
    r16 do-1( si'-5 la) r do,-1( si' la) |
    r si,-1( la'-5 sol) r \< si,-1( la' sol) \! |
    r_\markup { \hspace #0 \raise #-3.5 \italic "dim. e poco rall." } \> si,-1( sol'-4 fas) r si,( sol' fas) \! |
    \break

    % 16
    r16 si,-1( fas'-4 mi) r si( fas' mi) | 
    \mark #1
    r16 \p sol-3(_\markup { \italic "a tempo" }  fas mi) r \< mi-3( re do) \! |
    r \> si-1( las-2 si-1) \! r si-1( do si) |
    r sol'-3( fas mi) r \< mi-3( re do) \! | 
    \break

    % 20
    r \> si-1( las si) \! r si-1( do si) |
    r si-1(_\markup { \italic cresc. } sol'-5 fas-4) r si,-1( sol'-5 fas-4) | 
    r si,-1( fas'-4 mi-3) r \< si-1( fas'-4 mi-3) \! | 
    % fin parte A
    r \> si-1( do si) r fas-2( sol-1 fas) \! |
    \break

    % 24
    }
    \alternative { 
      { r16 mi( res mi mi'8-|) r }
      { r16 mi,-1( fas-2 mi) r \f \< do-2( re-3 do-2) \! | }
    }
    r la-1( si la) r \> si-2( do-3 si) \! |
    r16 mi-1( fas mi) r do-2( \< re-3 do-2) \! |
    \break

    % 28
    r16 la-1( si-2 la) r \> si-2( do si) \! |
    mi4-5 r16 si'-2(_\markup { \italic dim. } do-3 si-2 |
    mi8-|-4) r r16 si'-1( do si |
    mi8-|) \p r r4
    \bar "|."
  }
}


leftHand = {
  \clef bass
  \keyAndTime
  \relative do {
    \set fingeringOrientations = #'(bottom)
    <mi sol si>8-| r <mi la do>-| r |
    <mi sol si>-| r <mi sol si>-| r |
    <mi sol si>8-| r <mi la do>-| r |

    % 4
    <mi sol si>-| r <mi sol si>-| r |
    <res la' si>-| r <res la' si>-| r |
    <mi sol si>8-| r <mi sol si>-| r |

    % 7
    <fas-4 si-1>8-| r <fas-5 las-3 mi'-1>4->( |
    <si re>8) r si, r |
    \repeat volta 2 {
    <sol'-5 si-3 re-1>8-| r <sol-4 las-2 dos-1> r |

    % 10
    <sol-5 si-3 re-1>8-| r <sol si re> r |
    <sol-5 si-3 re-1>8-| r <sol-4 las-2 dos-1> r |
    <sol-5 si-3 re-1>8-| r <sol si re> r |
    
    % 13
    <fas-5 do'-2 re-1>8-| r <fas-5 do'-2 re-1>8-| r |
    <sol-5 si-3 re-1>8-| r <sol si re> r |
    \clef treble
    <si-5 dos-3 la'-1> r <si dos la'> r |

    % 16
    <mi-2 sol>-| r <mi sol> r |
    \clef bass
    <mi, sol si>8-| r <mi la do>-| r |
    <mi sol si>-| r <mi sol si>-| r |
    <mi sol si>8-| r <mi la do>-| r |

    % 20
    <mi sol si>-| r <mi sol si>-| r |
    <res la' si>-| r <res la' si>-| r |
    <mi sol si>8-| r <mi sol si>-| r |
    <si-5 res-3 la'-1> r <si res la'> r |

    % 24
    }
    \alternative {
      { <mi-2 sol-1>8-| r mi,-|-5 r \bar ":|" }
      { <mi'-2 sol-1>8-| r do4-2( }
    }
    la-4 si-3 |
    mi-1) \slurUp do-2( |

    % 28
    la-4 si-3 | 
    mi-1) r |
    <mi-5 sol-3 si-1>8-| r r4 |
    mi,8-| r r4
    \bar "|."
  }
}


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


