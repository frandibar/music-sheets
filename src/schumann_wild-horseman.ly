\version "2.10.33"
\include "espanol.ly"
\header{
  title = "The Wild Horseman"
  subtitle = "from Album for the Young"
  composer = "Robert Schumann (1810-1856)"
  opus = "Op. 68 No. 8"
  piece = "Allegro con brio"
}

% tighten space; we want 2 pages. 
#(set-global-staff-size 18)
\paper {
  pagetopspace = #0.0
  indent = 0.0
  linewidth = 18.0\cm
  raggedlastbottom = ##f
}

rightHand = {
  \tempo 4. = 116
  \override Score.MetronomeMark #'padding = #3

  \clef treble
  \time 6/8
  \partial 8 
  \relative do' { 
    mi8-.-1 |
    % parte A'
    % parte A
    la8-.-2 mi-.-1 la-.-2 do-.-4 la-.-1 do-.-2 |
    mi-4( do-2) fa-.-5 mi-.-4 do-.-2 la-.-1 |
    si-4( sols-2) do-.-5 si-.-4 sols-.-2 mi-.-1 |
    % fin parte A
    la8-.-3 mi-.-1 do'-.-5 si-.-4 r mi,-.-1 |
    \break

    % 5
    % se repite parte A
    la8-.-2 mi-.-1 la-.-2 do-.-4 la-.-1 do-.-2 |
    mi-4( do-2) fa-.-5 mi-.-4 do-.-2 la-.-1 |
    si-4( sols-2) do-.-5 si-.-4 sols-.-2 mi-.-1 |
    % fin parte A
    la8-.-3 mi-.-1 sols-.-2 la-.-3 r \bar ":|" r |
    % fin parte A'
    % parte B
    <do,-1 fa-3 la-5>8-. r r <do fa la>-. r r |
    \break

    % 10
    <fa-1 la-3>4 <fa la>8-. <fa la>-. r r |
    <mi-1 sol-2 do-5>4 <mi sol do>8-. <mi sol do>-. r r |
    % fin parte B
    <fa-1 la-3 do-5>8-. la-.-3 fa-.-1 <mi-1 sol-2>-. r r|
    % se repite parte B
    <do-1 fa-3 la-5>8-. r r <do fa la>-. r r |
    <fa-1 la-3>4 <fa la>8-. <fa la>-. r r |
    \break

    % 15
    <mi-1 sol-2 do-5>4 <mi sol do>8-. <mi sol do>-. r r |
    % fin parte B
    <do-1 fa-3 la-5>8-. r <do-1 sol'-4>-. fa-.-3 r \bar "||" mi-. |
    % se repite parte A'
    % parte A
    la8-.-2 mi-.-1 la-.-2 do-.-4 la-.-1 do-.-2 |
    mi-4( do-2) fa-.-5 mi-.-4 do-.-2 la-.-1 |
    si-4( sols-2) do-.-5 si-.-4 sols-.-2 mi-.-1 |
    % fin parte A
    \break

    % 20
    la8-.-3 mi-.-1 do'-.-5 si-.-4 r mi,-.-1 |
    % se repite parte A
    la8-.-2 mi-.-1 la-.-2 do-.-4 la-.-1 do-.-2 |
    mi-4( do-2) fa-.-5 mi-.-4 do-.-2 la-.-1 |
    si-4( sols-2) do-.-5 si-.-4 sols-.-2 mi-.-1 |
    % fin parte A
    la8-.-3 mi-.-1 sols-.-2 la-.-3 r
    \bar "|."
  }
}


