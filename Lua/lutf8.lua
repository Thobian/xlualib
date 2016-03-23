--[=======[
-------- -------- -------- --------
                utf8����
-------- -------- -------- --------
]=======]

--[=======[
��
    string    utf82ws         ( string utf8 );   --utf8ת��Ϊunicode        [-1, +1, c]
    string    ws2utf8         ( string ws );     --unicodeת��Ϊutf8        [-1, +1, c]
    string    utf82s          ( string utf8 );   --utf8ת��Ϊascii          [-1, +1, c]
    string    s2utf8          ( string s );      --asciiת��Ϊutf8          [-1, +1, c]
    
    string    string:utf82ws  ( );                                          [-0, +1, -]
    string    string:ws2utf8  ( );                                          [-0, +1, -]
    string    string:utf82s   ( );                                          [-0, +1, -]
    string    string:s2utf8   ( );                                          [-0, +1, -]
]=======]
string.utf82ws        = function( ... ) return utf82ws                     ( ... ); end
string.ws2utf8        = function( ... ) return ws2utf8                     ( ... ); end
string.utf82s         = function( ... ) return utf82s                      ( ... ); end
string.s2utf8         = function( ... ) return s2utf8                      ( ... ); end