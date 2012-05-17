\version "2.10.33"
\include "espanol.ly"

\header{
  title = "Preludio I"
  composer = "Johann Sebastian Bach (1685-1750)"
}

% tighten space; we want 2 pages. 
#(set-global-staff-size 19)
\paper {
  pagetopspace = #0.0
  indent = 0.0
  linewidth = 18.0\cm
  raggedlastbottom = ##f
}


% define the left and the right hand in new variables
rightHand = {
  \relative do'' {
    \time 4/4
    \clef treble
    r8 sol16-1[ do-3] mi-5[ sol, do mi] r8 sol,16[ do] mi[ sol, do mi] |
    r8 la,16-1[ re-3] fa-5[ la, re fa] r8 la,16[ re] fa[ la, re fa] |
    \break

    % 3
    r8 sol,16-1[ re'-3] fa-5[ sol, re' fa] r8 sol,16[ re'] fa[ sol, re' fa] |
    r8 sol,16[ do] mi[ sol, do mi] r8 sol,16[ do] mi[ sol, do mi] |
    r8 la,16-1[ mi'-3] la-5[ la, mi' la] r8 la,16[ mi'] la[ la, mi' la] |
    \break

    % 6
    r8 fas,16-1[ la-2] re-5[ fas, la re] r8 fas,16[ la] re[ fas, la re] |
    r8 sol,16-1[ re'-3] sol-5[ sol, re' sol] r8 sol,16[ re'] sol[ sol, re' sol] |
    r8 mi,16-1[ sol-2] do-5[ mi, sol do] r8 mi,16[ sol] do[ mi, sol do] |
    \break

    % 9
    r8 mi,16[ sol] do[ mi, sol do] r8 mi,16[ sol] do[ mi, sol do]
    r8 re,16-1[ fas-2] do'-5[ re, fas do'] r8 re,16[ fas] do'[ re, fas do'] |
    r8 re,16-1[ sol-3] si-5[ re, sol si] r8 re,16[ sol] si[ re, sol si] |
    \break

    % 12
    r8 mi,16-1[ sol-2] dos-5[ mi, sol dos] r8 mi,16[ sol] dos[ mi, sol dos] |
    r8 re,16-1[ la'-3] re-5[ re, la' re] r8 re,16[ la'] re[ re, la' re] |
    r8 re,16-1[ fa-2] si-5[ re, fa si] r8 re,16[ fa] si[ re, fa si] |
    \break

    % 15
    r8 do,16-1[ sol'-3] do-5[ do, sol' do] r8 do,16[ sol'] do[ do, sol' do] |
    r8 la,16-1[ do-2] fa-5[ la, do fa] r8 la,16[ do] fa[ la, do fa] |
    r8 la,16[ do] fa[ la, do fa] r8 la,16[ do] fa[ la, do fa] |
    \pageBreak

    % 18
    % page 2
    r8 sol,16-1[ si-2] fa'-5[ sol, si fa'] r8 sol,16[ si] fa'[ sol, si fa'] |
    r8 sol,16-1[ do-3] mi-5[ sol, do mi] r8 sol,16[ do] mi[ sol, do mi] |
    r8 sib16-1[ do-2] mi-4[ sib do mi] r8 sib16[ do] mi[ sib do mi] |
    \break

    % 21
    r8 la,16-1[ do-3] mi-5[ la, do mi] r8 la,16[ do] mi[ la, do mi] |
    r8 la,16-1[ do-2] mib-4[ la, do mib] r8 la,16[ do] mib[ la, do mib] |
    r8 si16-1[ do-2] re-3[ si do re] r8 si16[ do] re[ si do re] |
    \break

    % 24
    r8 sol,16-1[ si-3] re-5[ sol, si re] r8 sol,16[ si] re[ sol, si re] |
    r8 sol,16-1[ do-3] mi-5[ sol, do mi] r8 sol,16[ do] mi[ sol, do mi] |
    r8 sol,16-1[ do-2] fa-5[ sol, do fa] r8 sol,16[ do] fa[ sol, do fa] |
    \break

    % 27
    r8 sol,16-1[ si-2] fa'-5[ sol, si fa'] r8 sol,16[ si] fa'[ sol, si fa'] |
    r8 la,16-1[ do-2] fas-5[ la, do fas] r8 la,16[ do] fas[ la, do fas] |
    r8 sol,16-1[ do-2] sol'-5[ sol, do sol'] r8 sol,16[ do] sol'[ sol, do sol'] |
    \break

    % 30
    r8 sol,16[ do] fa[ sol, do fa] r8 sol,16[ do] fa[ sol, do fa] |
    r8 sol,16[ si] fa'[ sol, si fa'] r8 sol,16[ si] fa'[ sol, si fa'] |
    r8 sol,16[ sib] mi[ sol, sib mi] r8 sol,16[ sib] mi[ sol, sib mi] |
    \break
    
    % 33
    \clef bass
    r8 fa,16-1[ la-2] do-3[ fa-5 do-2 la-1] do-5[ la-3 fa-1 la-5] fa-3[ re-1 fa-3 re-1] |
    \clef treble
    r8 sol'16-1[ si-2] re-3[ fa-5 re-3 si-1] re-5[ si-3 sol-1 si-5] re,-1[ fa-3 mi re] |
    <mi sol do>1 \fermata
  }
}

