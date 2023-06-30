\version "2.12.2"
\include "espanol.ly"
\include "definitions.ly"
\header{
  title = "Pequeño Estudio"
  subtitle = "del Album para la Juventud"
  composer = "Robert Schumann (1810-1856)"
  opus = "Op. 68"
}

#(set-default-paper-size "a4")

% tighten space; we want 2 pages. 
#(set-global-staff-size 18)
\paper {
  pagetopspace = #0
  linewidth = 18.0\cm
  raggedlastbottom = ##f
}

keyAndTime = {
  \key sol \major
  \time 6/8
}

righthand = {
  \override Score.MetronomeMark #'padding = #5
  \tempo "Leggero e con molta uguaglianza" 2. = 88
  \clef treble
  \keyAndTime
  \relative do'' { 
    \slurUp
    \override Slur #'eccentricity = #3.0
    \mark \markup { "A" }
    s8*6 | s8*6 | s8*6 | s8*6 | s8 \< s8*4 s8 \! | 
    \stemDown si,8-5( res-3 sol-1 \stemUp res'-4 si sol) |
    \break

    % 7
    \stemDown do,-5( mi-3 sol-1 \stemUp mi'-5 do-3 sol-1) |
    \stemDown si,-3 \> do-2( mi-1 \stemUp do'-5 sol-2 mi-1) \! \stemNeutral |
    s8*6 | s8*6 | s8*6 | s8*6 | s8*6 |
    \break

    % 14
    s8*6 | s8*6 | s8 _\markup { \italic "lusingando" } s8*5 | \mark \markup { \hspace #2 "A'" } s8 _\markup { \italic "a tempo" } s8*5 | s8*6 | s8*6 | s8*6 |
    \break

    % 21
    s8 \< s8*4 s8 \! |
    \stemDown si-5( res sol \stemUp res'-4 si sol) |
    \stemDown do,-5( mi sol \stemUp mi'-5 do sol) |
    \stemDown si,-3( \> do mi \stemUp do' sol mi) \! \stemNeutral |
    s8*6 | s8*6 |
    \break

    % 27
    s8*6 | s8*6 | s8*6 | s8*6 | s8*4 s8_\markup { \italic "dim." } s8 | s8*6 |
    \pageBreak

    % 33
    \mark \markup { "B" }
    \bar "|:"
    s8 \p s8*5 | s8*6 | s8*6 | s8*6 | s8*6 | s8*6 |
    \break

    % 39
    s8*6 |
    s8 \< s8*4 s8 \! |
    \stemDown do8-5( mi-3 sol-1 \stemUp mi'-5 do-3 sol-1 ) |
    \stemDown do,-4( \> mib-2 fas-1 \stemUp sol-5 fas-3 mib-1 \! ) |
    \stemDown si-5( re-3 sol-1 \stemUp re'-5 si-3 sol-1 ) \stemNeutral |
    \break

    % 44
    \stemDown sib,-3( \> dos mi \stemUp sol-5 mi-3 dos-1 \! ) \stemNeutral |
    s8*6 | s8*6 | s8*6 |
    << { sol'4.-4(_\markup { \hspace #0 \raise #-3.5 \italic "lusingando" } la4.-5) | } \\ { sol8 re do la' re, do | } >> \\
    \break

    % 49
    \mark \markup { \hspace #10 "A con coda" }
    s8 _\markup { \italic "a tempo" } s8*5 |
    s8*6 |
    s8*6 |
    s8*6 |
    s8 \< s8*4 s8 \! |
    \stemDown si-5( res-3 sol-1 \stemUp res'-4 si sol) |
    \break

    % 55
    \stemDown do,-5( mi-3 sol-1 \stemUp mi'-5 do-3 sol-1) |
    s8*6 | s8*6 | s8*6 | s8*6 |
    \break

    % 60
    s8*6 | s8*6 | s8*6 | s8*6 | R8*6 \bar ":|"
  }
}

staffRH = \change Staff = "RH" 
staffLH = \change Staff = "LH" 

lefthand = {
  \clef bass
  \keyAndTime
  \relative do' {
    \slurUp
    \set Staff.pedalSustainStyle = #'bracket
    \override Slur #'eccentricity = #3.0
    sol8-5( \sustainOn si-3 re-1 \staffRH si'-5 sol-3 re-1) |
    \staffLH sol,8( \sustainOff \sustainOn do mi \staffRH do'-5 sol-2 mi-1) |
    \staffLH sol,8-5( \sustainOff \sustainOn do-2 fas-1 \staffRH mi'-5 do-3 la-1)|
    \staffLH sol,8-5( \sustainOff \sustainOn si-3 sol'-1 \staffRH re'-4 si-2 sol-1) |
    \shapeSlur #'(0 3 0 0 0 0 0 0)
    \staffLH sol,-5( \sustainOff _\markup { \hspace #1 \italic simile }  si-3 sol'-1 \staffRH \stemUp sol'-5 re-2 si-1) \stemNeutral | % changed stem direction to avoid collision with dynamic
    \staffLH s8*6 |
    \break

    % 7
    s8 s8*5 | 
    s8 s8*5 |
    la,8-4( do-2 mi-1 \staffRH la-5 mi-2 do-1) |
    \staffLH sol-5( do-2 mi-1 \staffRH la-5 mi-2 do-1) |
    \staffLH fas,-5( la-3 re-1 \staffRH do'-5 la-3 re,-1) |
    \staffLH sols,-4( si-2 re-1 \staffRH si'-5 fa-2 re-1) |
    \staffLH la-4( do-2 mi-1 \staffRH la-5 mi-2 do-1) |
    \break

    % 14
    \staffLH do,-5( sol'-2 la-1 \staffRH mi'-5 la,-3 sol-1) |
    \staffLH re-5( fas-3 la-1 \staffRH la'-5 re,-2 do-1) |
    \staffLH re,-5( fas-3 las-1 \staffRH re-1 fas-2 las-4) |
    \staffLH sol,8-5( si re \staffRH si'-5 sol-2 re-1) |
    \staffLH sol,( do mi \staffRH do'-5 sol mi) |
    \staffLH sol,( do-2 fas \staffRH \stemUp mi'-5 do la) \stemNeutral |
    \staffLH sol,( si-3 sol' \staffRH \stemUp re'-4 si sol) \stemNeutral |
    \break

    % 21
    \shapeSlur #'(0 4 0 0 0 0 0 0)
    \staffLH sol,( si sol' \staffRH \stemUp sol'-5 re si) \stemNeutral |   % TODO fix pedal
    \staffLH s8*6 | 
    s8*6 | 
    s8*6 | 
    \staffLH la,8-4( do mi \staffRH la mi do) |
    \staffLH sol( do mi \staffRH la mi do) |
    \break

    % 27
    \staffLH fas,-5( la re \staffRH do' la re,) |
    \staffLH sols,-4( si re \staffRH si' fa re) |
    \staffLH la-4( do mi \staffRH sol mi do) |
    \staffLH do,( sol' la \staffRH mi' la, sol) |
    \staffLH re( sol la \staffRH la' re, do) |
    \staffLH re,( fas la \staffRH la' re, do) |
    \pageBreak

    % 33
    \bar "|:"
    \staffLH \stemUp re,8( fas-3 do' \stemNeutral \staffRH la'-5 re,-2 do-1 ) |   % changed stem direction to avoid collision with dynamic
    \staffLH re,( mi-4 do'-1 \staffRH sol'-5 re-2 do-1 ) |
    \staffLH re,( la'-2 do \staffRH fas-4 re-2 do-1 ) |
    \staffLH re,( sol-2 do \staffRH mi-5 do-3 sol-1 ) |
    \staffLH re( fas-3 do' \staffRH do'-5 re,-1 do-2 ) |
    \staffLH re,( mis-3 si' \staffRH sols'-5 re-2 si-1 ) |
    \break

    % 39
    \shapeSlur #'(0 2 0 0 0 0 0 0)
    \staffLH re,-5( fas-3 do'-1 \staffRH la'-5 re,-2 do-1 ) |
    \shapeSlur #'(0 6 0 0 0 0 0 0)
    \staffLH re,-5( fa-3 si-1 \staffRH si'-4 sol fa ) |
    \staffLH s8 s8*5 |
    s8 s8*5 |
    s8 s8*5 |
    \break

    % 44
    s8*6 |
    \staffLH la,8-4( do-2 re-1 \staffRH fas-4 re do ) |
    \staffLH sol-5( do-2 re-1 \staffRH sol-5 re-2 do-1 ) |
    \staffLH fas,-5( do'-2 re-1 \staffRH la'-5 re,-2 do-1 ) |
    \staffLH mi,4.-3( fas4.-2) |
    \break

    % 49
    \shapeSlur #'(0 1 0 0 0 0 0 0)
    sol8-5( si-3 re-1 \staffRH si'-5 sol-3 re-1) |
    \staffLH sol,( do mi \staffRH do'-5 sol-2 mi-1) |
    \shapeSlur #'(0 2 0 0 0 0 0 0)
    \staffLH sol,-5( do-2 fas-1 \staffRH mi'-5 do-3 la-1)|
    \staffLH sol,-5( si-3 sol'-1 \staffRH re'-4 si-2 sol-1) |
    \shapeSlur #'(0 2 0 0 0 0 0 0)
    \staffLH sol,-5( si-3 sol'-1 \staffRH \stemUp sol'-5 re-2 si-1) \stemNeutral |
    \staffLH s8 s8*5 |

    % 55
    s8 s8*5 |
    \staffLH si,8-4( re-2 mi \staffRH si'-5 sols-3 re-1 ) |
    \staffLH la-5( do-3 mi \staffRH do'-5 la-3 mi-1 ) |
    \staffLH si-4( re-2 mi-1 \staffRH sols-4 mi-2 re-1 ) |
    \staffLH do,-5( mi-3 la-1 \staffRH la'-5 mi-2 do-1 ) |
    \break

    % 60
    \staffLH dos,-5( sol'-2 la-1 \staffRH mi'-5 la,-2 sol-1 ) |
    \staffLH re-5( sol-2 la-1 \staffRH la'-5 re,-2 do-1 ) |
    \staffLH re,-5( fas-3 do' \staffRH si'-5 re,-2 do-1 ) |
    \shapeSlur #'(0 0 5 5 5 5 0 0)
    \override Slur #'eccentricity = #0
    \staffLH sol-5( si re \staffRH sol-5 re-2 si-1 |
    \staffLH sol,8-5) r r r4 r8 \bar ":|"
  }
}


\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"14."
    \new Staff = "RH" \righthand
    \new Staff = "LH" \lefthand
  >>
  \layout { }
  \midi { }
}

