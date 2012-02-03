require 'formula'

class Ccal < Formula
  url 'http://ccal.chinesebay.com/ccal/ccal-2.5.2.tar.gz'
  homepage 'http://ccal.chinesebay.com/ccal'
  md5 '93ba6c4af760bcef24aec7d483242b2b'

  def install
    system "make"
	system "make install"
	system "make -e MANDIR=/usr/local/share/man install-man"
  end

end
