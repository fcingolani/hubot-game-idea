# hubot-game-idea

A hubot script for getting random game ideas.

See [`src/game-idea.coffee`](src/game-idea.coffee) for full documentation.

This bot is based on [https://github.com/beeglebug/game-idea-machine/](game-idea-machine)

## Installation

In hubot project repo, run:

`npm install hubot-game-idea --save`

Then add **hubot-game-idea** to your `external-scripts.json`:

```json
[
  "hubot-game-idea"
]
```

## Sample Interaction

```
user1> hubot game idea
hubot> A text adventure where you travel forwards in time then piece together clues to discover the truth
```