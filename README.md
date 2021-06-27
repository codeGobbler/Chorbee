# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Thought Process:

    1. Purpose:

    - This app will store, display and use data for all children and chores in the household to document what has been accomplished during the week and keep track of individual scores for each child

    2. Neccesary components:

    - The neccesary tables(migrations) include:
      >scaffolds
        - A table for the kids, where each will be given an id number. 
        - A table for chores where each job will have a unique id number. 
      >migrations
        - A third table will join the chore id with child id's (has many to many association with a third column for a completed by date) this will eventually randomize at the beginning of each week, but for now will keep it simple and static.

    - The neccesary models include:
        - A child model that has_many :chores
        - A chore model that belongs_to :child
    
    - The neccesary controllers include:
        - A controller for child functions (crud)
        - A controller for chore functions (crud)

    - The app will need views for:
        - An index view for general child/chore data
        - Child (profile) that includes a score and current chore
        - Chore that includes the child assigned and whether it's done or not
