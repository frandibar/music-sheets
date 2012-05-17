\version "2.10.33"

\include "espanol.ly"

\header{
  title = "Preludio en La Mayor"
  composer = "Fryderyk Chopin (1810-1849)"
  opus = "Op. 28, No. 7"
  piece = "Andantino"
}

% TODO agregar dolce

\paper {
  pagetopspace = #0.0
  indent = 0.5
  linewidth = 18.0\cm
  raggedlastbottom = ##fa
  paperheight = 21.0\cm
}

dolce = \markup { dolce }

rightHand = {
  % move fingering to the right
  \set fingeringOrientations = #'(right)
  \override Fingering #'extra-offset = #'(0.4 . 0)   

  \clef treble
  \key la \major
  \time 3/4
  \partial 4 
  \relative mi' { 
    mi4(
    dos'8.-4 re16-5 <mi,-1 sols-2 si-4>4 <mi sols si>
    <mi sols si>2) <re'-1 fas-4>4(
    <sis-1 res-2>8. <dos-1 mi-3>16 <dos-1 la'-5>4 <dos la'>
    <dos la'>2) <mi,-1 dos'-5>4(

    % compass 5-6
    << 
      { <dos-1 las'-4>8. \tieDown <re~-1 si'-4>16 \stemDown re2~ | re) \stemNeutral \tieNeutral }
      \new Voice { 
        { s4 <fas-2 re'>4 <fas re'> | <fas re'>2 }
      }
    >>
    <re-1 sols-2>4(
    % compass 7
    <re sols>8. <dos-1 la'-3>16 <mi-1 dos'-5>4 <mi dos'>
    % compass 8
    <mi dos'>2) mi4-1~ \(

    % compass 9
    <<
      { dos'8.-4 re16 s2 }
      { <mi, sols>4 <mi-1 sols-2 si-4> <mi sols si> }
    >>
    % compass 10
    <mi sols si>2\) <re'-1 fas-4>4(
    % compass 11
    <<
      { <sis res-1>8.) <dos-1 mi-2>16~ <dos mi>2 }
      { s4 <la'-4 dos-5> <la-4 dos-5> }
    >>
    % compass 12
    <las,-1 dos-2 mi-3 las dos>2 \arpeggio <las-1 dos-2>4(
    
    % compass 13
    <las-1 dos-2>8. <si re-3>16 <si-1 fas'-5>4 <la fas'>
    % compass 14
    <sols-1 fas'>2) <re-1 sols-3>4\(
    % compass 15-16
    <<
      { <re-1 si'-5>8. <dos-1 la'-4>16 <dos'-2 la'-5>4 <dos la'> | <dos la'>2\) }
      \new Voice { 
        \voiceTwo
        { s4 \acciaccatura la8 la2-1~ | la2 }
      }
    >> 
    r4
    \bar "|."
  }
}



leftHand = {
  % move fingering to the right
  \set fingeringOrientations = #'(right)
  \override Fingering #'extra-offset = #'(0.4 . 0)   

  \clef bass
  \key la \major
  \time 3/4
  \partial 4 
  \relative mi, {
    r4
    mi <mi' re'> <mi re'>
    <mi re'>2 r4
    la, <la'-1 mi-5> <la mi> 
    <la mi>2 r4
    \break

    % compass 5
    mi, <mi' si'> <mi si'>
    <mi si'>2 r4
    la,, <mi'' la dos> <mi la dos>
    <mi la dos>2 r4
    \break

    % compass 9
    mi, <mi' re'> <mi re'>
    <mi re'>2 r4
    la, <la'-5 mi'-2 la-1> <la mi' la> 
    <fas-5 dos'-2 mi-1 fas-2>2 \arpeggio r4
    \break

    % compass 13
    si,, <fas''-5 re'-1> <fas-5 si-2 re-1>
    <mi-5 si'-2 re-1>2 r4
    la,, <mi''-5 la-2 mi'-1> <mi la mi'>
    <la mi'>2 r4
    \bar "|."
  }
}

pedal = {
  \partial 4 

  s4 \sustainDown 
  s4 \sustainUp \sustainDown s4 \sustainUp \sustainDown s4
  s2 s4 \sustainUp \sustainDown
  s4 \sustainUp \sustainDown s4 \sustainUp \sustainDown s4
  s2 s4 \sustainUp \sustainDown

  % compass 5
  s4 s4 \sustainUp \sustainDown s4
  s2 \sustainUp \sustainDown s4 \sustainUp \sustainDown
  s4 \sustainUp \sustainDown s4 \sustainUp \sustainDown s4
  s2 \sustainUp \sustainDown s4 \sustainUp \sustainDown

  % compass 9
  s4 s4 \sustainUp \sustainDown s4
  s2 s4 \sustainUp \sustainDown
  s4 \sustainUp \sustainDown s4 \sustainUp \sustainDown s4
  s2 s4 \sustainUp \sustainDown

  % compass 13
  s4 \sustainUp \sustainDown s4 \sustainUp \sustainDown s4
  s2 \sustainUp \sustainDown s4 \sustainUp \sustainDown
  s4 \sustainUp \sustainDown s4 \sustainUp \sustainDown s4
  s2 s4
}

dynamics = {
  s4 \p s4
  \< s4 \! \> s4 \! 
  s2 s4 \mp s
  \< s4 \! \> s4 \! 
  s2 s4

  % compass 5
  s4 \p
  \< s4 \! \> s4 \! 
  s2 s4 \pp s4
  s2 s4
  s2 \p s4

  % compass 9
  s2 s4
  s2 \mp s4
  \< s4 s2 s4 \!
  s2 \mp s4

  % compass 13
  s2 s4
  s2 \p s4
  s2 s4
  \pp

%   s8 \< s8 s4 s8 s8 \! 
}

\score {
  \new PianoStaff {
    \set PianoStaff.midiInstrument = "acoustic grand"
    <<
      \new Staff = "Right Hand" { \rightHand }
      \new Dynamics = "dynamics" { \dynamics }
      \new Staff = "Left Hand" { \leftHand
%       \override Staff.DynamicLineSpanner #'staff-padding = #3  % (forced-distance - 6) / 2
%       \override Staff.DynamicLineSpanner #'direction = #1      % 1 up, -1 down
      }
      \new Dynamics = "pedal" {
        \set Dynamics.pedalSustainStyle = #'bracket
        \pedal
      }
    >>
  }

  \layout {
    % set dynamics between staffs
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
        \override VerticalAlignment #'forced-distance = #8

%     \Score
        \override SeparationItem #'padding = #0.9
        \remove "Bar_number_engraver"
    }
  }
  \midi {}
}


