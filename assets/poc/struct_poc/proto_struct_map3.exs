%{
"CheatSpawnNpcRequest" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
  %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
  %{name: "Level", type: {:int, 4}},
  %{name: "NpcBossChaseGrade", type: {:int, 4}},
  %{name: "Count", type: {:int, 4}}
],

"CovenantParticipationInfo" => [
  %{name: "BattalionGuid", type: {:uint, 8}},
  %{name: "CovenantGuid", type: {:uint, 8}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
  %{name: "LivingTotemLocation", type: {:struct, "FVector"}},
  %{name: "LivingTotemMovePathInfo", type: {:nullable, {:struct, "FTzMovePathInfo"}}},
  %{name: "StoppedLivingTotemDeployTime", type: {:nullable, {:struct, "FDateTime"}}}
],

"MountItemChangeFailResponse" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
],

"PubSubChannelInitialDataNotify" => [
  %{name: "__base__", type: {:struct, "FTzPubSubChannelDataNotify"}}
],

"CheatAcquireFollowerSetRequest" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
  %{name: "FollowerSetCuid", type: {:struct, "FTzCuid"}},
  %{name: "CountPerEach", type: {:uint, 8}}
],

"ShopCashMerchandiseReceiveRequest" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
  %{name: "ReceiveGuidList", type: {:list, {:uint, 8}}}
],

"CovenantTradeCustomerInfo" => [
  %{name: "CovenantGuid", type: {:uint, 8}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
  %{name: "LeadPlayerName", type: :string}
],

"ErosionInstallCancelFailResponse" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
],

"CheatFinishHavenBuildingWorkResponse" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
  %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
],

"CovenantCampBuildingCraftCancelResponse" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
],
"LocationForceSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
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
  %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "DoodadGuid", type: {:uint, 8}}
],

"PartySharedFocusTargetNotify" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
  %{name: "SharedFocusTargetInfo", type: {:nullable, {:struct, "SharedFocusTargetInfo"}}}
],

"CheatRestoreChatCovenantResponse" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
],

"DeathPenaltyDeleteResponse" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
  %{name: "DeletedDeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
],

"CheatResetDiscoveredSelfieDoodadSpawnersRequest" => [
  %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
]
}