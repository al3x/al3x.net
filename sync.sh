#!/bin/bash
rsync -chavzOP --stats _site/ al3x@cerf:/var/www/al3x.net/
