<h1>free help, for you</h1>

<i>The difference between the two forms is the amount of processing Ruby does on the string while constructing the literal. In the single-quoted case, Ruby does very little. In the double-quoted case, Ruby does more work. First, it looks for substitutions - sequences that start with a backslash character - and replaces them with some binary value. The second thing that Ruby does with double-quoted strings is expression interpolation.</i>

<h2>Cool!</h2>

<i>But using ruby, we do not have to consider the space occupied by a string. We are free from all memory management.</i>

<h2>rdoc</h2>
gem install rdoc-data
Regenerate system docs
rdoc-data --install
Regenerate all gem docs
gem rdoc --all --overwrite
Regenerate specific gem doc with specific version
gem rdoc gemname -v 1.2.3 --overwrite

<h3>util</h3>
http://www.caliban.org/ruby/rubyguide.shtml#ri
#show all doc
ri -c # invalid option
ri 'Array#<<' # << was unexpected at this time.
>LOL, fuck my life
>This is it -> ri -l
