\version "2.18.2"

\header {
  title = "Hen-Coop Rag"
  composer = "Edward Huws Jones"
}

violin = \relative c'' {
  \key d \major
  \time 2/4
  \tempo "Keep on pecking'" 4 = 80
  d4\mf cis b8 d, a'\open d, e16 e e e fis8 fis g r r4 \break
  cis4\downbow b a8\open e g e fis16 fis fis fis g8 g a r r4 \break
  d4\downbow\p cis b8 d, a' d, e16 e e e fis8 fis g r r4 \break
  cis8\downbow e\<\open b e\open a, e'\open b e\open a,\!\f a4 a8 d, r r4 \bar "|." \break
  \key g \major
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "Fine"
  d8-+^"(LH pizz.)" r r4 d8-+ r r4 d16^"arco" d d d e8 e fis r r4 \break
  d8-+ r r4 d8-+ r r4 fis16^"arco" fis fis fis e8 d d r r4 \break
  d8-+ r r4 d8-+ r r4 g16^"arco" g g g d8 d e r r4 \break
  e4\downbow\p e\< g g e8\!\mf d4 d8 d r r4 \bar "||"
  \key d\major \break
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark "D.C. al Fine"
}

\paper {
  % ragged-last-bottom = ##f % for filling the whole page
}

\score {
  <<
    \new Staff \violin
  >>
  \layout {
    indent = 0.0
  }
}
