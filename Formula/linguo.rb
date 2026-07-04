# Binary formula for a personal tap. Regenerated automatically by the
# Release workflow and attached to every GitHub release as linguo.rb.
class Linguo < Formula
  desc "Cross-platform, multi-language runtime, package, and project manager"
  homepage "https://github.com/BoxingOctopusCreative/linguo"
  version "1.3.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.3.0/linguo-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b6f7a2521bb10eff9f18b11dfe367d11878289ce9dc4cb2106fc80373762c681"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.3.0/linguo-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f627026033054af50c896f8a8828d95e88a8f0a25730988088f15018d5a4b53e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.3.0/linguo-v1.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83c3978a26338d24cd86840b889efd2d484105fcbcb24f48e30ff1bafa179e30"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v1.3.0/linguo-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "533e067dcbf5ae623451170d36eb5fe72b3449439801d7e45de48cf0c64e049f"
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
