\version "2.10.33"
\header{
  title = "The Wild Horseman"
  subtitle = "from Album for the Young"
  composer = "Robert Schumann (1810-1856)"
  opus = "Op. 68 No. 8"
  piece = "Allegro con brio"
}

% TODO setear 5 compases por linea
% TODO ajustar superposicion entre el time beat y los fingerings

\paper {
  pagetopspace = #0.0
  indent = 0.5
  linewidth = 18.0\cm
  raggedlastbottom = ##f
}

rightHandCellA = {
  % compass 1 to 3
  \relative c'' {
    a8-.-2 e-.-1 a-.-2 c-.-4 a-.-1 c-.-2
    e-4( c-2) f-.-5 e-.-4 c-.-2 a-.-1
    b-4( gis-2) c-.-5 b-.-4 gis-.-2 e-.-1
  }
}

rightHandCellB = {
  % compas 9 to 11
  \relative c'' {
    <c,-1 f-3 a-5>8-. r r <c f a>-. r r 
    <f-1 a-3>4 <f a>8-. <f a>-. r r
    <e-1 g-2 c-5>4 <e g c>8-. <e g c>-. r r
  }
}

rightHandCellC = {
  % compas 1 to 8
  \relative c'' { 
    { \rightHandCellA }
    a8-.-3 e-.-1 c'-.-5 b-.-4 r e,-.-1 
    { \rightHandCellA }
    a8-.-3 e-.-1 gis-.-2 a-.-3 r 
  }
}

rightHand = {
  \tempo 4 = 138
  \override Score.MetronomeMark #'padding = #3

  \clef treble
  \time 6/8
  \partial 8 
  \relative c' { 
    e8-.-1
    { \rightHandCellC }
    \bar ":|" r 

    % compass 9
    { \rightHandCellB }
    <f-1 a-3 c-5>8-. a-.-3 f-.-1 <e-1 g-2>-. r r
    { \rightHandCellB }
    <c-1 f-3 a-5>8-. r <c-1 g'-4>-. f-.-3 r \bar "||" e-.

    % compass 17
    { \rightHandCellC }
    \bar "|."
%    }
%>>
  }
}


leftHandCellA = {
  % compass 1 to 3
  \relative c' {
    <a-5 c-3>8-. r r <a-5 c-3 e-1>-. r r
    <a c e>4 <a-5 d-2 f-1>8-. <a c e>-. r r
    \clef bass 
    <e-5 gis-3 b-1>4 <e-5 a-2 c-1>8-. <e-5 gis-3 b-1>-. r r 
  }
}

leftHandCellB = {
  % compas 9 to 11
  \relative c {
    f-.-2 c-.-5 f-.-2 a-.-1 f-.-5 a-.-3
    c-1( a-3) b-.-1 c-.-2 a-.-3 f-.-5
    g-2( e-4) a-.-1 g-.-2 e-.-3 c-.-5
  }
}

leftHandCellC = {
  % compas 1 to 8
  \relative c' { 
    { \leftHandCellA }
    <a-2 c-1>8-. r <a c>-. <e-5 gis-3 b-1> r r \clef treble

    % compass 5
    { \leftHandCellA }
    <a-2 c-1>8-. r <e-5 b'-1>-. <a-2 c-1>-. r 
  }
}

leftHand = {
  \relative c' {
    \clef treble
    r8
    { \leftHandCellC }
    \bar ":|" c,-.-5
    
    % compass 9
    { \leftHandCellB }
    f-.-2 c-.-5 a'-.-1 <c,-5 g'-1>-. r c-.-5
    { \leftHandCellB }
    f-.-2 c-.-5 e-.-3 f-.-2 r \bar "||" r

    % compass 17
    \clef treble
    { \leftHandCellC }
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


