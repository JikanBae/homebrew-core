class Takt < Formula
  desc "text-based music programming language"
  homepage "http://takt.sourceforge.net"
  url "https://downloads.sourceforge.net/project/takt/takt-0.310-src.tar.gz"
  sha256 "eb2947eb49ef84b6b3644f9cf6f1ea204283016c4abcd1f7c57b24b896cc638f"

  depends_on "readline"

  def install
    system "./configure", "--prefix=#{prefix}", "--with-lispdir=#{share}/emacs/site-lisp/#{name}"
    system "make", "install"
  end

  test do
    system bin/"takt", "-o etude1.mid", pkgshare/"examples/etude1.takt"
  end
end
