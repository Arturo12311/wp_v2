%{
"TlsLikeEncryptServerHello" => [
  %{name: "ServerRandom", type: {:list, {:uint, 1}}},
  %{name: "Exponent", type: {:list, {:uint, 1}}},
  %{name: "Modulus", type: {:list, {:uint, 1}}}
]
}