require 'formula'

class Proxychains < Formula
  homepage 'https://github.com/rofl0r/proxychains'
  url 'https://github.com/rofl0r/proxychains/archive/v4.5.tar.gz'
  version '4.5'
  sha1 'f828a0a36b80ad91253572aaf16b4041b6965689'
  head 'https://github.com/rofl0r/proxychains.git'

  def install

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def test
    system "test -x #{prefix}/bin/proxychains4"
  end
end
