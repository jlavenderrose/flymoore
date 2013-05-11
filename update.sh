#!/bin/bash
rsync --verbose -r ./_site/* flymoore@flymoore.com:/var/www/front/
