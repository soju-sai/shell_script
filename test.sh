#!/bin/bash

A='/vagrant/'
echo 'start test'
$(cd $A)
$(touch test_vagrant.txt)
echo 'end test'
