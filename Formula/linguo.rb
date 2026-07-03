# Binary formula for a personal tap. Regenerated automatically by the
# Release workflow and attached to every GitHub release as linguo.rb.
class Linguo < Formula
  desc "Cross-platform, multi-language runtime, package, and project manager"
  homepage "https://github.com/BoxingOctopusCreative/linguo"
  version "0.9.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.9.0/linguo-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "749296df6e2c8b31491777dce242b9182e80b987c3e5d10e1862a837686f083b"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.9.0/linguo-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "2449c92deea263bdb234858de1dd390e9f961271924cd678eb4487114ca94b84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.9.0/linguo-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6a9a611f3a05ab939c871d598f18094ac013d954e0e55e0669191ef80c6e0a1"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.9.0/linguo-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a07699e01f9463e6b92426d2ffbaebdb6acdaeb0da8aab5beb314cd47afdee8a"
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
