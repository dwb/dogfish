# dogfish

by Dan Brown <dan@stompydan.net>

A really simple migration manager for MySQL and PostgreSQL.

[![Build Status](https://travis-ci.org/dwb/dogfish.svg?branch=master)](https://travis-ci.org/dwb/dogfish)

Every database migration manager I found assumed quite a few things. They were all written in a Proper Language, had some kind of fancy abstraction layer, or otherwise got in my way. I want to write migrations in the native SQL of the database system I'm using, and I don't want to be tied to a language or runtime to do it. I've gone back to pretty much the lowest common denominator with dogfish: bash and POSIX tools. That's the intention, anyway: non-POSIXisms (apart from bash, mysql, and psql of course) should be considered bugs. If someone wants to make it water-tight Bourne shell, be my guest, but I thought bash was pretty safe.

You put your `.sql` migration (and optionally rollback) scripts in a directory, and dogfish will work out what needs to be migrated, based on what previously-run migrations have been recorded in the database. If you want to rollback, you can do that. If you only want to migrate or rollback to a specific version, that is catered for too. You may be thinking about now that this has been heavily influenced by Rails' migration system, and you'd be quite right.

See the built-in help (`dogfish --help`) for usage, etc. dogfish is self-contained in the one script file, so you can pick it up and drop it anywhere you fancy.

Tested with bash 3.2.48, MySQL 5.5.28, and PostgreSQL 9.2.2, but I don't think I'm doing much that's all that weird so I wouldn't be surprised if it all works on much earlier versions.

At the moment, it is slightly deficient in configuration (it assumes certain names for the schema migrations table and its column), but that would not be a hard problem to solve. It's also mildly inefficient (it scans the migrations directory many times), but it seems to run fast enough for me to not worry all that much.

Contributions welcome; do the usual fork/branch/pull-request dance. There is a test suite: just have a working MySQL and PostgreSQL that dogfish would be able to access, make sure there's nothing you want to keep in any `dogfish_test` database that might exist, and run `./dogfish_test`. Green words will hopefully fly by. Please: 80 columns, POSIX tools and usages only. Note that you need to install [Shellcheck](http://shellcheck.net), or be running on Linux where I have helpfully included a binary for you (and Travis). It's available in Homebrew on OS X.

The spiny dogfish, _Squalus acanthias_, is one of the few animals that migrate
that someone hasn't used as a name for a piece of software yet. I'm not a
massive fan of them or anything. They look okay I guess.
