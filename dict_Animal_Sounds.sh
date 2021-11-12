#!/bin/bash

declare -A sounds
sounds[dog]="bark"
sounds[cat]="mew"
sounds[lion]="roar"
sounds[wolf]="howl"
sounds[bird]="tweet"

echo Dog\'s sound: ${sounds[dog]}   # Dog's sound
echo Cat\'s sound: ${sounds[cat]}    # Cat's sound
echo All animal names: ${!sounds[@]}   # All keys
echo All animal sounds: ${sounds[@]}   # All values
echo Number of animals: ${#sounds[@]}   # Number of elements
unset sounds[dog]     # Delete dog
