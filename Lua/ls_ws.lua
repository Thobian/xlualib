--[=======[
-------- -------- -------- --------
             s&ws����
-------- -------- -------- --------
]=======]

--[=======[
��
    string    ws2s            ( string s );     --unicodeת��Ϊascii        [-1, +1, c]
    string    s2ws            ( string ws );    --asciiת��Ϊunicode        [-1, +1, c]

    string    string:ws2s     ( );              --unicodeת��Ϊascii        [-0, +1, -]
    string    string:s2ws     ( );              --asciiת��Ϊunicode        [-0, +1, -]
]=======]
string.ws2s           = function( ... ) return ws2s                        ( ... ); end
string.s2ws           = function( ... ) return s2ws                        ( ... ); end