%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \scoreInit
      \keepWithTag #'recit  \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA VI."
    scenedescr = \markup { \smallCaps Nireno, e detti. }
    breakbefore = #(break-before?)
  }
  \layout { indent = \smallindent
            #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
