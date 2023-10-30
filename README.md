# Project Name

Brief project description or introduction.

## Table of Contents

- [Main Branch Approved Updates](#main-branch-approved-updates)
- [Branches Changes to Approve](#branches-changes-to-approve)

## Main Branch Approved Updates

Please update this section as we approve changes to the main branch

### GemFile Changes

- RSpec
- Cucumber
- SimpleCove

### Model Changes
- Post created
- Review created
- Dashboard created
- User Created**
- Profile Created**

** No current tests in Iteration 1, will be created once models are linked

### View Changes
- Index view for Dashboard created - NOTE: no current css or HTML will be updated in upcoming iterations

### Branches Changes to Approve

Please update this branch with the progress being made by you (and your partner)

### Iteration Week 1

#### Brian + Lex - Progress

- [x] Created model 'Dashboard'
- [x] Setting up the Routes for Dashboard (root: 'dashboard#index')
  ```ruby
  # This is code
  root 'home#index'
  resources :home, only: [:index]
- [x] Created testing Features for 'Dashboard'
- [x] Feature testing passing for 'Dasboard' - NOTE: currently testting for dashboard checks that when 'Gallery' and 'Profile' are clicked they just re-route to root. This needs to be updated for the next iteration once models start getting linked up so that navigation works, and is tested appropriately.

#### Jaanhvi - Progress
  - [x] Created model 'User'
  - [x] Created model 'Profile'
  - [x] Updated associations between models
  - [x] Set up the foreign key relationship between profiles and users

#### Cris + Edna - Progress
  - [x] Created model 'Review'
  - [x] Created model 'Post'
  - [x] Created testing for 'Post'
  - [x] Created testing for 'Review'