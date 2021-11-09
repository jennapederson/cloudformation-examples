#!/bin/bash
if $(pm2 list app | grep online)
then
  pm2 stop app
fi