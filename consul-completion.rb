class ConsulCompletion < Formula
  desc "Bash completion for Hashicorp's Consul"
  homepage "https://consul.io"
  url "https://raw.githubusercontent.com/nzroller/consul-bash-completion/master/consul"
  sha256 "bcc42725a177d358d5472ee952e8715bc4548d0575541eb7d21025d746795a29"
  head "https://github.com/nzroller/consul-completion.git"
  version 1.0

  def install
    bash_completion.install "consul"
  end

  test do
    assert_match "-F _consul",
      shell_output("bash -c 'source #{bash_completion}/consul && complete -p consul'")
  end
end
