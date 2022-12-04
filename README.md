# CrackStation, a Decrypter implementation

My Library cracks a One leter, Two letter and three character password which are encrypted using SHA1 and SHA256.

## Overview

This assignment is about cracking upto three character passwords.At first we implemented a library for one character(POC v1) and then upto two characters(POC v2) and finally upto three characters(MVP). 

## Mission Statement
The main goal is to learn swift and Github flow. This library can crack encrypted password coded with SHA1 and SHA256. . This library cracks password up to three characters with the regular expression '[A-Za-z0-9!?]{1,3}'.The SHA1 and SHA256 are not salted by default, therefore salting can make them more secure.    

## Installation

Swift Package Manager

The Swift Package Manager is "a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the

process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your Package.swift file:

dependencies: [

.package(url: "git@github.com:Shailesh-17/CrackStation.git",

.upToNextMajor(from:"1.1.0"))


## Usage

### The API

The function parameter is a hash value, and the function return value is the cracked character corresponding to the hash value.

init()
func decrypt(shaHash: String) -> String?

### An example

import Foundation
import CrackStation
let aCrackStation = CrackStation()
print(aCrackStation.decrypt("f9e37196dc858a53517ba999309fc6045559f7cb2372c680bfd1262a36c1d05d")) #SHAa

## Author

Shailesh Palyam Mahesh Babu
