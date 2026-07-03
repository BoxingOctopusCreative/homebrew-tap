# Binary formula for a personal tap. Regenerated automatically by the
# Release workflow and attached to every GitHub release as linguo.rb.
class Linguo < Formula
  desc "Cross-platform, multi-language runtime, package, and project manager"
  homepage "https://github.com/BoxingOctopusCreative/linguo"
  version "0.7.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.7.0/linguo-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "65c7a3ff677bbfda59bcfe6aa27a4bf087ca1b0da6192cece5675a67710072f5"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.7.0/linguo-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "51a6c828bf509857a4fd0c94618212d91730f6afb42a8208ce394e78921589c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.7.0/linguo-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0201a6976468faacd7e01ec6121a3a8718dfa04cb19b911cc23aacb44a5d3f6e"
    end
    on_intel do
      url "https://github.com/BoxingOctopusCreative/linguo/releases/download/v0.7.0/linguo-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49e90ba824087f68906962bf241214ff776d087a14e6e34efcef44dc1c4b9da0"
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
