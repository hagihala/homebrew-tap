require 'formula'

class Proxychains < Formula
  homepage 'https://github.com/rofl0r/proxychains'
  url 'https://github.com/rofl0r/proxychains/archive/v4.4.tar.gz'
  version '4.4'
  sha1 '69a2d9cc1dec5feff0df8dd1dca088d926a6266c'

  # depends_on 'cmake' => :build

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
