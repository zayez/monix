# System

## Configuration

The system configuration is defined by a specified host. The default host of this system is **athens**.
The host is responsible for setting configurations such as: desktop environment, file systems, fonts, multiboot support and system packages.

The system configuration will manage programs and services at _system_ level.

## Services

System services are services managed by _systemd_. The default host will enable two services: dropbox and redshift.

Below is a is of available services:

- `Dropbox`: a file hosting service.
- `Redshift`: adjusts the color temperature of your screen according to your surroundings. You can change the coordinates using the _location_ attribute in the host's configuration.

## Programs

System programs are programs that will be available for all users of the system.

Below is a list of available programs:

- `GnuPG`: enables you to secure your files using state of the art cryptography.
