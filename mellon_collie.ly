\version "2.12.3"
\include "espanol.ly"
\header{
  title = "Mellon Collie and the Infinite Sadness"
  subtitle = "by Billy Corgan"
  composer = "Smashing Pumpkins"
  piece = ""
}

rightHand = {
  \clef treble
    \key reb \major
    \time 4/4
    \relative do' {
      \bar "|:" <reb fa lab>4 r8. <reb fa lab>16 <reb fa lab>4 lab'16 solb fa8 |
      solb8. fa8. mib8 reb4 sib \bar ":|" |
      solb'8. fa8. mib8 reb4 sib | \break

      reb4 r8. reb16 mib4 fa4 |
      <solb sib>8. <fa lab>8. <mib solb>8 <reb fa>4 <sib reb>4 |
      <lab dob>4 r8. lab16 mib'8 reb8. dob8. | \break 
    }
}

leftHand = {
  \clef bass
    \key reb \major
    \time 4/4
    \relative do {
      \bar "|:" <reb fa lab>4 reb16( fa( lab8( <reb, fa lab>2) |
      <mib solb sib>2 <solb, reb' solb> \bar ":|" |
      <dob mib solb>2 <solb reb' solb> | \break

      <reb' fa lab>4 reb16( fa( lab8( <reb, fa lab>2) |
      <lab reb lab'>2 <solb reb' solb> |
      <fab dob' fab>4 fab16( dob'( solb'8( <fab, dob' solb'>2) | \break


    }
}

\score {
  \context PianoStaff <<
    \context Staff = "Right hand" \rightHand
    \context Staff = "Left hand" \leftHand
  >>
  \layout {}
  \midi {
    \context {
      \Score
    }
  }
}

