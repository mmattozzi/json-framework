Pod::Spec.new do |s|
  s.name = "SBJson"
  s.version = "4.0.2"
  s.license = {
    :type => "BSD",
    :text => "    Copyright (C) 2007-2015 Stig Brautaset. All rights reserved.\n\n    Redistribution and use in source and binary forms, with or without\n    modification, are permitted provided that the following conditions are met:\n\n    * Redistributions of source code must retain the above copyright notice, this\n      list of conditions and the following disclaimer.\n    * Redistributions in binary form must reproduce the above copyright notice,\n      this list of conditions and the following disclaimer in the documentation\n      and/or other materials provided with the distribution.\n    * Neither the name of the author nor the names of its contributors may be used\n      to endorse or promote products derived from this software without specific\n      prior written permission.\n\n    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"\n    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE\n    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE\n    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE\n    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL\n    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\n    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER\n    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,\n    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\n    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"
  }
  s.summary = "Chunk-based JSON parser for Objective-C."
  s.description = "    Using this library you can reduce the apparent latency for each\n    download/parse cycle of documents over a slow connection. You can start\n    parsing and feed chunks of the parsed document to your app before the entire\n    document is downloaded.\n\n    Feed the parser one or more chunks of UTF8-encoded data and it will call a\n    block you provide with each root-level document or array. Or, optionally,\n    for each top-level entry in each root-level array.\n\n    This pod is identical to SBJson4, except that can be installed alongside\n    SBJson v3.x. This is handy if you want to use version 4 but rely on a\n    library that depends on a previous version.\n"
  s.homepage = "http://sbjson.org"
  s.source = {
    :git => "https://github.com/stig/json-framework.git",
    :tag => "v4.0.2"
  }
  s.authors = {
    "Stig Brautaset" => "stig@brautaset.org"
  }
  s.social_media_url = "http://twitter.com/stigbra"
  s.requires_arc = true
  s.platforms = {
    "ios" => "5.0",
    "osx" => "10.7"
  }
  s.source_files = "src/main/objc"
  s.public_header_files = "src/main/objc/SBJson4{,Parser,StreamParser,StreamWriter,Writer,StreamTokeniser,NumberWrapper}.h"
end
