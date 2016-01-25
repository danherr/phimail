# Phase 1: User Authentication, Note Model and JSON API

## Rails
### Models
* User
* Message
* Conversation

### Controllers
* UsersController (create, new)
* SessionsController (create, new, destroy)
* Api::MessagesController (create, destroy, show, update)
* Api::ConversationsController (index, show, destroy)

### Views
* users/new.html.erb
* session/new.html.erb
* conversations/index.json.jbuilder
* conversations/show.json.jbuilder
* messages/show.json.jbuilder

## Flux
### Views (React Components)

### Stores

### Actions

### ApiUtil

## Gems/Libraries
* BCrypt (Gem)