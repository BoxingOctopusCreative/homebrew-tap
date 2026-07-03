# Binary formula for a personal tap. Regenerated automatically by the
# Release workflow and attached to every GitHub release as linguo.rb.
class Linguo < Formula
  desc "Cross-platform, multi-language runtime, package, and project manager"
  homepage "https://github.com/BoxingOctopusCreative/linguo"
  version "0.8.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.8.0/linguo-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "660c33a47a6cb20639089fc0251144ae26f0570481c5b9601ece19fae86b1323"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.8.0/linguo-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "4ef444f568ff5beafe5cfa5ecb040b329f75f4cf168d4b6d691312a87e911772"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.8.0/linguo-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfec755503800d1e72ce4eb03c1f9607ce253714a5b4d2134ee32561c4a94fcd"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.8.0/linguo-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1b418d45259529b9355f03923285a81d30c1fc074faa5a7cfd5458ffe206982"
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
