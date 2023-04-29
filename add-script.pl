#!/usr/bin/env perl

use strict;
use warnings;

my $extra = <<EOF;
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/dreampulse/computer-modern-web-font/master/fonts.css">
<script>
MathJax = {
  tex: {
    macros: {
      RR: '{\\\\bf R}',                    // a simple string replacement
      C: '{\\\\bf C}',                    // a simple string replacement
      bold: ['\\\\boldsymbol{#1}',1] ,     // this macro has one parameter
      ddx: ['\\\\frac{d#2}{d#1}', 2, 'x'], // this macro has an optional parameter that defaults to 'x'
      abc: ['(#1)', 1, [null, '\\\\cba']],  // equivalent to \\def\\abc#1\\cba{(#1)}
      Vol: '{\\\\operatorname{Vol}}',
      ov: ['\\\\overline{#1}', 1],
      Sym: '{\\\\operatorname{Sym}}',
      tr: '{\\\\operatorname{tr}}',
      id: '{\\\\operatorname{id}}',
      End: '{\\\\operatorname{End}}',
      det: '{\\\\operatorname{det}}'
    }
  }
};
</script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
EOF

while (<>) {
	if (m{</head>}) {
		print $extra;
		print $_;
	} else {
		print $_;
	}
}
