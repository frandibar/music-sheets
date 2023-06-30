\version "2.12.1"
\include "espanol.ly"

#(set-default-paper-size "a4")

\header{
  title = "100 STUDI GIORNALIERI"
  subtitle = "Op. 599"
  composer = "Carl Czerny (1791-1857)"
}

\include "czerny-op599-ex1.ly"
\include "czerny-op599-ex2.ly"
\include "czerny-op599-ex3.ly"
\include "czerny-op599-ex4.ly"
\include "czerny-op599-ex5.ly"
\include "czerny-op599-ex6.ly"
\include "czerny-op599-ex7.ly"
\include "czerny-op599-ex8.ly"
\include "czerny-op599-ex9.ly"
\include "czerny-op599-ex10.ly"
\include "czerny-op599-ex11.ly"
\include "czerny-op599-ex12.ly"


\layout {
  \context {
    \Score
      \remove "Bar_number_engraver"
  }
}


\book {
  \score { \ExOne }
  \score { \ExTwo }
  \pageBreak
  \score { \ExThree }
  \score { \ExFour }
  \score { \ExFive }
  \pageBreak
  % add as another bookpart to use different spacing to fit in one page 
  \bookpart {
    \paper {
      between-system-padding = #0.1
      between-system-space = #0.1
      ragged-last-bottom = ##f
      ragged-bottom = ##f
    }
    \score { \ExSix }
    \score { \ExSeven }
    \score { \ExEight }
    \score { \ExNine }
    \score { \ExTen }
  }
  \pageBreak
  \score { \ExEleven }
  \score { \ExTwelve }
  %\pageBreak
}

