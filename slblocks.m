function blkStruct = slblocks
    % this function specifies that the library should appear
    % in the Library Browser
    % and be cached in the browser repository
    
    Browser.Library = 'motorlib';
    % 'mylib' is the name of the library
    
    Browser.Name = 'Aeronautic Motor';
    % 'My Library' is the library name that appears
    % in the Library Browser
    
    blkStruct.Browser = Browser;
    