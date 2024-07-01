%{
Here's the Elixir-friendly structure for the provided C++ function pairs:

  "NpcInfo" => [
    %{name: "__base__", type: {:struct, "CharacterInfo"}},
    %{name: "NpcCuid", type: {:struct, "Cuid"}},
    %{name: "SpawnerCuid", type: {:struct, "Cuid"}},
    %{name: "MovePatternCuid", type: {:struct, "Cuid"}},
    %{name: "AffiliatedBuildingGuid", type: {:uint, 8}},
    %{name: "AffiliatedBuildingCuid", type: {:struct, "Cuid"}},
    %{name: "StrongholdBattleDeploymentKind", type: :message},
    %{name: "SummonerGuid", type: {:uint, 8}},
    %{name: "FactionProxyInfo", type: {:nullable, {:struct, "FactionProxyInfo"}}},
    %{name: "NpcBossChaseGrade", type: {:int, 4}},
    %{name: "JoinedExpeditionGuid", type: {:uint, 8}},
    %{name: "AffiliatedBattalionGuid", type: {:uint, 8}},
    %{name: "IsInSeekHidingAttackTargetState", type: :bool},
    %{name: "AttackerPlayerGuids", type: {:list, {:uint, 8}}}
  ],

  "CovenantOrganizationStatsDetailInfo" => [
    %{name: "Stats", type: :message}
  ],

  "CharacterPublicStatsInfo" => [
    %{name: "__base__", type: {:struct, "CharacterStatsInfo"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "HealthPoints", type: {:int, 8}},
    %{name: "MaxHealthPoints", type: {:int, 8}},
    %{name: "WalkSpeed_cmpsec", type: {:int, 2}},
    %{name: "WalkAngularSpeed_radpsec", type: :float},
    %{name: "RunSpeed_cmpsec", type: {:int, 2}},
    %{name: "RunAngularSpeed_radpsec", type: :float}
  ],

  "SkillStageFlowNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "Cuid"}},
    %{name: "SkillSiid", type: {:int, 4}},
    %{name: "SkillStageFlowSiid", type: {:int, 4}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SubTargetingLocations_cm", type: {:list, {:struct, "Vector"}}},
    %{name: "AffectExemptLocations_cm", type: {:list, {:struct, "Vector2D"}}},
    %{name: "SkillStageInfos", type: {:list, {:struct, "SkillStageInfo"}}},
    %{name: "ServerUtcNow", type: {:struct, "DateTime"}},
    %{name: "FireAndForgetCasterHoldDurationCalculatedWithStatInfo_msec", type: {:int, 4}}
  ],

  "StrongholdBattleUseSiegeWeaponSlotRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "SiegeWeaponItemCuid", type: {:struct, "Cuid"}}
  ],

  "CheatRealmIntegrationConvertToIntegratedRealmAccountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PreviousRealmCuid", type: {:struct, "Cuid"}}
  ],

  "RealmIntegrationBattleRealmScoreInfo" => [
    %{name: "RealmCuid", type: {:struct, "Cuid"}},
    %{name: "Scores", type: :message}
  ],

  "RegionContentPlayTimeInfoBySec" => [
    %{name: "BaseRemainingDuration_sec", type: {:int, 4}},
    %{name: "RechargedRemainingDuration_sec", type: {:int, 4}}
  ],

  "MountStationaryCallingRequest" => [
    %{name: "__base__", type: {:struct, "MountCallingRequest"}},
    %{name: "PlayerFacingDirectionYaw_rad", type: :float}
  ],

  "TerritoryInfo" => [
    %{name: "__base__", type: {:struct, "DistrictInfo"}},
    %{name: "OccupyingCovenantVuid", type: {:struct, "Vuid"}},
    %{name: "OccupyingCovenantName", type: :string},
    %{name: "OccupyingCovenantLevel", type: {:int, 4}},
    %{name: "TerritoryEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "DeployedLivingTotemCuid", type: {:struct, "Cuid"}},
    %{name: "LeadingCovenantCampEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "EntanglementGauge", type: {:int, 4}},
    %{name: "BuildingLevels", type: :message},
    %{name: "AddNpcCraftGreatSuccessRatio_pe4", type: {:int, 4}},
    %{name: "StrongholdProtectionExpirationDateTime", type: {:struct, "DateTime"}},
    %{name: "ErosionItemConfigurationInfo", type: {:nullable, {:struct, "TerritoryErosionItemConfigurationInfo"}}},
    %{name: "NoticeInfo", type: {:nullable, {:struct, "TerritoryNoticeInfo"}}},
    %{name: "ContaminationInfo", type: {:nullable, {:struct, "ContaminationInfo"}}},
    %{name: "TaxInfo", type: {:nullable, {:struct, "TaxInfo"}}},
    %{name: "StrongholdBuildingAccessPermissionKinds", type: :message},
    %{name: "StrongholdBattleAttackPhase", type: :message},
    %{name: "HavenEventInfos", type: :message}
  ],
"StrategicObjectiveTargetInfo" => [
  %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
  %{name: "SpawnerCuid", type: {:struct, "Cuid"}},
  %{name: "Cuid", type: {:struct, "Cuid"}},
  %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
  %{name: "MaxHealthPoints", type: {:int, 8}},
  %{name: "HealthPoints", type: {:int, 8}}
],

"EntitySpawnNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "EntityInfo", type: :message},
  %{name: "EntitySpawnReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
],

"ItemInfo" => [
  %{name: "Guid", type: {:uint, 8}},
  %{name: "Cuid", type: {:struct, "Cuid"}},
  %{name: "IsBound", type: :bool},
  %{name: "IsStorable", type: :bool},
  %{name: "ExpireDateTime", type: {:nullable, {:struct, "FDateTime"}}},
  %{name: "AcquiredDateTime", type: {:struct, "FDateTime"}},
  %{name: "IsLocked", type: :bool}
],

"ToeCustomizeInfo" => [
  %{name: "ToeBase", type: {:struct, "FVector"}},
  %{name: "ToeNub", type: {:struct, "FVector"}}
],

"PlayerSlotExpansionCostCurrencyAmountRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"BuildingUpgradeRequestInfo" => [
  %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}},
  %{name: "BuildingLevelToUpgrade", type: {:int, 4}}
],

"CheatCreateAndEquipGuiseRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "GuiseCuid", type: {:struct, "Cuid"}}
],

"CheatUnsetStatRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StatKind", type: {:enum, "ETzAdjustableStatKindType"}}
],

"CovenantUpdateEmblemInfoFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"MonsterBookAnalyzeResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CategoryCuid", type: {:struct, "Cuid"}},
  %{name: "AnalysisCount", type: {:int, 8}},
  %{name: "AnalyzedStateInfos", type: {:list, {:struct, "MonsterBookNodeStateInfo"}}},
  %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}},
  %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
  %{name: "CurrencyUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
],
"CheatStartOccupiableNpcBossBattleRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "RegionCuid", type: {:struct, "Cuid"}},
  %{name: "BossMatchGroup", type: {:int, 4}}
],

"CspSupporterInfoResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "MessageId", type: {:int, 4}},
  %{name: "Code", type: {:int, 4}},
  %{name: "Message", type: :string},
  %{name: "CspSupporterInfo", type: {:nullable, {:struct, "CspSupporterInfo"}}}
],

"MarketStrongholdTaxInfo" => [
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
  %{name: "CurrentTaxRate_pe2", type: {:int, 4}}
],

"CheatChangeCrossRealmSeasonMaxEnterablePlayerCapacityRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "SeasonCuid", type: {:struct, "Cuid"}},
  %{name: "MaxEnterablePlayerCapacity", type: {:int, 4}}
],

"FollowerImmediateResurrectionResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
  %{name: "FollowerGuid", type: {:uint, 8}}
],

"ClasseChangeItemUseParameterInfo" => [
  %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
  %{name: "Classe", type: :message},
  %{name: "BeforeGearGuidToAfterGearCuids", type: :message},
  %{name: "BeforeArquiruneCuidToAfterArquiruneCuids", type: :message}
],

"CovenantQueryRecommendCovenantSummaryInfoListResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
],

"BuildingBaseBuildingExistenceSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "IsBaseBuildingExist", type: :bool}
],

"SelfieModeLeaveNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}}
],
"SeasonPassAchievementRewardResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "MessageId", type: {:int, 4}},
  %{name: "SeasonPassExperiencePoints", type: {:int, 8}}
],

"CovenantCompleteArchitectureHistoryInfo" => [
  %{name: "__base__", type: {:struct, "CovenantHistoryInfo"}},
  %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}},
  %{name: "OrderedBuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
  %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
  %{name: "WorkStartBuildingLevel", type: {:int, 4}},
  %{name: "TargetBuildingLevel", type: {:int, 4}}
],

"MarketSellWithdrawRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "GoodsGuid", type: {:uint, 8}}
],

"CovenantSynchronizeRecommendedResourceKindNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
  %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ETzResourceKindType"}}}
],

