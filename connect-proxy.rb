class ConnectProxy < Formula
  homepage "https://bitbucket.org/gotoh/connect"
  url "https://bitbucket.org/gotoh/connect/get/1.104.tar.bz2"
  version "1.104"
  sha256 "e262cd3a6ee66e65187f3780ca808bc8dddee03dc5c5755b2b9c4db10274eb40"

  def install
    system "make"
    bin.install 'connect'
    doc.install Dir['doc/*']
    share.install 'relay.el'
  end

  def caveats; <<-EOS.undent
      See #{doc}/manual.txt
    EOS
  end
  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test connect-proxy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/connect"
  end
end
