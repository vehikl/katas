# Katas
Our collection of Katas with Quick Setup Scripts to get it immediately ready to go!


## Requirements 

* docker 

`brew cask install docker`

* Mutagen 

`brew install mutagen-io/mutagen/mutagen`


## How to use it

Each kata has dedicated scripts to setup and tear down the project. 

### First time setup 

It is important to clone this repository at `~/Scripts`, otherwise the scripts might not work properly.

### Setting up a Kata
`bash ~/Scripts/<Kata Name>/create.sh`

### Tearing down a Kata
`bash ~/Scripts/<Kata Name>/destroy.sh`


## Recommendations 

Although not required, the usage of PHPStorm is recommended, since these scripts will also automatically setup 
Interpreter and Test Framework configurations for PHPStorm.   

## Our favorite Katas

### PHP

- [Gilded Rose](https://github.com/vehikl/GildedRosePhp)
- [Tennis2](https://github.com/vehikl/Tennis2Php)

### JS

- [Bowling](https://github.com/vehikl/BowlingJs)
- [RobotName](https://github.com/vehikl/RobotNameJs)
- [Change](https://github.com/vehikl/ChangeJs)
- [TheatricalPlayers](https://github.com/vehikl/TheatricalPlayersJs)