leftHand = {
  \partial 8
  \relative do' {
    \clef treble
    r8 |
    % parte A'
    % parte A
    <la-5 do-3>8-. r r <la-5 do-3 mi-1>-. r r |
    <la do mi>4 <la-5 re-2 fa-1>8-. <la do mi>-. r r |
    \clef bass 
    <mi-5 sols-3 si-1>4 <mi-5 la-2 do-1>8-. <mi-5 sols-3 si-1>-. r r |
    % fin parte A
    <la-2 do-1>8-. r <la do>-. <mi-5 sols-3 si-1> r r \clef treble |
    
    % 5
    % se repite parte A
    <la-5 do-3>8-. r r <la-5 do-3 mi-1>-. r r |
    <la do mi>4 <la-5 re-2 fa-1>8-. <la do mi>-. r r |
    \clef bass 
    <mi-5 sols-3 si-1>4 <mi-5 la-2 do-1>8-. <mi-5 sols-3 si-1>-. r r |
    % fin parte A
    <la-2 do-1>8-. r <mi-5 si'-1>-. <la-2 do-1>-. r \bar ":|" do,-.-5 |
    % fin parte A'
    % parte B
    fa-.-2 \< do-.-5 fa-.-2 la-.-1 fa-.-5 la-.-3 \! |

    % 10
    do-1( la-3) si-.-1 do-.-2 la-.-3 fa-.-5 |
    sol-2( mi-4) la-.-1 sol-.-2 mi-.-3 do-.-5 |
    % fin parte B
    fa-.-2 do-.-5 la'-.-1 <do,-5 sol'-1>-. r do-.-5 |
    % se repite parte B
    fa-.-2 \< do-.-5 fa-.-2 la-.-1 fa-.-5 la-.-3 \! |
    do-1( la-3) si-.-1 do-.-2 la-.-3 fa-.-5 |

    % 15
    sol-2( mi-4) la-.-1 sol-.-2 mi-.-3 do-.-5 |
    % fin parte B
    fa-.-2 do-.-5 mi-.-3 fa-.-2 r \bar "||" r |
    \clef treble
    % se repite parte A'
    % parte A
    <la-5 do-3>8-. r r <la-5 do-3 mi-1>-. r r |
    <la do mi>4 <la-5 re-2 fa-1>8-. <la do mi>-. r r |
    \clef bass 
    <mi-5 sols-3 si-1>4 <mi-5 la-2 do-1>8-. <mi-5 sols-3 si-1>-. r r |
    % fin parte A

    % 20
    <la-2 do-1>8-. r <la do>-. <mi-5 sols-3 si-1> r r \clef treble |
    % se repite parte A
    <la-5 do-3>8-. r r <la-5 do-3 mi-1>-. r r |
    <la do mi>4 <la-5 re-2 fa-1>8-. <la do mi>-. r r |
    \clef bass 
    <mi-5 sols-3 si-1>4 <mi-5 la-2 do-1>8-. <mi-5 sols-3 si-1>-. r r |
    % fin parte A
    <la-2 do-1>8-. r <mi-5 si'-1>-. <la-2 do-1>-. r |
    \bar "|."
  }
}

dynamics = {
    s8 \mf 
    s8 \< s8 s4 s8 s8 \! 
    s8 \sf s4 s4 s8
    s8 \sf s4 s4 s8
    s2 s4
    s8 \< s8 s4 s8 s8 \! 
    s8 \sf s4 s4 s8
    s8 \sf s4 s4 s8
    s4 s4 s8 s8 \f
    s2 s4
    s2 s4
    s2 s4
    s2 s4
    s2 s4
    s2 s4
    s2 s4
    s4 s4 s8 s8 \mf
    s8 \< s8 s4 s8 s8 \! 
    s8 \sf s4 s4 s8
    s8 \sf s4 s4 s8
    s2 s4
    s8 \< s8 s4 s8 s8 \! 
    s8 \sf s4 s4 s8
    s8 \sf s4 s4 s8
}

\score {
  \new PianoStaff 
  <<
    \new Staff = "upper" << \rightHand  >>
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \leftHand
  >>

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
        \override VerticalAlignment #'forced-distance = #7
    }
  }
  \midi {}
}


