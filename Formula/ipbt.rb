class Ipbt < Formula
  desc "Program for recording a UNIX terminal session"
  homepage "https://www.chiark.greenend.org.uk/~sgtatham/ipbt/"
  url "https://www.chiark.greenend.org.uk/~sgtatham/ipbt/ipbt-20180824.dc543d3.tar.gz"
  mirror "https://dl.bintray.com/homebrew/mirror/ipbt-20180824.tar.gz"
  version "20180824"
  sha256 "8347b373252a4c7054d476a39933287a146bb0e0f9dbfe86cd23931cf9eabb5c"

  bottle do
    cellar :any_skip_relocation
    sha256 "e6116c578d1327c1c70b7a7b4640360f0a9cbe824b749df0a8a5dcdf67142e6b" => :mojave
    sha256 "ca5fe4bf38c28b6134ef995643328af82277bac9765064cafa95c7be096cbb51" => :high_sierra
    sha256 "f9dd24a2a7bd67ee00a4763b6931975f27443d906d91795962ca8a1eb647d269" => :sierra
    sha256 "3ebaf07effeb98490201a2c8cc38bfdaec25c0db5a6bf3f2936f72b944ee5309" => :el_capitan
    sha256 "511b256cd2f9eda3db809f2a46c47ed72c7a4fadef4fb16bb5197766cc966fe9" => :yosemite
  end

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--disable-dependency-tracking"
    system "make", "install"
  end

  test do
    system "#{bin}/ipbt"
  end
end
