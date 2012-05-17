\version "2.10.33"

\include "espanol.ly"

\header{
  title = "Preludio en Mi Menor"
  composer = "Fryderyk Chopin (1810-1849)"
  opus = "Op. 28, No. 4"
  piece = "Largo"
}

% TODO quitar superposicion del tresillo en el compas 12 y 18
% TODO agregar adorno en compas 17
% TODO agregar pedal
% TODO cambios de chordmode

\paper {
  pagetopspace = #0.0
  indent = 0.5
  linewidth = 18.0\cm
  raggedlastbottom = ##fa
  paperheight = 21.0\cm
}

rightHand = {
  % move fingering to the right
  \set fingeringOrientations = #'(right)
  \override Fingering #'extra-offset = #'(0.4 . 0)   

  \clef treble
  \key mi \minor
  \time 2/2
  \partial 4 
  \relative do' { 
    si8. \( si'16
    si2.-2 do4-3
    si2.-2 do4-3
    \break

    % 3
    si2.-2 do4-3
    si2.-1 sib4-2
    la2.-1 si4-2
    \break
    
    % 6
    la2.-1 si4-2
    la2.-1 si8.-2 la16-2
    la2.-1 \) sols4-2~ \(
    \break

    % 10
    sols4 la8-1 si-3 re-5 do-4 mi,-1 la-4
    fas2.-2 \) la4-4~
    fas2.-2 \acciaccatura si8~-5 la4-4
    \pageBreak

    % 13
    sol8-3( fas-2 r4 res8-1 fas-2 \times 2/3 { re'-5 do-4 si-3 }
    si2.-2) \( do4-3
    si2.-2 do4-3
    \break

    % 16
    si2.-2 do4-3
    si8.-1 sols16-2 sols4-2 sol'-5 fas8.-4 mi16-3
    \break

    % 18
    mi8-2 res-1 do'-5 res,-1 res-2 mi-3 sol-5 si,-1
    re-4 do-3 \times 2/3 { mi-5 mi,-1 la-4 } fas4.-2 la8-4
    fas2.-2 \) \acciaccatura si8-5~ la4-4
    \break

    % 21
    fas2.-2~ \( fa8. mi16-1
    mi2.-2 fas4-3
    mi2.-2 fas4-3
    \break

    % 24
    mi2-2 \) r \fermata
    <fas,-1 si-3 mi-5> <fas si res>
    <sol si mi>2 \fermata
    \bar "|."
  }
}



leftHand = {
  % move fingering to the right
  \set fingeringOrientations = #'(right)
  \override Fingering #'extra-offset = #'(0.4 . 0)   

  \clef bass
  \key mi \minor
  \time 2/2
  \partial 4 
  \relative do' {
    r4
    <sol-5 si-3 mi-1>8 \( \repeat unfold 7 { \chordmode { sol,:6^5 } } % acorde de sol con 6ta y sin 5ta
%   \repeat unfold 4 { \chordmode { <fas, } } \repeat unfold 4 { \chordmode { fas, } }
    \repeat unfold 4 { <fas la mi'> } \repeat unfold 4 { <fas la mib'> }

    % 3
    \repeat unfold 4 { <fa la mib'> } <fa la re> <fa la re> <fa sols re'> <fa sols re'>
    \repeat unfold 4 { <mi sols re'> } <mi sol re'> <mi sol re'> <mi sol dos> <mi sol dos>
    \repeat unfold 4 { <mi sol do> } \repeat unfold 4 { <mi fas do'> }

    % 6
    \repeat unfold 4 { <mi fas do'> } \repeat unfold 4 { <res fa do'> }
    \repeat unfold 8 { <re fas do'> }
    \repeat unfold 4 { <re fa do'> } \repeat unfold 4 { <re fa si> }

    %9
    <do mi si'> <do mi si'> \repeat unfold 6 { <do mi la> }
    <si mi la> <si mi la> <si res la'> <si res la'> \repeat unfold 4 { <do mi la> }
    \repeat unfold 4 { <si res la'> } \repeat unfold 4 { <do mi la> }

    %12
    <si res la'>4 \) do8-1 si-2 r2
    <sol'-5 si-3 mi-1>8 \( \repeat unfold 7 { <sol si mi> }
    \repeat unfold 4 { <fas la mi'> } \repeat unfold 4 { <fa la mib'> }

    % 15
    <fa lab mib'> <fa lab mib'> <fa lab re> <fa lab re> \repeat unfold 4 { <mi sols re'> }
    <mi sol re'> <mi sol re'> <mi sol res'> <mi sol res'> <dos mi las> <dos mi las> <do mi la> <do mi la>

    % 17
    <si, si'> \repeat unfold 3 { <la'' do fa la> } <sol si res fa> \repeat unfold 3 { <sol si mi> }
    <la do mi> <la do mi> la, <mi' fas do'> <si mi si'> <si mi si'> <do mi la> <do mi la>
    \repeat unfold 4 { <si mi si'> } \repeat unfold 4 { <do mi la> }

    % 20
    \repeat unfold 4 { <si mi si'> } <si res si'> <si res si'> <si res la'> <si res la'>
    \repeat unfold 4 { <do la'> } <do sib'> <do sib'> <do mi la> <do mi la>
    <si do la'> <si do la'> <si do sols> <si do sols> \repeat unfold 4 { <si do sol> }

    % 23
    <sib do sol>2 \) r \fermata
    <si, si'>( <si fa si'>
    <mi, mi'> _\fermata)
  }
}

pedal = {
  \partial 4 

  s4 \sustainDown 
  s4 \sustainUp \sustainDown 
  s2 s4 \sustainUp \sustainDown 
  s2 \sustainUp \sustainDown 
  s1 \sustainUp \sustainDown 
  

  % 3

  % 6

  % 9
}

dynamics = {
  s4 \p s2
  s1
  s
  s
  s
  s
  s
  s
  s
  \> s8
  \< s4 \! \> s4 \! 


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


