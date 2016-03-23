--[=======[
-------- -------- -------- --------
            mem����
-------- -------- -------- --------
]=======]

--[=======[
��
    string    readmem         ( void* lpmem, size_t size );                 [-2, +1, c]
                                                --��ȡָ���ڴ�λ��ָ����������
    
    --���º�����Ҫ5.3�����ϵ�string.unpack֧�֡��Ͱ汾�������޸�Դ�����֮
    int       mkb             ( void* lpmem );  --��ȡ�з���byteֵ��С��  [-1, +1, c|e]
    int       mkB             ( void* lpmem );  --��ȡ�޷���byteֵ��С��  [-1, +1, c|e]
    int       mkbb            ( void* lpmem );  --��ȡ�з���byteֵ�����  [-1, +1, c|e]
    int       mkBB            ( void* lpmem );  --��ȡ�޷���byteֵ�����  [-1, +1, c|e]

    int       mkw             ( void* lpmem );  --��ȡ�з���wordֵ��С��  [-1, +1, c|e]
    int       mkW             ( void* lpmem );  --��ȡ�޷���wordֵ��С��  [-1, +1, c|e]
    int       mkww            ( void* lpmem );  --��ȡ�з���wordֵ�����  [-1, +1, c|e]
    int       mkWW            ( void* lpmem );  --��ȡ�޷���wordֵ�����  [-1, +1, c|e]
    
    int       mkd             ( void* lpmem );  --��ȡ�з���dwordֵ��С�� [-1, +1, c|e]
    int       mkD             ( void* lpmem );  --��ȡ�޷���dwordֵ��С�� [-1, +1, c|e]
    int       mkdd            ( void* lpmem );  --��ȡ�з���dwordֵ����� [-1, +1, c|e]
    int       mkDD            ( void* lpmem );  --��ȡ�޷���dwordֵ����� [-1, +1, c|e]
    
    float     mkf             ( void* lpmem );  --��ȡfloatֵ��С��       [-1, +1, c|e]
    double    mkF             ( void* lpmem );  --��ȡdoubleֵ��С��      [-1, +1, c|e]
    float     mkff            ( void* lpmem );  --��ȡfloatֵ�����       [-1, +1, c|e]
    double    mkFF            ( void* lpmem );  --��ȡdoubleֵ�����      [-1, +1, c|e]
]=======]
if string.unpack then

function mkb( lp )
  return string.unpack("<i1", readmem(lp, 1));
end

function mkB( lp )
  return string.unpack("<I1", readmem(lp, 1));
end

function mkbb( lp )
  return string.unpack(">i1", readmem(lp, 1));
end

function mkBB( lp )
  return string.unpack(">I1", readmem(lp, 1));
end

function mkw( lp )
  return string.unpack("<i2", readmem(lp, 2));
end

function mkW( lp )
  return string.unpack("<I2", readmem(lp, 2));
end

function mkww( lp )
  return string.unpack(">i2", readmem(lp, 2));
end

function mkWW( lp )
  return string.unpack(">I2", readmem(lp, 2));
end

function mkd( lp )
  return string.unpack("<i4", readmem(lp, 4));
end

function mkD( lp )
  return string.unpack("<I4", readmem(lp, 4));
end

function mkdd( lp )
  return string.unpack(">i4", readmem(lp, 4));
end

function mkDD( lp )
  return string.unpack(">I4", readmem(lp, 4));
end

function mkf( lp )
  return string.unpack("<f", readmem(lp, string.packsize("<f")));
end

function mkF( lp )
  return string.unpack("<d", readmem(lp, string.packsize("<d")));
end

function mkff( lp )
  return string.unpack(">f", readmem(lp, string.packsize(">f")));
end

function mkFF( lp )
  return string.unpack(">d", readmem(lp, string.packsize(">d")));
end

end