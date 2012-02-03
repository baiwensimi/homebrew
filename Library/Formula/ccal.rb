require 'formula'

class Ccal < Formula
  url 'http://ccal.chinesebay.com/ccal/ccal-2.5.2.tar.gz'
  homepage 'http://ccal.chinesebay.com/ccal'
  md5 '93ba6c4af760bcef24aec7d483242b2b'

  # depends_on 'cmake' => :build

  def install
    system "make"
	system "make install"
	system "make -e MANDIR=/usr/local/share/man install-man"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just
    # replace "false" with the main program this formula installs, but
    # it'd be nice if you were more thorough. Test the test with
    # `brew test ccal`. Remove this comment before submitting
    # your pull request!
    system "false"
  end
end
