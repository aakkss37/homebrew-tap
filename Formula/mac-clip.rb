class MacClip < Formula
  desc "A clipboard history manager for macOS"
  homepage "https://github.com/aakkss37/mac-clip"
  url "https://github.com/aakkss37/mac-clip/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "26d63440463aed2fd7302a4b6e9679272b2600fdda33d6b2004d3f5c520e38c5"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/mac-clip", "--version"
  end
end
