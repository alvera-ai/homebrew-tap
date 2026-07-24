# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite --force alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.13.0-next.gec39a4d"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gec39a4d/alvera-0.13.0-next.gec39a4d-darwin-arm64.tar.gz"
      sha256 "e18cb17580ab4ebfd98ccd42a4f8dff2185abbfd256519304c6cb41faa38f05d"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gec39a4d/alvera-0.13.0-next.gec39a4d-darwin-x64.tar.gz"
      sha256 "ce3d16c11b257b256fb26135461af1e4a76c81543725836f410d2ae52364f1b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gec39a4d/alvera-0.13.0-next.gec39a4d-linux-x64.tar.gz"
      sha256 "0b67f2157d6c88620b01c09eb599b171d04e469e8c0df691dc04627d0dd93d8a"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0-next.gec39a4d/alvera-0.13.0-next.gec39a4d-linux-arm64.tar.gz"
      sha256 "15051327b38ea1285ec43dc6fc8bfa2b0eba47f9b7be8c43f4867c1aaf16f3c0"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
