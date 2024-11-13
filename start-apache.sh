#!/bin/bash
a2enmod rewrite
apache2ctl configtest
apache2-foreground
