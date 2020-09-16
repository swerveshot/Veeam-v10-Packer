# Veeam v10 vSphere lab

![.github/workflows/validate-packer-template.yml](https://github.com/swerveshot/Veeam-v10-Packer/workflows/Validate%20Packer%20Template/badge.svg?branch=swerveshot-patch-1)

### Introduction
This is a simple project to create a virtual test lab for Veeam v10 using Packer and OVFtool.

The goal of this lab is to test the restore of a machine that is backed up with the Windows agent to a vSphere environment. In this case backed by a single nested ESXi host.

Todo:
- [ ] create functions for create and remove operations
- [ ] add parameter for VMs to be created - defaults to all