"WarehouseInfo" => [
  %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
  %{name: "PointCurrencyContainerInfo", type: {:map, {:struct, "FTzCuid"}, {:int, 8}}},
  %{name: "InventoryInfo", type: {:nullable, {:struct, "FTzInventoryInfo"}}}
],

"PlayerInterServerMigrationInfo" => [
  %{name: "SourceServerKey", type: {:uint, 2}},
  %{name: "DestinationServerKey", type: {:uint, 2}},
  %{name: "GameServerAuthenticateKey", type: {:int, 4}}
],

"CashShopMerchandiseInfo" => [
  %{name: "Cuid", type: {:struct, "FTzCuid"}},
  %{name: "TextCuid", type: {:struct, "FTzCuid"}},
  %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
  %{name: "ToyProductId", type: :string},
  %{name: "CurrencyAmount", type: {:int, 4}},
  %{name: "RewardMileagePoint", type: {:int, 4}},
  %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
  %{name: "RewardReceiveKind", type: {:enum, "ETzShopMerchandiseReceiveKindType"}},
  %{name: "IsAutoUsing", type: :bool},
  %{name: "CovenantGiftCuid", type: {:struct, "FTzCuid"}},
  %{name: "RequiredPlayerLevel", type: {:int, 4}},
  %{name: "RequiredPlayerSlayingGrade", type: {:int, 4}},
  %{name: "RequiredQuestCuid", type: {:struct, "FTzCuid"}},
  %{name: "RequiredGrowthGuideCuid", type: {:struct, "FTzCuid"}},
  %{name: "RequiredCovenantLevel", type: {:int, 4}},
  %{name: "BuyLimitResetCycle", type: {:enum, "ETzBuyOrCraftLimitResetCycleType"}},
  %{name: "TotalBuyLimitLevel", type: {:enum, "ETzTotalBuyLimitLevelType"}},
  %{name: "TotalBuyLimitCount", type: {:int, 4}},
  %{name: "BuyLimitLevel", type: {:enum, "ETzBuyOrCraftLimitLevelType"}},
  %{name: "BuyLimitCount", type: {:int, 4}},
  %{name: "MaxBuyCount", type: {:int, 4}}
],

"CheatCloseFogRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "FogCuid", type: {:struct, "FTzCuid"}}
],

"CheatChangeAmityResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "ClanCuid", type: {:struct, "FTzCuid"}},
  %{name: "Amity", type: {:int, 8}}
],
"CashShopSubCategoryInfo" => [
  %{name: "Cuid", type: {:struct, "Cuid"}},
  %{name: "TextCuid", type: {:struct, "Cuid"}},
  %{name: "MainCategoryCuid", type: {:struct, "Cuid"}},
  %{name: "SortOrder", type: {:int, 4}},
  %{name: "SubCategoryKind", type: {:enum, "ETzShopSubCategoryKindType"}},
  %{name: "TargetUserKind", type: {:enum, "ETzShopTargetUserKindType"}},
  %{name: "TimeLimitTarget", type: {:enum, "ETzShopTimeLimitTargetKindType"}},
  %{name: "StartDateTime", type: {:struct, "FDateTime"}},
  %{name: "EndDateTime", type: {:struct, "FDateTime"}},
  %{name: "IsShowDateTime", type: :bool},
  %{name: "UserRemainTimeToBuy", type: {:int, 4}},
  %{name: "PurchaseApplicableLoginStartDateTime", type: {:struct, "FDateTime"}},
  %{name: "PurchaseApplicableLoginEndDateTime", type: {:struct, "FDateTime"}},
  %{name: "ShowCurrency", type: {:struct, "Cuid"}},
  %{name: "IsHideSubCategory", type: :bool}
],

"GearEnhancementSuccessNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "PlayerName", type: :string},
  %{name: "GearInfo", type: {:nullable, {:struct, "GearInfo"}}},
  %{name: "DisplaySystemMessage", type: :bool},
  %{name: "DisplayChatMessage", type: :bool}
],

"CheatAcquireCovenantLeaderResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"ServerDrivenPlayRewardInfo" => [
  %{name: "GainedExperiencePoints", type: {:int, 8}},
  %{name: "GainedSpiritualBondPower", type: {:int, 8}},
  %{name: "GainedCurrencies", type: {:map, {:struct, "Cuid"}, {:int, 8}}},
  %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
],

"CheckIsInCovenantRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "RealmCuid", type: {:struct, "Cuid"}},
  %{name: "PlayerGuid", type: {:uint, 8}}
],

"ProtocolConstants" => [
],

"CheatSpawnDoodadResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
]
}
