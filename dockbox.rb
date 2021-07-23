# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dockbox < Formula
  desc "`dockbox` is a useful CLI tool for trying out code from remote repositories. It allows you to to try out code quickly and easily without compromising your own system"
  homepage ""
  version "0.0.2"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sriharivishnu/dockbox/releases/download/v0.0.2/dockbox_0.0.2_Darwin_x86_64.tar.gz"
      sha256 "4a751504d1270e40681898733741716e334a7601097601d1168bd3a64fa65536"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sriharivishnu/dockbox/releases/download/v0.0.2/dockbox_0.0.2_Darwin_arm64.tar.gz"
      sha256 "303133d4ec66af10f3bb62c50c9bc1b840bb3ef26c60a8ff7246eb5dab59fdc6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sriharivishnu/dockbox/releases/download/v0.0.2/dockbox_0.0.2_Linux_x86_64.tar.gz"
      sha256 "80b46382bcaf24f06b1f96b2081c649352c4843de54dbc047ad1221541ea256c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sriharivishnu/dockbox/releases/download/v0.0.2/dockbox_0.0.2_Linux_arm64.tar.gz"
      sha256 "8f98fe18ffe0e75c45d3657fcce41887109254630381078812ac0ed69768c253"
    end
  end

  depends_on "git"
  depends_on "go"

  def install
    bin.install "dockbox"
  end

  def caveats; <<~EOS
    Create a new dockbox by running `dockbox create <url>` command.
  EOS
  end
end
