# Ubuntu Dev Environment

An Ubuntu-based test environment, containing essential development packages for personal development.
This environment has been developed, tested and running inside Mac Tahoe.

## Table of Contents

- [Files and Directories](#files-and-directories)
- [Reference Commands](#reference-commands)

## Files and Directories

| Directory | Description |
|-|-|
| ```/etc/msmtprc``` | MSMTP Configuration File |
| ```/root/.bashrc``` | |
| ```/root/.profile``` | |
| ```/root/.ssh``` | |
| ```/tmp``` | |
| ```/var/lib/apt/lists/``` | |
| ```/workspace``` | Scripts Location |

## Reference Commands

| Command | Description |
|-|-|
| ```apt-get install -f``` | |
| ```apt-get update --fix-missing``` | |
| ```docker compose up -d --build``` | Docker command used for building up containers |
| ```docker exec -it ubuntu-devops bash``` | Docker command used for running the dev container interactive terminal. |
| ```echo -e To: <email>@<domain>\nFrom: <email>@<domain>\nSubject: Quick Test\n\nThis is the message body. \| sendmail -t``` | Test the sendmail function |
| ```echo 'System.out.println(System.getProperty("java.version"))' \| jshell -q``` | Test the java function |
| ```java --version``` | Test the java function |
| ```javac --version``` | Test the java function |