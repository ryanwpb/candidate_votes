# Voting API

## Description

Create an API using Rails which allows users to vote for candidates for public office.

## Objectives

After completing this assignment, you should...

* Understand how organizations present information via APIs.
* Understand how APIs can be used to change data as well as view it.
* Be able to write a versioned, nested API to share and allow edits to a database.
* Be able to write Rails tests to cover a Rails API.
* Be able to write a token-based authentication system for an API.

## Deliverables

* **A Repository.** Create your own repository for this assignment.
* **A Test Suite.** Every action in your controllers should be tested.
* **A README.** Your README should describe the API and provide instructions for others on how to use it.
* **An ERD.** Create a database diagram in Lucidchart (or a similar tool).

## Normal Mode

For this project, you will be building a Rails-based application which serves up only an API.  This API will be responding with JSON.  The API must have the following actions in the following locations:

* `/candidates`
  * Based on a `candidates` table, with at least `name`, `hometown`, `district`, and `party` attributes
  * `index` action
  * `show` action
* `/voters`
  * Based on a `voters` table, with at least `name` and `party` attributes
  * `create` action
  * `show` action, with token authentication to prove that you are the voter
  * `update` action, with token authentication to prove that you are the voter
* `/votes`
  * Based on a `votes` table, with at least `voter_id` and `candidate_id` attributes
  * Each voter can cast at most one vote, period.
  * `create` action, with token authentication to show that you are the voter
  * `destroy` action, with token authentication to show that you are the voter
  * `index` action (which shows all candidates and a number of votes for each)

See the notes section below for links that will be helpful.  Your easiest path will be to accept the token from the user as a parameter.
