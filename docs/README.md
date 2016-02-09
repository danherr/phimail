# φmail

[link][heroku]

[heroku]: http://phimail.pw

## Minimum Viable Product

φmail is an email application inspired by Gmail built using Ruby on Rails
and React.js. φmail allows users to:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [X] Create an account
- [X] Log in / Log out
- [ ] Create, read edit and delete contacts
- [X] Create, read, edit, and delete messages
- [X] Send, recieve and reply to messages
- [X] Messages are grouped in Conversations
- [ ] Search for messages based upon title.

## Design Docs
* [View Wireframes][view]
* [DB schema][schema]

[view]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Creation, Sign in and JSON API (2 days)

In Phase 1 I will implement user creation and authentication.  After sign-up or log-in, there
will be a blank main page where react components will go. I will also implement a JSON api for
conversations and messages.

### Phase 2: Conversation list, and new Message (2 days)

This phase will be mostly devoted to setting up the flux architecture for conversations and
messages.  I will set up a conversation store to hold the conversations currently being viewed,
along with the basic actions and utilities to CRUD them. I will build React components for the
Content Window, Conversation List, Conversation List Item, and the creation of new messages.


### Phase 3: Folders, and Sidebar (1 day)

This phase is devoted to the left hand sidebar.  It will contain a listing of folders that
will allow users to organize their conversations.  

### Phase 4: Conversation Detail and email functionality (2 days)

I will build a react component to show the messages in a conversation and allow users to make
replies.  This is also when I will implement the ability to send and recieve emails. (Until
this point, messages will only be created and saved as drafts.)


### Phase 5: Contacts (1 day)

Also in the sidebar will be a react component to show the user's contacts. I will implement
CRUD functionality for them.

### Phase 6: Search Bar (1 day)

I will create a react component for the search bar at the top of the page, along with basic
functionality to search for messages by title.

### Phase 7: Styling and Seeding. (2 days)

At this point I will overhaul the styling of the app to match the actual Gmail, and fill the
database with demonstration seed data.


### Bonus Features (TBD)
- [ ] More Styling


[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase5.md
