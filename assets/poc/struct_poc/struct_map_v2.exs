[
%{
  "InfoAuthenticate" => [
    %{name: "AuthenticateInfo", type: {:nullable, {:struct, "AuthenticateInfo"}}}
  ],
  "AuthenticateInfo" => [],
  "InfoAuthenticateComplete" => [
    %{name: "Success", type: :bool},
    %{name: "SessionKey", type: :string},
    %{name: "SessionInitializeInfo", type: {:nullable, {:struct, "SessionInitializeInfo"}}},
    %{name: "FailureReason", type: {:int, 4}},
    %{name: "FailureReasonData", type: {:nullable, {:struct, "FailureReasonData"}}}
  ]
}
]