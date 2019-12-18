#1. Introduction
    #A regular expression is a special sequence of characters that helps you match or find other strings or sets of strings using a specialized syntax held in a pattern.
    #A regular expression literal is a pattern between slashes or between arbitrary delimiters followed by %r as follows
    
    /pattern/
    /pattern/im    # option can be specified
    %r!/usr/local! # general delimited regular expression
    #!/usr/bin/ruby
    line1 = "Cats are smarter than dogs";
    line2 = "Dogs also like meat";
    puts "Line1 contains Cats" if ( line1 =~ /Cats(.*)/ )
    puts "Line2 contains  Dogs" if ( line2 =~ /Cats(.*)/ )

#2. Expression Modifiers
    #thêm sau 
    #vd line1 =~ /Cats(.*)/i

    