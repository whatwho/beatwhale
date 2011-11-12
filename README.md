beatwhale
===========

Beatwhale is a Ruby Library for Grooveshark's official closed API.

Features
--------

* can search in songs
* can retreive song's stream URL
* handles countries

Examples
--------

    beatwhale = bc = Beatwhale::Client.new( 
      "your_api_key", 
      "your_api_secret", 
      "your_ip_address", 
      "file/path/to/session_cache" )
    beatwhale.search_songs( "Thievery Corporation Radio Retalation" )

Requirements
------------

Install
-------

* gem install beatwhale

Author
------

Original author: Beöthy Miklós

License
-------

(The MIT License) FIXME (different license?)

Copyright (c) 2011 FIXME (author's name)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
