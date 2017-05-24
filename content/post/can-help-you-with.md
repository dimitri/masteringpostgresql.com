+++
date = "2015-07-18T14:53:21+02:00"
draft = false
title = "Open Source Software Engineer"
img = "gnu.png"
weight = 3
+++

I can help you use PostgreSQL in your development environment, be
it [Go](https://golang.org)
or [Java](https://jdbc.postgresql.org), [Erlang](http://www.erlang.org)
or
[Common Lisp](https://common-lisp.net),
[Python](https://www.python.org), [Ruby](https://www.ruby-lang.org/en/)
or [PHP](http://php.net), or something else entirely. It's
still [PostgreSQL](https://www.postgresql.org) after all...

The first step here is realizing that your database engine actually is part
of your application logic. Any SQL statement you write, even the simplest
possible, embeds some logic already: you are *projecting* a particular set
of columns, *filtering* the result to only a part of the available data set
(thanks to the `where` clause), and you want to receive the result in a
known *ordering*. That already is business logic. Application code written
in SQL.
