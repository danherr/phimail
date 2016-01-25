# Dmail

[Heroku link][heroku]

[heroku]: 

## Minimum Viable Product

Dmail is an email application inspired by Gmail built using Ruby on Rails
and React.js. Dmail allows users to:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [ ] Create an account
- [ ] Log in / Log out
- [ ] Create, read edit and delete contacts
- [ ] Create, read, edit, and delete messages
- [ ] Send, recieve and reply to messages
- [ ] Messages are grouped in Conversations
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


### Phase 3: Conversation Detail (2 days)




### Phase 4: Folders, and Sidebar (1 day)




### Phase 5: Contacts (1 day)




### Phase 6: Search Bar (1 day)

I will create a react component for the search bar at the top of the page, along with basic
functionality to search for messages by title.


### Phase 7: Styling and Seeding. (2 days)




### Bonus Features (TBD)
- [ ] More Styling


[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
[phase-six]: ./docs/phases/phase5.md
