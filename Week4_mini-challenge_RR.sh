1. echo "Cats eat 5 billion birds a year" | sed 's/\(Cats eat\) \(5 billion\) \(birds a year\)/\2\? \2\!/'
5 billion? 5 billion!


2.echo "12345abcde678910fghij" | sed 's/\(12345\)\(abcde\)\(678910\)\(fghij\)/\2\4\1\3/'
abcdefghij12345678910

3.echo "12345abcde678910fghij" | sed 's/\(12345\)\(abcde\)\(678910\)\(fghij\)/\2\4\1\3/'| sed 's/../&\t/g'

ab	cd	ef	gh	ij	12	34	56	78	91	0

4.echo "12345abcde678910fghij" |sed 's/\(12345\)\(abcde\)\(678910\)\(fghij\)/\2\4/' | sed 's/\(ab\)\(cd\)\(ef\)\(gh\)\(ij\)/\1\t\2\t\3\t\4\t\5\t/'
