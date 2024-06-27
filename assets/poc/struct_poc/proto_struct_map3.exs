[
%{
  {"CheatSpawnNpcRequest",
   [
     %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
     %{name: "Level", type: {:int, 4}},
     %{name: "NpcBossChaseGrade", type: {:int, 4}},
     %{name: "Count", type: {:int, 4}}
   ]},

  {"CovenantParticipationInfo",
   [
     %{name: "BattalionGuid", type: {:uint, 8}},
     %{name: "CovenantGuid", type: {:uint, 8}},
     %{name: "CovenantName", type: :string},
     %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
     %{name: "LivingTotemLocation", type: {:struct, "FVector"}},
     %{name: "LivingTotemMovePathInfo", type: {:nullable, {:struct, "FTzMovePathInfo"}}},
     %{name: "StoppedLivingTotemDeployTime", type: {:nullable, {:struct, "FDateTime"}}}
   ]},

  {"MountItemChangeFailResponse",
   [
     # No specific members, only inherits from FTzErTozMessageWithResultCode
   ]},

  {"PubSubChannelInitialDataNotify",
   [
     # No specific members, only inherits from FTzPubSubChannelDataNotify
   ]},

  {"CheatFinishHavenBuildingWorkResponse",
   [
     %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
   ]},

  {"CovenantCampBuildingCraftCancelResponse",
   [
     # No specific members, only inherits from FTzErTozMessageWithResultCode
   ]},

  {"CheatAcquireFollowerSetRequest",
   [
     %{name: "FollowerSetCuid", type: {:struct, "FTzCuid"}},
     %{name: "CountPerEach", type: {:uint, 8}}
   ]},

  {"ShopCashMerchandiseReceiveRequest",
   [
     %{name: "ReceiveGuidList", type: {:list, {:uint, 8}}}
   ]},

  {"CovenantTradeCustomerInfo",
   [
     %{name: "CovenantGuid", type: {:uint, 8}},
     %{name: "CovenantName", type: :string},
     %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
     %{name: "LeadPlayerName", type: :string}
   ]},

  {"ErosionInstallCancelFailResponse",
   [
     # No specific members, only inherits from FTzErTozMessageWithResultCode
   ]}
},
%{
  "LocationForceSynchronizeNotify" => [
    %{name: "CharacterMoveStopInfo", type: {:struct, "FTzCharacterMoveStopInfo"}}
  ],
  "StrongholdBattleBuildingStateInfo" => [
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "MaxHealthPoints", type: {:int, 8}},
    %{name: "HealthPoints", type: {:int, 8}},
    %{name: "FieldUid", type: {:struct, "FTzFieldUid"}}
  ],
  "InteractionStartNotify" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],
  "PartySharedFocusTargetNotify" => [
    %{name: "SharedFocusTargetInfo", type: {:nullable, {:struct, "SharedFocusTargetInfo"}}}
  ],
  "CheatRestoreChatCovenantResponse" => [],
  "DeathPenaltyDeleteResponse" => [
    %{name: "DeletedDeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],
  "CheatResetDiscoveredSelfieDoodadSpawnersRequest" => []
}
]