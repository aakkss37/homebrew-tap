class MacClip < Formula
  desc "A clipboard history manager for macOS"
  homepage "https://github.com/aakkss37/mac-clip"
  url "https://github.com/aakkss37/mac-clip/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2280edea6f31276beebb46618c75649cab10bc08d4beaddb27b0457d37eda952"
  version "0.2.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/mac-clip", "--version"
  end
end
