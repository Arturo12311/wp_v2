%{
"InfoAuthenticate" => [
  %{name: "AuthenticateInfo", type: :message}
],

"CheatSpawnNpcRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "NpcCuid", type: {:struct, "Cuid"}},
  %{name: "Level", type: {:int, 4}},
  %{name: "NpcBossChaseGrade", type: {:int, 4}},
  %{name: "Count", type: {:int, 4}}
],

"CovenantParticipationInfo" => [
  %{name: "BattalionGuid", type: {:uint, 8}},
  %{name: "CovenantGuid", type: {:uint, 8}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
  %{name: "LivingTotemLocation", type: {:struct, "Vector"}},
  %{name: "LivingTotemMovePathInfo", type: {:nullable, {:struct, "MovePathInfo"}}},
  %{name: "StoppedLivingTotemDeployTime", type: {:nullable, {:struct, "DateTime"}}}
],

"MountItemChangeFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"PubSubChannelInitialDataNotify" => [
  %{name: "__base__", type: {:struct, "PubSubChannelDataNotify"}}
],

"CheatFinishHavenBuildingWorkResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "HavenCuid", type: {:struct, "Cuid"}}
],

"CovenantCampBuildingCraftCancelResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatAcquireFollowerSetRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "FollowerSetCuid", type: {:struct, "Cuid"}},
  %{name: "CountPerEach", type: {:uint, 8}}
],

"ShopCashMerchandiseReceiveRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ReceiveGuidList", type: {:list, {:uint, 8}}}
],

"CovenantTradeCustomerInfo" => [
  %{name: "CovenantGuid", type: {:uint, 8}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
  %{name: "LeadPlayerName", type: :string}
],
%{
  "ErosionInstallCancelFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

  "LocationForceSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CharacterMoveStopInfo", type: {:struct, "CharacterMoveStopInfo"}}
  ],

  "StrongholdBattleBuildingStateInfo" => [
    %{name: "SpawnerCuid", type: {:struct, "Cuid"}},
    %{name: "BuildingCuid", type: {:struct, "Cuid"}},
    %{name: "MaxHealthPoints", type: {:int, 8}},
    %{name: "HealthPoints", type: {:int, 8}},
    %{name: "FieldUid", type: {:struct, "FieldUid"}}
  ],

  "InteractionStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

  "PartySharedFocusTargetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, {:struct, "SharedFocusTargetInfo"}}}
  ],

  "CheatRestoreChatCovenantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

  "DeathPenaltyDeleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DeletedDeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

  "CheatResetDiscoveredSelfieDoodadSpawnersRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ]
}
}