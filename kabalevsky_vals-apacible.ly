\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Vals Apacible"
  composer = "Dmitri Kabalesky (1904-1987)"
  piece = "Andantino"
}

%% tighten space; we want 2 pages. 
#(set-global-staff-size 17)
\paper {
  pagetopspace = #0.0
  indent = 0.0
  linewidth = 18.0\cm
  raggedlastbottom = ##f
}

% define the left and the right hand in new variables
rightHand = {
  \once \override Score.MetronomeMark #'transparent = ##t
  \tempo 4 = 96
  \time 3/4
  \clef treble
  \partial 4
  \relative do'' {
    \set fingeringOrientations = #'(right)
    % parte A
    do8-3( \p si |
    la2--) <mi'-1 do'-5>4-. |
    <do-1 la'-5>2-- do8-3( si |
    la4--) <mi' do'>4-. <re si'>-. |
    <do la'>2-- re8-4 do |
    sib2-2-- <fa' re'>4-. |
    sib,2-2-- <fa' re'>4-. |
    \break

    % 7
    r <la,-1 fas'-5>-. <si-1 sols'-4>-. |
    <do-1 la'-5>2-- 
    % parte B
    la8-1(^\markup { \hspace #0 \raise #0.1 \teeny \bold "un poco più mosso" } sib-2 \f |
    la2-1 re4-4 |
    la2-1) la8-1( sib-2 |
    la2-1 mi'4-5 |
    la,2-1) la8-2( sib-3 |
    la4-2 sol-1 sib-2 |
    \break

    % 14
    re2-4 mi4-5 |
    la,2-1 mi'4-5 |
    la,2-1) re8-1(_\markup { \teeny \italic "poco crescendo" } mi-2 |
    sol2-4 fa4-3 |
    mi2-2 re4-1 |
    la'2-5 fa4-3 |
    re-1 mi-2 fa-3 |
    \break

    % 21
    sol2-5 mi4-4 |
    \override TextSpanner #'edge-text = #(cons (markup #:bold "rit." ) "")
    do2-2 \startTextSpan sol4-1 \> |
    sib2-4 la4-1 |
    sols2-2) \!
    % parte A
    do8( \stopTextSpan \p si^\markup { \teeny \bold "Tempo I" } |
    la2--) <mi' do'>4-. |
    <do la'>2-- do8( si |
    la4--) <mi' do'>4-. <re si'>-. |
    \break

    % 28
    <do la'>2-- re8 do |
    sib2-- <fa' re'>4-. |
    sib,2-- <fa' re'>4-. |
    r <la, fas'>-. <si sols'>-. |
    <do la'>2-- 
    % coda
    do8( si |
    la2--) do8( si |
    la2--) do8 si |
    \break

    % 35
    la4-- \< la-- la-- \! |
    la2-- \mf do8( si |
    la4-.-1) sols-.-2 la-.-1 \> |
    si-.-2 do-.-1 re-.-2 |
    mi-.-3 <la,-1 fas'-5>-. <si-1 sols'-5>-. |
    <do-1 la'-5>2-- \! \pp r4


    \bar "|."
  }
}

leftHand = {
  \clef bass
  \partial 4
  \relative do {
    \set fingeringOrientations = #'(right)
    % parte A
    r4 |
    la-5-. <la'-5 do-3 mi-1>-. mi,-5 |
    la-2 <la'-5 do-3 mi-1> r |
    la,-5-. <la' do mi>-. mi,-5 |
    la-2 <la' do mi> r |
    re,,-5-. <fa'-5 sib-2 re-1>-. r |
    re,-5-. <fa'-5 sib-2 re-1>-. r |

    % 7
    mi,4-.-5 <mi' si'-2 re-1>-. mi,-.-1 |
    la,-.-5 <la''-5 do-3 mi-1> 
    % parte B
    r |
    <re-2 fa-1>-. <re fa>-. r |
    <re fa>-. <re fa>-. r |
    <do-3 mi-1>-. <do mi>-. r |
    <do mi>-. <do mi>-. r |
    <sib-2 re-1>-. <sib re>-. r |

    % 14
    <sib re>-. <sib re>-. r |
    <la-3 do-1>-. <la do>-. r |
    <la do>-. <la do>-. r |
    <sol-2 sib-1>-. <sol sib>-. r |
    <sol sib>-. <sol sib>-. r |
    <fa-3 la-1>-. <fa la>-. r |
    <fa la>-. <fa la>-. r |

    % 21
    <mi-2 sol-1>-. <mi sol>-. r |
    <mi sol>-. <mi sol>-. r |
    <re-3 fa-1>-. <re fa>-. r |
    mi-.-2 mi-.
    % parte A
    r4 |
    la,-5-. <la'-5 do-3 mi-1>-. mi,-5 |
    la-2 <la'-5 do-3 mi-1> r |
    la,-5-. <la' do mi>-. mi,-5 |
    
    % 28
    la-2 <la' do mi> r |
    re,,-5-. <fa'-5 sib-2 re-1>-. r |
    re,-5-. <fa'-5 sib-2 re-1>-. r |
    mi,4-.-5 <mi' si'-2 re-1>-. mi,-.-1 |
    la,-.-5 <la''-5 do-3 mi-1> 
    % coda
    r |
    r <la-5 do-3 fa-1>-- r |
    r <la-5 re-2 fas-1>-- r |

    % 35
    <la-5 do-3 fa-1>-- <la do fa>-- <la do fa>-- |
    <la-5 re-2 fas-1>2-- r4 |
    r2 r4 |
    r2 r4 |
    mi,4-.-5 <mi' si' re>-. mi,-.-1 |
    la,2-5-- r4
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


