+++
date = "2015-07-18T14:08:45+02:00"
draft = false
title = "pgloader: automated migration to PostgreSQL"
weight = 2
img = "type-casting-machine.500.jpg"
+++

[pgloader](http://pgloader.io) is an awesome database migration tool that I
wrote, open source and available at <http://github.com/dimitri/pgloader>.
You can use it in a _Continuous Integration_ environment and keep migrating
your **schema** and **data** until your application tests all pass, then
decide to go live with PostgreSQL!

In the general case to migrate from
a [MySQL](https://www.youtube.com/watch?v=emgJtr9tIME) to PostgreSQL
with [pgloader](http://pgloader.io) all you need to do is run a single
command:

```
$ pgloader mysql://user@host/dbname pgsql:///dbname
```

Also supported are SQLite and Microsoft® SQL Server. Email me if you want to
add Oracle™ to the list!
