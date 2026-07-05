# Binary formula for a personal tap. Regenerated automatically by the
# Release workflow and attached to every GitHub release as linguo.rb.
class Linguo < Formula
  desc "Cross-platform, multi-language runtime, package, and project manager"
  homepage "https://github.com/BoxingOctopusCreative/linguo"
  version "1.4.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.4.0/linguo-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "2f0f7a4217ffce8226746bee46637632c2c7d8e800ec260dd9a7982e4b812ce9"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.4.0/linguo-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "f4702ce292acee4003fb36375471d3c69bf527eb6d893ccf6637bed2d8ee5c9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.4.0/linguo-v1.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5de9b6ddfd05c7c8bd113e5d563b737052a8150c1031b716234318939a5f0b58"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.4.0/linguo-v1.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85c93761fb7aea9f94557d4825a3446ad6ec3c2a930c6d9a15e8014c78426f90"
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
