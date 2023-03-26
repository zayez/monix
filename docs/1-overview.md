# Overview

This chapter will give a brief overview of the components that comprise this project. The next chapter will explore each one in depth.

## Desktop

All gui-based operating systems use a desktop environment. Desktop environments contain many features, including (but not limited to):

- The look and feel of the system
- The organization of the desktop
- How the user navigates the desktop

This project uses XMonad (a dynamic window manager) as the default desktop environment.
LXQt (a desktop manager) is also available and can be used with XMonad.

## System

System is a collection os modules related to the configurations at the _system_ level, is where you'll find modules that manage things like: desktop environment, file systems, fonts, multiboot support and system packages.

## User

User is a collection os modules related to the configurations at the _user_ level, is where you'll find modules that manage things like: graphical user interface, user packages and overlays.

## Scripts

Scripts are a collection of useful bash scripts organized by categories.

## Hosts

A host will be responsible for composing system modules to configure a brand new NixOS configuration.

## Profiles

A host will be responsible for composing user modules to configure a brand new home-managed configuration.
