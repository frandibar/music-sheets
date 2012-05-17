\version "2.12.1"
\include "espanol.ly"
\header{
  title = "Venetianisches Gondellied"
  composer = "Felix Mendelssohn"
  piece = "Allegretto tranquillo"
}

% TODO terminar

% tighten space; we want 2 pages. 
#(set-global-staff-size 18)
\paper {
  pagetopspace = #0.0
  indent = 0.0
  linewidth = 18.0\cm
  raggedlastbottom = ##f
}

rightHand = {
  \clef treble
  \key la \major
  \time 6/8
  \relative do' { 
    \partial 8
    r8 |
    r4 r r |  % TODO: replace with r1 but avoid bar checking
    r r r |
    mis2.( |
    sols2.) |
    r4 r r |
    \break

    r4 r8 r la8-1( si |
    dos4.) dos4. |
    dos4.( dos4) dos8-2 |
    dos-1( la'-5 sols fas mi re) |
    dos4-3 r8 fas,4.-1 |
    \break

    la4.( la4) si8 |
    dos4.-3 fas4.-3 |    % TODO: pasaje mudo
    << 
      { mis4 sols4.-3( }  \\    % TODO: fix slur
      { mis2.( } 
    >> |
    <mi sols>4.)( <mi sols>8) la,-1( si-2 |
    dos4.-3) dos4. |
    \break

    \bar ":|"
  }
}


leftHand = {
  \clef bass
  \key la \major
  \time 6/8
  \relative do' {

    \break
    %\bar ":|"
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


