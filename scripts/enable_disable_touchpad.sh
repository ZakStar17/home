#!/bin/bash

DEVICE_ID=10
PROP_ID=275
cur=$(xinput list-props $DEVICE_ID | grep $PROP_ID | python $HOME/scripts/get_last_string.py)

if [ $cur -eq 1 ]
then
  xinput set-prop $DEVICE_ID $PROP_ID 0
else
  xinput set-prop $DEVICE_ID $PROP_ID 1
fi


