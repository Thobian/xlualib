--[=======[
-------- -------- -------- --------
                zlib����
-------- -------- -------- --------
]=======]

--[=======[
��
    string    zlib_compress   ( string ); --zlib����ѹ��                  [-1, +1, c|v]
    string    zlib_uncompress ( string ); --zlib���ݽ�ѹ��                [-1, +1, c|v]
    string    gzip_compress   ( string ); --gzip����ѹ��                  [-1, +1, c|v]
    string    gzip_uncompress ( string ); --gzip���ݽ�ѹ��                [-1, +1, c|v]

    string    string:zcp      ( );        --zlib����ѹ��                    [-0, +1, v]
    string    string:zup      ( );        --zlib���ݽ�ѹ��                  [-0, +1, v]
    string    string:gzcp     ( );        --gzip����ѹ��                    [-0, +1, v]
    string    string:gzup     ( );        --gzip���ݽ�ѹ��                  [-0, +1, v]
]=======]
string.zcp            = function( ... ) return zlib_compress               ( ... ); end
string.zup            = function( ... ) return zlib_uncompress             ( ... ); end

string.gzcp           = function( ... ) return gzip_compress               ( ... ); end
string.gzup           = function( ... ) return gzip_uncompress             ( ... ); end