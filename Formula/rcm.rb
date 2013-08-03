require 'formula'

class Rcm < Formula
  homepage 'http://mike-burns.github.io/rcm'
  url 'https://github.com/mike-burns/rcm/archive/v1.0.0.tar.gz'
  sha1 'a5297c9d82cb58c6f897ad0ae117a0068a4ca2fa'

  depends_on "autoconf"
  depends_on "automake"

  def install
    system "aclocal"
    system "automake --add-missing --copy"
    system "autoconf"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "lsrc"
  end
end