leftHand = {
  \clef bass
  \relative do {
  << {
    r16 mi'8.~ mi4 r16 mi8.~ mi4 |
    r16 re8.~ re4 r16 re8.~ re4 |

    % 3
    r16 re8.~ re4 r16 re8.~ re4 |
    r16 mi8.~ mi4 r16 mi8.~ mi4 |
    r16 mi8.~ mi4 r16 mi8.~ mi4 |

    % 6
    r16 re8.~ re4 r16 re8.~ re4 |
    r16 re8.~ re4 r16 re8.~ re4 |
    r16 do8.~ do4 r16 do8.~ do4 |

    % 9
    r16 do8.~ do4 r16 do8.~ do4 |
    r16 la8.~ la4 r16 la8.~ la4 |
    r16 si8.~ si4 r16 si8.~ si4 |

    % 12
    r16 sib8.~ sib4 r16 sib8.~ sib4 |
    r16 la8.~ la4 r16 la8.~ la4 |
    r16 lab8.~ lab4 r16 lab8.~ lab4 |

    % 15
    r16 sol8.~ sol4 r16 sol8.~ sol4 |
    r16 fa8.~ fa4 r16 fa8.~ fa4 |
    r16 fa8.~ fa4 r16 fa8.~ fa4 |

    % 18
    r16 re8.~ re4 r16 re8.~ re4 |
    r16 mi8.~ mi4 r16 mi8.~ mi4 |
    r16 sol8.~ sol4 r16 sol8.~ sol4 |

    % 21
    r16 fa8.~ fa4 r16 fa8.~ fa4 |
    r16 do8.~ do4 r16 do8.~ do4 |
    r16 fa8.~ fa4 r16 fa8.~ fa4 |

    % 24
    r16 fa8.~ fa4 r16 fa8.~ fa4 |
    r16 mi8.~ mi4 r16 mi8.~ mi4 |
    r16 re8.~ re4 r16 re8.~ re4 |

    % 27
    r16 re8.~ re4 r16 re8.~ re4 |
    r16 mib8.~ mib4 r16 mib8.~ mib4 |
    r16 mi!8.~ mi4 r16 mi8.~ mi4 |

    % 30
    r16 re8.~ re4 r16 re8.~ re4 |
    r16 re8.~ re4 r16 re8.~ re4 |
    r16 do8.~ do4 r16 do8.~ do4 |

    % 33
    r16 do8.~ do4~ do2 |
    r16 si8.~ si4~ si2 |
    do1 \fermata \arpeggio
  } \\ {
    do'2-2 do |
    do-2 do |

    % 3
    si-3 si |
    do-2 do |
    do do |

    % 6
    do-2 do |
    si-3 si |
    si-2 si |

    % 9
    la-3 la |
    re,2-5 re |
    sol-2 sol |

    % 12
    sol-2 sol |
    fa-3 fa |
    fa-3 fa |

    % 15
    mi-2 mi |
    mi-2 mi |
    re-3 re |

    % 18
    sol,-5 sol |
    do-3 do |
    do-5 do |

    % 21
    fa, fa |
    fas-4 fas |
    lab-5 lab |

    % 24
    sol-5 sol |
    sol sol |
    sol sol |

    % 27
    sol sol |
    sol sol |
    sol sol |

    % 30
    sol sol |
    sol sol |
    do, do |

    % 33
    do~ do |
    do~ do |
    do1
  } >>

  \bar "|." 
  }
}

% bring the two hands together
\score {
  \context PianoStaff <<
    \override PianoStaff.VertidoalAlignment #'forced-distance = #11.3
    \set PianoStaff.connedotArpeggios = ##t
    \context Staff = "Right Hand" \rightHand
    \context Staff = "Left Hand" \leftHand
  >>

  \midi {}
  
  \layout {
    \context {
      \PianoStaff
    }
  }
}


