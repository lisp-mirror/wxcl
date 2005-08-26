




These directories contain the node files which produce
the HTML for the website. Node files that are intended
to produce mainly a singly language like :de (German)
or :en (English) go into the respective directory and
are evaluated once.

The URI of the HTML that a node file produces can be refered
to using

  (with-syntax 
    (:html) 
    ((:a :href* :de/contact) "foo"))

that is, by passing a keyword whichs name consists of the
language key and the node file name (without extension 
'.lisp') separated by slash to the special attribute :href* .

Clicking on the link that results from the above example will
bring the user to the place of this node on any page of 
the website.


Node files that a intended to produce HTML depending on 
the value of the variable *language* go into the directory 
'multi', e.g. the file that produces the terse news on 
the website's home page. They are evaluated once for each
language, each time with the respective language key bound
to *language*.


( Joerg Preisendoerfer )



