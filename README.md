The website will have the following specification:

- Show a list of bookmarks
```
As a user,
so I can choose what to read,
I would like to see a list of what I've bookmarked
```

| Objects  | Messages |
| -------- | -------- |
| Bookmark | read     |
| List     | display  |

```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

Postgres installation: 

1. brew install postgresql
2. brew services start postgresql
3. psql postgres

Create test and main databases: 
1. CREATE DATABASE "bookmark_manager";
2. Connect to the database using \c bookmark_manager;
3. Run query from 01_create_bookmarks_table.sql
4. CREATE DATABASE "bookmark_manager_test";
5. Connect to the database using \c bookmark_manager_test;
6. Run the same query from 01_create_bookmarks_table.sql
