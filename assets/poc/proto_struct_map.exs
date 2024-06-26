%{
"InfoAuthenticate" => %{
  base: nil,
  fields: [
    %{name: "TypeName", type: {:string, :dynamic}},
    %{name: "Members", type: {:object, :dynamic}},
    %{name: "AuthenticateInfo", type: {:object, :dynamic}},
  ]
},

"AuthenticateInfo" => %{
  base: nil,
  fields: [
    %{name: "TypeName", type: {:string, :dynamic}}, 
  ]
},

"InfoAuthenticateComplete" => %{
  base: nil,
  fields: [
    %{name: "TypeName", type: {:string, :dynamic}},
    %{name: "Members", type: {:object, :dynamic}},
    %{name: "Success", type: {:boolean, :dynamic}},
    %{name: "SessionKey", type: {:string, :dynamic}},
    %{name: "SessionInitializeInfo", type: {:object, :dynamic}},
    %{name: "FailureReason", type: {:integer, :dynamic}},
    %{name: "FailureReasonData", type: {:object, :dynamic}},
  ]
}