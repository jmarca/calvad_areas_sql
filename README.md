# SQL for official counties, basins, grids, etc

To deploy everything to a database called, for example, "osm", you
should do:

```
sqitch deploy  -t db:pg:osm
```

If the database is not on the local machine, or if it needs a
particular user or port, then consult the sqitch documentation for the
proper way to form more complicated database urls.

Some helpful links:

[https://github.com/theory/uri-db/](https://github.com/theory/uri-db/)

[https://metacpan.org/pod/sqitchtutorial](https://metacpan.org/pod/sqitchtutorial)
