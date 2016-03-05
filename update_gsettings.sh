#!/bin/bash

#Stop script if any command gives error after run
set -e

#Set full path for sys commands
RSYNC=$(which rsync)
COMPILESCHEMAS=$(which glib-compile-schemas)

sudo $RSYNC -a schemas/org.pantheon.telefax.gschema.xml /usr/share/glib-2.0/schemas/
sudo $COMPILESCHEMAS /usr/share/glib-2.0/schemas/
