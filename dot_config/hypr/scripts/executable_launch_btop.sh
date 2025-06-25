#!/bin/bash

WORKSPACE="10"

TERMINAL="ghostty"

hyprctl dispatch workspace "$WORKSPACE"
$TERMINAL -e btop
