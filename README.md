# Tracker App

The Tracker App is a user-friendly platform for entertainment enthusiasts to share their opinions and experiences. Users can effortlessly create posts and reviews about movies, TV shows, music, books, and more, providing a space for detailed critiques and recommendations. This app allows users to discover new content and engage with a community of like-minded individuals, making it a go-to hub for all things entertainment-related.

**Note:** Temporary description to be modified

## Table of Contents

- [Main Branch Approved Updates](#main-branch-approved-updates)
- [Branches Changes to Approve](#branches-changes-to-approve)
  - [Iteration 1](#iteration-week-1)

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
- Index view for Dashboard created - **NOTE: no current css or HTML will be updated in upcoming iterations**

### Branches Changes to Approve

Please update this branch with the progress being made by you (and your partner)

### Iteration Week 1

#### Brian + Lex - Progress

- [x] Created model 'Dashboard'
- [x] Setting up the Routes for Dashboard (root: 'dashboard#index')

  ```ruby
  root 'home#index'
  resources :home, only: [:index]
- [x] Created testing Features for 'Dashboard'
- [x] Feature testing passing for 'Dasboard' - **NOTE: currently testting for dashboard checks that when 'Gallery' and 'Profile' are clicked they just re-route to root. This needs to be updated for the next iteration once models start getting linked up so that navigation works, and is tested appropriately.**

#### Jaanhvi - Progress
  - [x] Created model 'User'
  - [x] Created model 'Profile'
  - [x] Updated associations between models
  - [x] Set up the foreign key relationship between profiles and users

#### Cris + Edna - Progress
  - [x] Created model 'Review'
  - [x] Created model 'Post'
  - [x] Created testing for 'Post' -- *Testing works*
  - [x] Created testing for 'Review' -- *Testing works*

### Iteration Week 2

#### Brian + Lex - Progress
- [x] worked on views for the following
    - Dashboard index view
    - posts show view
    - new post form view
    - profile show view
- [x] tests for the general naviagtion between pages

#### Jaanhvi - Progress
- [x] Set up user authentication
- [x] Deleted profile model and changed it for just a user model
- [x] set up the sign up and sign in form

#### Cris + Edna - Progress
  - [x] Created the movie model
  - [x] Created the game model
  - [x] Created the series model
  - [x] Removed review model, instead opted for a post model and comments to include in posts
  - [x] set up the relationships between the models and validations

### Resources:
export GITHUB_APP_ID="1c6625a9cb4a6834e127"
export GITHUB_APP_SECRET="23109d667e6c816571c90ceaaccef8fbe54c26cf"