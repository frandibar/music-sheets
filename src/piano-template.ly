\version "2.10.33"
\include "espanol.ly"
\header{
  title = ""
  subtitle = ""
  composer = ""
  piece = ""
}

rightHand = {
  \clef treble
    \key do \major
    \time 4/4
    \relative do' {
      do4 re mi
    }
}

leftHand = {
  \clef bass
    \key do \major
    \time 4/4
    \relative do {
      do4 re mi
    }
}

dynamics = {
  s2\fff\> s4
    s\!\pp
}

pedal = {
  s2\sustainDown s2\sustainUp
}

\score {
  \new PianoStaff <<
    \new Staff = "Right Hand" \rightHand
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "Left Hand" <<
    \clef bass
    \leftHand
    >>
    \new Dynamics = "pedal" \pedal
    >>
    \layout {
      \context {
        \type "Engraver_group"
          \name Dynamics
          \alias Voice % So that \cresc works, for example.
          \consists "Output_property_engraver"

          \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
          pedalSustainStrings = #'("Ped." "*Ped." "*")
          pedalUnaCordaStrings = #'("una corda" "" "tre corde")

          \consists "Piano_pedal_engraver"
          \consists "Script_engraver"
          \consists "Dynamic_engraver"
          \consists "Text_engraver"

          \override TextScript #'font-size = #2
          \override TextScript #'font-shape = #'italic
          \override DynamicText #'extra-offset = #'(0 . 2.5)
          \override Hairpin #'extra-offset = #'(0 . 2.5)

          \consists "Skip_event_swallow_translator"

          \consists "Axis_group_engraver"
      }
      \context {
        \PianoStaff
          \accepts Dynamics
          \override VerticalAlignment #'forced-distance = #7
      }
    }
}
\score {
  \new PianoStaff <<
    \new Staff = "upper" << \upper \dynamics >>
    \new Staff = "lower" << \lower \dynamics >>
    \new Dynamics = "pedal" \pedal
    >>
    \midi {
      \context {
        \type "Performer_group"
          \name Dynamics
          \consists "Piano_pedal_performer"
      }
      \context {
        \PianoStaff
          \accepts Dynamics
      }
    }
}

