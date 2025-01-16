#!/bin/bash

set -e
failure(){
    echo "Failed at: $1:$2"
}
trap 'failure "${LINED}" "$BASH_COMMAND"' ERR

echo "Hello World success"
echoo "hello world failure"
echo "Hello World After Failure"
