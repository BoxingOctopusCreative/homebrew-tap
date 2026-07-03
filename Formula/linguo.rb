# Binary formula for a personal tap. Regenerated automatically by the
# Release workflow and attached to every GitHub release as linguo.rb.
class Linguo < Formula
  desc "Cross-platform, multi-language runtime, package, and project manager"
  homepage "https://github.com/BoxingOctopusCreative/linguo"
  version "1.0.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.0.0/linguo-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "416a7d048ed37da6e9567dc5f37f7da71d875a117f9382d3def46dbe17cf7826"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.0.0/linguo-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ff99dff312bc98af59b862b2aca3f21f49b8f448a3a41dcb5a6ea25a37ff7f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.0.0/linguo-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef4861f7be8069dd327a06d9e91aa0c419e5ca49e3c3f425f337c8884231a245"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.0.0/linguo-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "528f8caf3edcea5d3b2b7eabf9bede625598b1441e9a8bc37d0fd0d9fd214add"
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
