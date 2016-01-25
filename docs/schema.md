# Schema Information

## users
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
fname         | string    | not null
lname         | string    | not null
username      | string    | not null, indexed, unique
session_token | string    | not null, indexed, unique
pass_digest   | string    | not null
birthday      | date      |
phone         | integer   | 
outside_email | string    |
avatar        | string    |

## messages
column name       | data type | details
------------------|-----------|-----------------------
id                | integer   | not null, primary key
user_id           | integer   | not null, foreign key (references users), indexed
source_addr       | string    | not null
target_addr       | string    | not null
title             | string    |
body              | text      |
in_reply_to_id    | integer   | foreign key (references messages), indexed
mess_conv_join_id | integer   | not null, foreign key (references conversations), indexed
created           | timestamp | not null, indexed

## conversations
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
user_id         | integer   | not null, foreign key (references users), indexed

## conversations_join
column name     | data type | details
----------------|-----------|-----------------------
conversation_id | integer   | not null, foreign key (references conversations), indexed
message_id      | integer   | not null, foreign key (references messages), indexed

## contacts
column name      | data type   | details
-----------------|-------------|---------------------
id               | integer     | not null, primary key
contactable_id   | integer     | not null, foreign key (polymorphic), indexed
contactable_type | string      | not null, 


## foreign_users
column name   | data type | details
--------------|-----------|---------------------
id            | integer   | not null, primary key
fname         | string    | not null
lname         | string    | not null
phone         | boolean   | 
email         | string    |
