# What is this
Contents of this folder have terraform and other code needed to deploy sample infrastructure for all of the services in GCP.

![Sample Infrastructure](./images/GCP_Sample_Infra.jpeg)

# How to deploy sample infrastructure

main.tf file in this directory contains modules to deploy infrastructure

It is designed to be read from top to bottom and you can comment out everything and deploy modules one at a time working from top to bottom.

Modules and their dependencies should be self explanatory.

If you comment out modules in mainn.tf look at correspondiong values in output.tf

