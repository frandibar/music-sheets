% Cerny Opus 599 Exercise 12

rightExTwelve = {
  \clef treble
  \key do \major
  \relative do'' {
    do8-1( re-2 mi-3 fa-4 sol4-5-.) sol-5-. |
    sol8-5( fa mi re do4-1) mi-.-3 |
    re8-2( mi-3 fa-4 re-2 sol4-.-5) fa-.-4 |
    mi8-3( fa-4 sol-5 mi-3 do2-1) |
    do8-1( re mi re do re mi fa |
    \break

    sol fa mi re do4-.) mi-.-3 |
    re8-2( mi-3 fa-4 mi-3 sol-5 fa mi re |
    do-1 mi-3 sol-5 mi do2) \bar ":|:"
    re8-2( mi fa mi-3 sol-5 fa mi re-2 |
    mi-3 fa sol mi do4-.) do-.-1 |
    re8-2( mi fa mi-3 sol-5 fa mi re-2 |
    \break

    mi-3 fa sol mi do4-.-1) do-.-1 |
    do8-1( re mi fa sol-.-5) sol-.-5 sol-.-5 sol-.-5 |
    sol-5( fa mi re do-1 re mi do |
    re-2 mi fa mi sol-5 fa mi re |
    do-1 mi-3 sol-5 mi do2-1) \bar ":|"
  }
}

leftExTwelve = {
  \clef bass
  \key do \major
  \relative do {
    \slurDown
    <do-4 mi-2 sol-1>1 |
    <do mi sol> |
    <si-5 re-3 sol-1> |
    <do-4 mi-2 sol-1> |
    <do mi sol> |
    \break

    <do mi sol> |
    <si-5 fa'-2 sol-1> |
    <do-4 mi-2 sol-1> \bar ":|:"
    <si-5 re-3 sol-1> |
    <do-4 mi-2 sol-1> |
    <si-5 re-3 sol-1> |
    \break

    <do-4 mi-2 sol-1> |
    <do mi sol> |
    <do mi sol> |
    <si-5 fa'-2 sol-1>2 <si fa' sol> |
    <do-4 mi-2 sol-1>1 \bar ":|"
  }
}

ExTwelve = 
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \bold \huge "12. " }
    \context Staff = "Right hand" \rightExTwelve
    \context Staff = "Left hand" \leftExTwelve
  >>
