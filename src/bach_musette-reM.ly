\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Musette en Re Mayor"
  composer = "Johann Sebastian Bach (1685-1750)"
  piece = "Allegretto"
}

% define the left and the right hand in new variables
rightHand = {
  \clef treble
  \key re \major
  \time 2/4
  \relative do'' {
    \bar "|:"
    % parte A
    \repeat unfold 2 { la'4-5 sol16-4 fas mi re | }
    fas,-2[ sol la8] sol fas |
    mi-1[ la-5 fas-3 re-1] |
    la''4-5[ sol16 fas mi re] |
    \break

    % 6
    la'4-5[ sol16 fas mi re] |
    fas,[ sol la8] sol fas |
    mi la re,4 \bar ":|:"
    % parte B
    dos'16-1[ re-2 mi8-3] dos16-1[ re-2 mi8-3] |
    la-5 mi-2 mi4-1 |
    la8-5 mi-1 la-5 mi-1 |
    \break

    % 12
    re16-3 dos si-1 la-2 si8-3 mi,-1 |
    \repeat unfold 2 {
      mi'-5[ res mi, re'-2(] |
      re)[ dos-1 la'-5 sols-4] |
    }
    mi16-3 res dos res mi res dos res |
    \break

    % 18
    mi8-3[ sols,-1 la-2 re-5] |
    dos16-3[ re-4 mi8-5] la,8-1 re,-3 |
    dos16-2 re-3 mi8-4 la,4-1 |
    % se repite parte A
    \repeat unfold 2 { la''4-5 sol16-4 fas mi re | }
    \break

    % 24
    fas,[ sol la8] sol fas |
    mi[ la fas re] |
    la''4[ sol16 fas mi re] |
    la'4[ sol16 fas mi re] |
    fas,[ sol la8] sol fas |
    mi la re,4 \bar ":|"
  }
}

leftHand = {
  \clef bass
  \key re \major
  \time 2/4
  \relative do {
    \bar "|:"
    % parte A
    \repeat unfold 2 { re,8 re' re, re' } |
    fas16-3[ sol la8] sol fas |
    mi-4[ la-1 fas-3 re-5] |
    re,8 re' re, re' |
    
    % 6
    re,8 re' re, re' |
    fas16[ sol la8] sol fas |
    mi[ la re4] \bar ":|:"
    % parte B
    \repeat unfold 3 { la,8 la' la, la' | }

    % 12
    la,8 la' mi, mi' |
    \repeat unfold 5 { mi,8 mi' mi, mi' | }

    % 18
    mi,8[ mi' la,-3 re-2] |
    mi4-1 la,8-5 re-1 |
    dos16-3[ re-2 mi8-1] la,4-5 |
    % parte A se repite
    \repeat unfold 2 { re,8 re' re, re' } |

    % 24
    fas16[ sol la8] sol fas |
    mi[ la fas re] |
    re,8 re' re, re' |
    re,8 re' re, re' |
    fas16[ sol la8] sol fas |
    mi[ la re4] \bar ":|:"

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


