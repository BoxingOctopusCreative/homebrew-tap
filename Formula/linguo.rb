# Binary formula for a personal tap. Regenerated automatically by the
# Release workflow and attached to every GitHub release as linguo.rb.
class Linguo < Formula
  desc "Cross-platform, multi-language runtime, package, and project manager"
  homepage "https://github.com/BoxingOctopusCreative/linguo"
  version "1.2.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.2.0/linguo-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "357422b9d707f20e82fb9f54e50e4209637db0d34b536094b2d4523fb2143f4e"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.2.0/linguo-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "854dc3f20b12168e3c41a9b822418bd3323b1fec29016f1d9780f76e88eaa265"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.2.0/linguo-v1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a73af6321ae051793fe2817cc190c1ece3c973b1a9d01b1f80a6c999a51bc627"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.2.0/linguo-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a194f5979e3be8a41e6c5cef1e03306ff46460c72165c77030b44adb2ddd55a7"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "linguo"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linguo --version")
  end
end
