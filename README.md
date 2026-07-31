# Ubuntu Dev Environment

An Ubuntu-based test environment, containing essential development packages for personal development.
This environment has been developed, tested and running inside Mac Tahoe.

## Table of Contents

- [Reference Commands](#reference-commands)
- [Log](#log)

## Files and Directories

| Directory | Description |
|-|-|
| ```/etc/msmtprc``` | MSMTP Configuration File |
| ```/root/.bashrc``` | |
| ```/root/.profile``` | |
| ```/root/.ssh``` | |
| ```/tmp``` | |
| ```/workspace``` | Scripts Location |

## Reference Commands

| Command | Description |
|-|-|
| ```docker compose up -d --build``` | Docker command used for building up containers |
| ```docker exec -it ubuntu-devops bash``` | Docker command used for running the dev container interactive terminal. |
| ```echo -e To: <email>@<domain>\nFrom: <email>@<domain>\nSubject: Quick Test\n\nThis is the message body. \| sendmail -t``` | Test the sendmail function |

## Log

| Date | Log |
|-|-|
| 20260727 | Initial Files |