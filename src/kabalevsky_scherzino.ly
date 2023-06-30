\version "2.10.33"
\include "espanol.ly"
\header{
  title = "Scherzino"
  composer = "Dmitri Kabalesky (1904-1987)"
  piece = "Vivo"
}

% define the left and the right hand in new variables
rightHand = {
  \time 2/4
  \clef treble
  \relative do'' {
    % parte A
    do8-1([ \mf mi-3) sol-5 \staccato fa-4] \staccato |
    mi[ \staccato sol \staccato fa \staccato mi] \staccato |
    re([ fa) mi \staccato re] \staccato |
    % fin parte A
    do[ \staccato mi \staccato re \staccato fa] \staccato |
    % parte A
    do8([ mi) sol \staccato fa] \staccato |
    mi[ \staccato sol \staccato fa \staccato mi] \staccato |
    re([ fa) mi \staccato re] \staccato |
    % fin parte A
    do4[ \portato mi] \portato |
    \break

    % 9
    si8-1([ re-3) fa-5 \staccato re-4] \staccato |
    si([ re) fa \staccato re] \staccato |
    la([ do) mi \staccato do] \staccato |
    la([ do) mi \staccato do] \staccato |
    sol([ si) re \staccato si] \staccato |
    sol([ si) re \staccato si] \staccato |
    do4-4[ \portato do] \portato |
    do2 \portato 
    \bar "|."
  }
}

leftHand = {
  \clef treble
  \relative do' {
    % parte A
    mi8-1([ \mf sol-3) si-5 \staccato la-4] \staccato |
    sol[ \staccato si \staccato la \staccato sol] \staccato |
    fa([ la) sol \staccato fa] \staccato |
    % fin parte A
    mi[ \staccato sol \staccato fa \staccato sol] \staccato |
    % parte A
    mi8([ \mf sol) si \staccato la] \staccato |
    sol[ \staccato si \staccato la \staccato sol] \staccato |
    fa([ la) sol \staccato fa] \staccato |
    % fin parte A
    mi4[ \portato sol] \portato |
    \break

    % 9
    re8-1([ fa-3) la-5 \staccato fa-4] \staccato |
    re([ fa) la \staccato fa] \staccato |
    do([ mi) sol \staccato mi] \staccato |
    do([ mi) sol \staccato mi] \staccato |
    si([ re) fa \staccato re] \staccato |
    si([ re) fa \staccato re] \staccato |
    mi4-2[ \portato re-3] \portato |
    do2-4 \portato 
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


