[
  {"BuffMoveAffectInfo",
   [
     %{name: "Destination_cm", type: {:struct, "FVector"}}
   ]},
  {"BuffFaceCasterMoveAffectInfo",
   [
     %{name: "BuffMoveAffectInfo", type: {:struct, "BuffMoveAffectInfo"}},
     %{name: "FaceDirection", type: {:struct, "FVector"}}
   ]},
  {"BuildingWorkOrderInfo",
   [
     %{name: "OrderedBuildingSpawnerCuid", type: {:uint, 4}},
     %{name: "BuildingCuid", type: {:uint, 4}},
     %{name: "BuildingWorkKind", type: {:uint, 1}},
     %{name: "BuildingLevelOnStart", type: {:uint, 4}},
     %{name: "BuildingLevelToTarget", type: {:uint, 4}},
     %{name: "IsRecommended", type: {:uint, 1}},
     %{name: "BuildingRepairPercentage", type: {:uint, 4}},
     %{name: "BuildingCraftCuidAndCountInfo", type: {:nulleable, {:struct, "CuidAndCountInfo"}}},
     %{name: "ResearchCuid", type: {:uint, 4}},
     %{name: "ResearchLevel", type: {:uint, 4}}
   ]},
  {"ProgressInfo",
   [
     %{name: "CompletionGauge_pe3", type: {:uint, 8}},
     %{name: "LastUpdateGauge_pe3", type: {:uint, 8}},
     %{name: "IncrementGauge_pe3_psec", type: {:uint, 4}},
     %{name: "LastUpdateDateTime", type: {:struct, "FDateTime"}},
     %{name: "CompletionDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"BuildingWorkInfo",
   [
     %{name: "OrderInfo", type: {:nulleable, {:struct, "BuildingWorkOrderInfo"}}},
     %{name: "MaxWorkerCount", type: {:uint, 4}},
     %{name: "CurrentWorkerCount", type: {:uint, 4}},
     %{name: "ProgressInfo", type: {:nulleable, {:struct, "ProgressInfo"}}}
   ]},
  {"BuildingWorkSynchronizeNotify",
   [
     %{name: "EntitySynchronizeMessage", type: {:struct, "EntitySynchronizeMessage"}},
     %{name: "BuildingWorkInfo", type: {:nulleable, {:struct, "BuildingWorkInfo"}}}
   ]},
  {"RestrictedResurrectionInfo",
   [
     %{name: "DistrictGroupCuidOnDeath", type: :Cuid},
     %{name: "ResurrectionExpireDateTime", type: {:struct, "FDateTime"}},
     %{name: "ResurrectorLocationInfoUsingItem", type: {:nulleable, {:struct, "LocationInfo"}}},
     %{name: "ResurrectorLocationInfoNotUsingItem", type: {:nulleable, {:struct, "LocationInfo"}}}
   ]},
  {"PlayerDeathNotify",
   [
     %{name: "DeathRecordInfo", type: :message},
     %{
       name: "RestrictedResurrectionInfo",
       type: {:nulleable, {:struct, "RestrictedResurrectionInfo"}}
     }
   ]},
  {"OccupiableNpcBossSpawnInfo",
   [
     %{name: "BossSpawnInfo", type: {:nulleable, {:struct, "BossSpawnInfo"}}},
     %{name: "DespawnDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"AutoBuyInfo",
   [
     %{name: "GoodsCuid", type: :Cuid},
     %{name: "Count", type: {:uint, 4}}
   ]},
  {"EntityRemoveBulkNotify",
   [
     %{name: "EntityGuids", type: {:list, {:uint, 8}}},
     %{name: "EntityRemoveReason", type: {:uint, 1}}
   ]},
  {"PaidAttendanceInfo",
   [
     %{name: "PaidAttendanceCuid", type: :Cuid},
     %{name: "PaidDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "AttendanceCount", type: {:uint, 4}},
     %{name: "ReceivedAttendanceRewardCount", type: {:uint, 4}},
     %{name: "IsVisibleNotificationMarker", type: :bool}
   ]},
  {"OtherPlayerLootNotify",
   [
     %{name: "NpcGuid", type: {:uint, 8}},
     %{name: "NpcLocation_cm", type: {:struct, "FVector"}},
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerLocation_cm", type: {:struct, "FVector"}},
     %{name: "ItemIndexWithCounts", type: {:list, :message}},
     %{name: "IsErosionInstallerReward", type: :bool}
   ]},
  {"ItemBoundAndErodedSelector",
   [
     %{name: "ItemCuid", type: :Cuid},
     %{name: "IsBound", type: :bool},
     %{name: "IsStorable", type: :bool},
     %{name: "IsEroded", type: :bool},
     %{name: "ItemCount", type: {:uint, 1}}
   ]},
  {"EquipmentPresetInfo",
   [
     %{name: "GuiseCuid", type: :Cuid},
     %{name: "MountItemCuid", type: :Cuid},
     %{name: "GearSlotInfos", type: {:list, {:nulleable, {:struct, "GearSlotInfo"}}}}
   ]},
  {"ReturnItemUseParameterInfo",
   [
     %{name: "CovenantReturnHavenCuid", type: :Cuid}
   ]},
  {"AffiliatedBattalionInfo",
   [
     %{name: "BattalionGuid", type: {:uint, 8}},
     %{name: "OwnerCovenantGuid", type: {:uint, 8}}
   ]},
  {"ErosionItemUseParameterInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "IsWithoutPermission", type: :bool},
     %{name: "CostGoldAmount", type: {:uint, 8}}
   ]},
  {"PlayerRealmIntegrationBattleInfo",
   [
     %{
       name: "SeasonInfos",
       type: {:map, :Cuid, {:struct, "PlayerRealmIntegrationBattleSeasonInfo"}}
     }
   ]},
  {"AccountAffectInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "AccountAffectKind", type: {:uint, 1}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "ExpireDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"FavorQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: :Cuid},
     %{name: "FavorList", type: {:list, :message}},
     %{name: "FavorMissionList", type: {:list, :message}},
     %{name: "BossChaseGauge", type: {:uint, 4}},
     %{name: "TerritoryCuid", type: :Cuid},
     %{name: "IsFavorBossActivated", type: {:uint, 1}},
     %{name: "HasAcceptedFavorBossToday", type: {:uint, 1}},
     %{name: "DailyAcceptableFavorRemainingCount", type: {:uint, 4}},
     %{name: "FavorRefreshCostIndex", type: {:uint, 4}}
   ]},
  {"FavorQueryRequest",
   [
     %{name: "TerritoryCuid", type: :Cuid}
   ]},
  {"BasicAchievementPrivateChannelKeepaliveRequest", []},
  {
    "ErFrontServerSessionReinitializeInfo",
    [
      %{
        name: "ErServerSessionInitializeInfo",
        type: {:struct, "ErServerSessionInitializeInfo"}
      },
      %{
        name: "RealmAccountInfo",
        type: {:nulleable, {:struct, "RealmAccountInfo"}}
      },
      %{
        name: "PlayerSummaryInfos",
        type: {:map, 8, {:nulleable, {:struct, "PlayerSummaryInfo"}}}
      },
      %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
      %{name: "PopupCommunityAutomatically", type: {:uint, 1}}
    ]
  },
  {
    "ErLoginServerReauthenticateInfo",
    [
      %{name: "LocalAreaNetworkAddress", type: :string},
      %{name: "AuthenticateKey", type: {:uint, 4}}
    ]
  },
  {"ChatRoomListUpdateNotify",
   [
     %{name: "AddedChatRoomRecordsInitializationInfos", type: {:list, :message}},
     %{name: "DeletedChatRoomGuids", type: {:list, 8}}
   ]},
  {"CrossRealmChatRoomRecordsInitializationInfo",
   [
     %{
       name: "ChatRoomRecordsInitializationInfo",
       type: {:struct, "ChatRoomRecordsInitializationInfo"}
     },
     %{name: "CountForFree", type: {:uint, 4}}
   ]},
  {"ChatRoomRecordsInitializationInfo",
   [
     %{name: "ChatKind", type: {:uint, 1}},
     %{name: "ChatRoomGuid", type: {:uint, 8}},
     %{name: "ChannelIndex", type: {:uint, 2}},
     %{name: "ChatRecordsMetaData", type: {:nulleable, {:struct, "ChatRecordsMetaData"}}},
     %{name: "FirstRecordIndex", type: {:uint, 8}},
     %{name: "LastRecordIndex", type: {:uint, 8}},
     %{name: "ChatMessageInfos", type: {:list, :message}}
   ]},
  {"ChatRecordsMetaData",
   [
     %{name: "RecordsBeginIndex", type: {:uint, 8}},
     %{name: "RecordsEndIndex", type: {:uint, 8}},
     %{name: "LastViewedRecordInde", type: {:uint, 8}}
   ]},
  {"CrossRealmCovenantDiplomacySynchronizeNotify",
   [
     %{name: "CovenantSupportInfos", type: {:nulleable, {:struct, "CovenantDiplomacyInfos"}}}
   ]},
  {"CovenantRealmTransferInfoSynchronizeNotify",
   [
     %{name: "CovenantSupportInfos", type: {:nulleable, {:struct, "CovenantRealmTransferInfo"}}}
   ]},
  {"CovenantSupportSynchronizeNotify",
   [
     %{name: "CovenantSupportInfos", type: {:nulleable, {:struct, "PlayerCovenantSupportInfo"}}}
   ]},
  {"PlayerCovenantSupportInfo",
   [
     %{name: "HasCovenantSupportableFollower", type: :bool},
     %{name: "CovenantSupportedCount", type: {:nulleable, {:struct, "LimitedCountingInfo"}}}
   ]},
  {"CovenantDiplomacySynchronizeNotify",
   [
     %{name: "CovenantDiplomacyInfos", type: {:nulleable, {:struct, "CovenantDiplomacyInfos"}}}
   ]},
  {"CovenantOrganizationStatsSynchronizeNotify",
   [
     %{
       name: "CovenantOrganizationStatsDetailInfo",
       type: {:nulleable, {:struct, "CovenantOrganizationStatsDetailInfo"}}
     }
   ]},
  {"CovenantOrganizationStatsDetailInfo",
   [
     %{name: "Stats", type: {:map, 4, {:map, :Cuid, 4}}}
   ]},
  {"CrossRealmSeasonInfoNotify",
   [
     %{name: "CrossRealmSeasonInfos", type: {:map, {:enum, "RegionContentKindType"}, :message}}
   ]},
  {"CrossRealmSeasonInfo",
   [
     %{name: "SeasonCuid", type: :Cuid},
     %{name: "RegionContentKind", type: {:uint, 1}},
     %{name: "IsUnderMaintenance", type: :bool},
     %{name: "PreseasonStartUtcDateTime", type: {:struct, "FDateTime"}},
     %{name: "StartUtcDateTime", type: {:struct, "FDateTime"}},
     %{name: "EndUtcDateTime", type: {:struct, "FDateTime"}},
     %{name: "PostseasonEndUtcDateTime", type: {:struct, "FDateTime"}},
     %{name: "MatchingGroupNameTextCuid", type: :Cuid},
     %{name: "MatchedRealmCuids", type: {:list, :Cuid}},
     %{name: "SeasonInfoPageUrl", type: :string}
   ]},
  {"CovenantBuildingWorkInitialDataNotify",
   [
     %{name: "PubSubChannelInitialDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "BuildingWorkInfos", type: {:map, :Cuid, {:map, :Cuid, :message}}}
   ]},
  {"TerritoryErosionItemConfigurationQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: :Cuid},
     %{name: "TerritoryCuid", type: :Cuid},
     %{
       name: "TerritoryErosionItemConfigurationInfo",
       type: {:nulleable, {:struct, "TerritoryErosionItemConfigurationInfo"}}
     }
   ]},
  {"TerritoryErosionItemConfigurationInfo",
   [
     %{name: "IsPermitted", type: :bool},
     %{name: "InstallCostGoldPerUnitContamination", type: {:uint, 8}}
   ]},
  {"FindPathResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: :Cuid},
     %{name: "MessageId", type: {:uint, 4}},
     %{name: "NearestRoadJunctionToStartLocationId", type: {:uint, 4}},
     %{name: "NearestRoadJunctionToDestinationId", type: {:uint, 4}},
     %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, {:struct, "FVector"}}},
     %{name: "PathFromLastRoadJunctionToDestination", type: {:list, {:struct, "FVector"}}},
     %{name: "PathNotByRoad", type: {:list, {:struct, "FVector"}}},
     %{
       name: "PathToNearestRoadJunctionToStartLocationOneShotSpecialMoveIndices",
       type: {:list, {:uint, 4}}
     },
     %{
       name: "PathFromLastRoadJunctionToDestinationOneShotSpecialMoveIndices",
       type: {:list, {:uint, 4}}
     },
     %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:uint, 4}}}
   ]},
  {"GoodsBuyCountInfo",
   [
     %{name: "GoodsCuid", type: :Cuid},
     %{name: "Count", type: {:uint, 8}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"FindShortestTravelPathResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: :Cuid},
     %{name: "MessageId", type: :Cuid},
     %{name: "Destination_cm", type: {:struct, "FVector"}},
     %{name: "BuildingSpawnerCuid", type: :Cuid},
     %{name: "ReturnItemCuid", type: :Cuid},
     %{name: "StartWarpPointCuid", type: :Cuid},
     %{name: "DestinationWarpPointCuid", type: :Cuid},
     %{name: "NearestRoadJunctionToStartLocationId", type: :Cuid},
     %{name: "NearestRoadJunctionToDestinationId", type: :Cuid},
     %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, {:struct, "FVector"}}},
     %{name: "PathFromLastRoadJunctionToDestination", type: {:list, {:struct, "FVector"}}},
     %{name: "PathNotByRoad", type: {:list, {:struct, "FVector"}}},
     %{
       name: "PathToNearestRoadJunctionToStartLocationOneShotSpecialMoveIndices",
       type: {:list, {:uint, 4}}
     },
     %{
       name: "PathFromLastRoadJunctionToDestinationOneShotSpecialMoveIndices",
       type: {:list, {:uint, 4}}
     },
     %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:uint, 4}}}
   ]},
  {"PlayerCampaignInfo",
   [
     %{name: "ActiveCampaignProgressInfos", type: {:map, :Cuid, {:list, :Cuid}}},
     %{name: "CampaignTicketInfos", type: {:map, :Cuid, :message}}
   ]},
  {"CampaignTicketInfo",
   [
     %{name: "TicketCuid", type: :Cuid},
     %{name: "TicketCount", type: {:uint, 4}}
   ]},
  {"RealmAccountWarehouseItemRetrieveRequest",
   [
     %{name: "NpcGuid", type: {:uint, 8}},
     %{name: "ItemGuidSelectors", type: {:list, {:nulleable, {:struct, "ItemGuidSelector"}}}}
   ]},
  {"AnniversaryAchievementRewardResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: :Cuid},
     %{name: "AnniversaryCuid", type: :Cuid},
     %{name: "AnniversaryAchievementCycleBeginDateTime", type: {:struct, "FDateTime"}},
     %{name: "AchievementCuid", type: :Cuid},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"DisplayRealmTransferQueryRequest", []},
  {"AnniversaryQueryRequest", [%{name: "MessageId", type: {:uint, 4}}]},
  {"RealmAccountWarehouseAutoStoreSettingUpdateResponse",
   [%{name: "ErTozMessageWithResultCode", type: :Cuid}]},
  {"RealmAccountWarehouseAutoStoreSettingUpdateRequest",
   [%{name: "AutoStoreSettings", type: {:map, 4, {:enum, "ItemGradeType"}}}]},
  {"RealmCovenantId",
   [
     %{name: "RealmCuid", type: :Cuid},
     %{name: "CovenantVuid", type: {:struct, "Vuid"}}
   ]},
  {"CollectionSlotItemRegisterResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "CollectionCuid", type: :Cuid},
     %{name: "CollectionSlotItemCuid", type: :Cuid},
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"TerritoryErosionItemConfigurationQueryRequest",
   [
     %{name: "TerritoryCuid", type: :Cuid}
   ]},
  {"FindClosestLocationOnNavMeshRequest",
   [
     %{name: "LocationInfo", type: {:nulleable, {:struct, "LocationInfo"}}}
   ]},
  {"StrongholdSummonWaveDefenseInitialDataNotify",
   [
     %{name: "PubSubChannelInitialDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "StrongholdSummonWaveDefenseSubscriptionSummaryInfos", type: {:map, 8, :message}}
   ]},
  {"DestroyerInfosInitializeDataNotify",
   [
     %{name: "PubSubChannelInitialDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "DestroyerInfos", type: {:map, 8, :message}}
   ]},
  {"DestroyerInfo",
   [
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerName", type: :string},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "CovenantGuid", type: {:uint, 8}},
     %{name: "CovenantName", type: :string},
     %{name: "CovenantEmblemInfo", type: {:nulleable, {:struct, "CovenantEmblemInfo"}}},
     %{name: "ExpireDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "ConnectionStatus", type: {:uint, 4}},
     %{name: "LocationInfo", type: {:nulleable, {:struct, "LocationInfo"}}}
   ]},
  {"MarketBuyResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "GoodsGuid", type: {:uint, 8}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"WorldMapPvpBattlePlayerInfoAddNotify",
   [
     %{name: "PubSubChannelUpdateDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "DistrictCuid", type: :Cuid},
     %{name: "PvpBattleGuid", type: {:uint, 8}},
     %{name: "PvpBattlePlayerInfo", type: :message}
   ]},
  {"WorldMapPvpBattleCovenantInfoAddOrUpdateNotify",
   [
     %{name: "PubSubChannelUpdateDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "DistrictCuid", type: :Cuid},
     %{name: "PvpBattleGuid", type: {:uint, 8}},
     %{name: "PvpBattlePlayerInfo", type: :message}
   ]},
  {"WorldMapPvpBattleKillDeathInfoUpdateNotify",
   [
     %{name: "PubSubChannelUpdateDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "DistrictCuid", type: :Cuid},
     %{name: "PvpBattleGuid", type: {:uint, 8}},
     %{name: "VictimPvpBattleKillDeathCountInfo", type: :message},
     %{name: "KillerPvpBattleKillDeathCountInfo", type: :message}
   ]},
  {"WorldMapPvpBattlePublishNotify",
   [
     %{name: "PubSubChannelUpdateDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "DistrictCuid", type: :Cuid},
     %{name: "PvpBattleGuid", type: {:uint, 8}}
   ]},
  {"WorldMapPvpBattleEndNotify",
   [
     %{name: "PubSubChannelUpdateDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "DistrictCuid", type: :Cuid},
     %{name: "PvpBattleGuid", type: {:uint, 8}}
   ]},
  {"PubSubChannelDataNotify",
   [
     %{name: "Channel", type: {:uint, 4}},
     %{name: "Parameter", type: {:nulleable, :Cuid}}
   ]},
  {"QuestTeleportToReentryLocationResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}}
   ]},
  {"ShopBuyRequest",
   [
     %{name: "ShopKind", type: {:uint, 1}},
     %{name: "RegisteredGoodsGuidToCounts", type: {:map, 8, 8}},
     %{name: "SystemGoodsCuidToCounts", type: {:map, :Cuid, 8}},
     %{name: "MostExpensiveGoodsItemIndex", type: :message}
   ]},
  {"ShopBuyResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     },
     %{
       name: "BuyCountInfos",
       type:
         {:map, {:enum, "BuyOrCraftLimitLevelType"},
          {:list, {:nulleable, {:struct, "GoodsBuyCountInfo"}}}}
     },
     %{
       name: "RegisteredGoodsBuyCountInfos",
       type:
         {:map, {:enum, "BuyOrCraftLimitLevelType"},
          {:list, {:nulleable, {:struct, "RegisteredGoodsBuyCountInfo"}}}}
     },
     %{name: "RegisterShopBuyFailItems", type: {:map, 8, 8}},
     %{name: "MostExpensiveGoodsItemIndex", type: :message}
   ]},
  {"UniverseAccountLogoutRequest",
   [
     %{name: "LogMessage", type: :string}
   ]},
  {"CovenantHostilityAdditionalInfo",
   [
     %{name: "KillCount", type: {:uint, 4}},
     %{name: "DeathCount", type: {:uint, 4}}
   ]},
  {"PlayerSummaryInfoUpdateNotify",
   [
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerSummaryInfo", type: {:nulleable, {:struct, "PlayerSummaryInfo"}}}
   ]},
  {"MountBoardingRequest",
   [
     %{name: "IsLeftBoarding", type: :bool},
     %{name: "DriverFacingDirection", type: {:struct, "FRotator"}},
     %{name: "BoardingLocation_cm", type: {:struct, "FVector"}},
     %{name: "IsImmediateBoarding", type: :bool}
   ]},
  {"MountDeboardedInfo",
   [
     %{name: "MountDeboardReason", type: {:uint, 1}},
     %{name: "IsImmediateMountDespawn", type: :bool},
     %{name: "MountDespawnLocation_cm", type: {:struct, "FVector"}}
   ]},
  {"MountDeboardingInfo",
   [
     %{name: "MountDeboardReason", type: {:uint, 1}},
     %{name: "IsImmediateMountDespawn", type: :bool},
     %{name: "MountDespawnLocation_cm", type: {:struct, "FVector"}}
   ]},
  {"MountBoardingInfo",
   [
     %{name: "MountItemCuid", type: :Cuid},
     %{name: "IsLeftBoarding", type: :bool},
     %{name: "PlayerFacingDirection", type: {:struct, "FRotator"}},
     %{name: "BoardingLocation_cm", type: {:struct, "FVector"}},
     %{name: "IsImmediateBoarding", type: :bool},
     %{name: "IsMovingBoarding", type: :bool}
   ]},
  {"MountRendezvousInfo",
   [
     %{name: "MountItemCuid", type: :Cuid},
     %{name: "MountSpawnLocation_cm", type: {:struct, "FVector"}},
     %{name: "IsLeftBoarding", type: :bool},
     %{name: "MountBoardingLocation_cm", type: {:struct, "FVector"}},
     %{name: "PlayerBoardingLocation_cm", type: {:struct, "FVector"}},
     %{name: "RendezvousLocation_cm", type: {:struct, "FVector"}},
     %{name: "RendezvousStartDateTime", type: {:struct, "FDateTime"}},
     %{name: "BoardingDateTime", type: {:struct, "FDateTime"}},
     %{name: "PlayerRunSpeedBeforeBoarded_cmpmsec", type: :float},
     %{name: "IsImmediateBoarding", type: :bool},
     %{name: "IsMovingBoarding", type: :bool}
   ]},
  {"MountCallingInfo",
   [
     %{name: "IsImmediateBoarding", type: :bool},
     %{name: "PlayerRunSpeedBeforeBoarded_cmpmsec", type: :float},
     %{name: "IsMovingBoarding", type: :bool}
   ]},
  {"RandomBossSpawnInfo",
   [
     %{name: "SpawnerCuid", type: {:struct, "BossSpawnInfo"}},
     %{name: "BossRandomSpawnDataCuid", type: :Cuid},
     %{name: "NpcCuid", type: :Cuid},
     %{name: "NpcGuid", type: {:uint, 8}}
   ]},
  {"ServerDrivenPlayStateInfo", []},
  {"ServerDrivenPlayHuntingStateInfo",
   [
     %{name: "HuntingStartTime", type: {:struct, "FDateTime"}},
     %{name: "InitialHealthPointsPotionCount", type: {:uint, 8}},
     %{name: "ServerDrivenPlayStateInfo", type: {:struct, "ServerDrivenPlayStateInfo"}}
   ]},
  {"ServerDrivenPlayEndedNotify",
   [
     %{name: "PlayerName", type: :string},
     %{name: "RewardInfo", type: :message}
   ]},
  {"ServerDrivenPlayEndNotify",
   [
     %{name: "RemainingDailyDuration_sec", type: {:uint, 4}},
     %{name: "EndedState", type: {:uint, 4}},
     %{name: "EndReason", type: {:uint, 4}}
   ]},
  {"ServerDrivenPlayEndRequest", []},
  {"CovenantSynchronizeMemberIsConnectedNotify",
   [
     %{name: "CovenantSynchronizeMemberNotify", type: {:uint, 8}},
     %{name: "ConnectionStatus", type: {:uint, 4}},
     %{name: "LastClientDisconnectDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"ServerDrivenPlayStateNotify",
   [
     %{name: "StateInfo", type: :message}
   ]},
  {"ServerDrivenPlayMovingToHuntingLocationStateInfo", []},
  {"GainedItemInfo",
   [
     %{name: "ItemIndexWithCount", type: {:struct, "ItemIndexWithCount"}},
     %{name: "GainedDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"ServerDrivenPlayRewardInfo",
   [
     %{name: "GainedExperiencePoints", type: {:uint, 8}},
     %{name: "GainedSpiritualBondPower", type: {:uint, 8}},
     %{name: "GainedCurrencies", type: {:map, :Cuid, 8}},
     %{name: "GainedItemInfos", type: {:list, :message}}
   ]},
  {"ServerDrivenPlayStartRequest",
   [
     %{name: "RegionCuid", type: {:nulleable, :Cuid}},
     %{name: "HuntingLocation_cm", type: {:nulleable, {:struct, "FVector"}}},
     %{name: "ResupplyOnStart", type: {:uint, 1}}
   ]},
  {"TutorialBeginFailResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "TutorialCuid", type: :Cuid}
   ]},
  {"InteractionResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}}
   ]},
  {"ServerDrivenPlayStartResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "ServerDrivenPlayInfo", type: {:nulleable, {:struct, "ServerDrivenPlayInfo"}}},
     %{name: "LastPlayerInteractionDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"ChatMessageInfo",
   [
     %{name: "ChatKind", type: {:uint, 1}},
     %{name: "ChatRoomGuid", type: {:uint, 8}},
     %{name: "Guid", type: {:uint, 8}},
     %{name: "RecordsIndex", type: {:uint, 8}},
     %{name: "ChatEntityGuid", type: {:uint, 8}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerName", type: :string},
     %{name: "SenderPlayerExperiencePointsRanking", type: {:nulleable, {:uint, 4}}},
     %{name: "InfoToShare", type: :string},
     %{name: "Text", type: :string},
     %{name: "HarmfulTextKind", type: {:uint, 1}},
     %{name: "RegisterDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"ShopShoppingModeCommandRequest",
   [
     %{name: "ShopKind", type: {:uint, 1}},
     %{name: "Command", type: {:uint, 1}},
     %{name: "NpcGuid", type: {:uint, 8}},
     %{name: "ShopCuid", type: :Cuid}
   ]},
  {"ShopShoppingModeCommandRequest",
   [
     %{name: "ShopKind", type: {:uint, 1}},
     %{name: "Command", type: {:uint, 1}},
     %{name: "NpcGuid", type: {:uint, 8}},
     %{name: "ShopCuid", type: :Cuid}
   ]},
  {"ShopShoppingModeCommandResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "ShopKind", type: {:uint, 1}},
     %{name: "RequestedCommand", type: {:uint, 1}},
     %{
       name: "RegisteredGoodsList",
       type: {:list, {:nulleable, {:struct, "RegisteredGoodsInfo"}}}
     },
     %{
       name: "BuyCountInfos",
       type:
         {:map, {:enum, "BuyOrCraftLimitLevelType"},
          {:list, {:nulleable, {:struct, "GoodsBuyCountInfo"}}}}
     },
     %{
       name: "RegisteredGoodsBuyCountInfos",
       type:
         {:map, {:enum, "BuyOrCraftLimitLevelType"},
          {:list, {:nulleable, {:struct, "RegisteredGoodsBuyCountInfo"}}}}
     },
     %{name: "AutoBuySettings", type: {:list, :message}},
     %{name: "SubscribeKeepaliveInterval_sec", type: {:uint, 4}},
     %{name: "ShopCuid", type: :Cuid}
   ]},
  {"RealmAccountLogoutRequest", []},
  {
    "MonsterBookNodeAcquiredStateInfo",
    [
      %{name: "MonsterBookNodeStateInfo", type: {:struct, "MonsterBookNodeStateInfo"}},
      %{name: "Level", type: {:uint, 4}},
      %{name: "LastRewardedLevel", type: {:uint, 4}},
      %{name: "ExperiencePoints", type: {:uint, 8}},
      %{name: "LastLevelUpDateTime", type: {:struct, "FDateTime"}}
    ]
  },
  {"SystemCastAffectSourceInfo",
   [
     %{name: "field_0", type: :Cuid},
     %{name: "field_1", type: {:uint, 8}},
     %{name: "AffectSourceSystemCastKind", type: {:uint, 1}},
     %{name: "field_2", type: {:uint, 1}},
     %{name: "field_3", type: {:uint, 1}},
     %{name: "field_4", type: {:uint, 1}}
   ]},
  {"BasicOrGrowthGuideAchievementInfo",
   [
     %{name: "AchievementInfo", type: {:struct, "AchievementInfo"}}
   ]},
  {"ExpeditionInitialDataNotify",
   [
     %{name: "PubSubChannelInitialDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{
       name: "ExpeditionSummaryInfos",
       type: {:map, 8, {:nulleable, {:struct, "ExpeditionSummaryInfo"}}}
     }
   ]},
  {"ExpeditionSummaryInfo",
   [
     %{name: "ExpeditionCuid", type: :Cuid},
     %{name: "ExpeditionGuid", type: {:uint, 8}},
     %{name: "SealedSiteCuid", type: :Cuid},
     %{name: "EndDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "NpcSummonWaveIndex", type: {:uint, 4}}
   ]},
  {"WorldMapPvpBattleLocationUpdateNotify",
   [
     %{name: "PubSubChannelUpdateDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{name: "DistrictCuid", type: :Cuid},
     %{name: "PvpBattleGuid", type: {:uint, 8}},
     %{name: "Location_cm", type: {:struct, "FVector"}}
   ]},
  {"PvpBattleCovenantInfo",
   [
     %{name: "CovenantVuid", type: {:struct, "Vuid"}},
     %{name: "CovenantName", type: :string},
     %{name: "CovenantEmblemInfo", type: {:nulleable, {:struct, "CovenantEmblemInfo"}}},
     %{name: "RealmCuid", type: :Cuid}
   ]},
  {"PvpBattlePlayerInfo",
   [
     %{name: "RealmCuid", type: :Cuid},
     %{name: "Guid", type: {:uint, 8}},
     %{name: "Name", type: :string},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "CovenantVuid", type: {:struct, "Vuid"}}
   ]},
  {"PvpBattleKillDeathCountInfo",
   [
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "CovenantVuid", type: {:struct, "Vuid"}},
     %{name: "KillCount", type: {:uint, 4}},
     %{name: "DeathCount", type: {:uint, 4}}
   ]},
  {"PvpBattleKillDeathInfo",
   [
     %{name: "VictimRealmCuid", type: :Cuid},
     %{name: "VictimGuid", type: {:uint, 8}},
     %{name: "VictimCovenantVuid", type: {:struct, "Vuid"}},
     %{name: "KillerRealmCuid", type: :Cuid},
     %{name: "KillerGuid", type: {:uint, 8}},
     %{name: "KillerCovenantVuid", type: {:struct, "Vuid"}},
     %{name: "DateTime", type: {:struct, "FDateTime"}},
     %{name: "DeathLocation_cm", type: {:struct, "FVector"}}
   ]},
  {"PvpBattleInfo",
   [
     %{name: "PvpBattleGuid", type: {:uint, 8}},
     %{name: "PvpBattleDisplayKind", type: {:uint, 1}},
     %{name: "PvpBattleKillDeathInfos", type: {:list, :message}},
     %{
       name: "PvpBattleKillDeathCountInfos",
       type: {:map, {:struct, "Vuid"}, {:map, {:uint, 8}, :message}}
     },
     %{name: "PvpBattlePlayerInfos", type: {:map, {:uint, 8}, :message}},
     %{
       name: "PvpBattleCovenantInfos",
       type: {:map, {:struct, "Vuid"}, :message}
     },
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "CanSpectate", type: {:uint, 1}}
   ]},
  {"BossSpawnInfoUpdatedNotify",
   [%{name: "DistrictCuid", type: :Cuid}, %{name: "BossSpawnInfo", type: :message}]},
  {"SkillCasterMoveAffectInfo",
   [
     %{name: "SkillMoveAffectInfo", type: {:struct, "SkillMoveAffectInfo"}},
     %{name: "CasterMoveAffectKind", type: {:uint, 1}}
   ]},
  {"SkillStageFlowNotify",
   [
     %{name: "SkillCuid", type: :Cuid},
     %{name: "SkillSiid", type: {:uint, 4}},
     %{name: "SkillStageFlowSiid", type: {:uint, 4}},
     %{name: "CasterGuid", type: {:uint, 8}},
     %{name: "SubTargetingLocations_cm", type: {:list, {:struct, "FVector"}}},
     %{name: "AffectExemptLocations_cm", type: {:list, {:struct, "FVector2D"}}},
     %{name: "SkillStageInfos", type: {:list, :message}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "FireAndForgetCasterHoldDurationCalculatedWithStatInfo_msec", type: {:uint, 4}}
   ]},
  {"SkillAffectTargetAffectInfo",
   [
     %{name: "AffectTargetGuid", type: {:uint, 8}},
     %{name: "AffectSourceGuid", type: {:uint, 8}},
     %{name: "IsHit", type: :bool},
     %{
       name: "SkillAffectTargetStatsAffectInfo",
       type: {:nulleable, {:struct, "SkillAffectTargetStatsAffectInfo"}}
     },
     %{
       name: "SkillAffectTargetMoveAffectInfo",
       type: {:nulleable, {:struct, "SkillAffectTargetMoveAffectInfo"}}
     },
     %{name: "SkillAffectTargetStateAffectInfo", type: :message}
   ]},
  {"SkillAffectTargetMoveAffectInfo",
   [
     %{name: "SkillMoveAffectInfo", type: {:struct, "SkillMoveAffectInfo"}},
     %{name: "AffectTargetMoveAffectKind", type: {:uint, 1}}
   ]},
  {"SkillMoveAffectInfo",
   [
     %{name: "MoveDuration_msec", type: {:uint, 4}},
     %{name: "Destination_cm", type: {:nulleable, {:struct, "FVector"}}},
     %{name: "InitialDirectionYaw_rad", type: {:nulleable, {:uint, 4}}},
     %{name: "InitialFacingEntityGuid", type: {:nulleable, {:uint, 8}}},
     %{name: "FinalDirectionYaw_rad", type: {:nulleable, {:uint, 4}}},
     %{name: "FinalFacingEntityGuid", type: {:nulleable, {:uint, 8}}}
   ]},
  {"SkillAffectTargetStatsAffectInfo",
   [
     %{name: "SkillStatsAffectInfo", type: {:struct, "SkillStatsAffectInfo"}},
     %{name: "IsCritical", type: :bool},
     %{name: "IsBlocked", type: :bool},
     %{name: "ProtectedDamage", type: {:uint, 4}},
     %{
       name: "DamageDistributionInfo",
       type: {:nulleable, {:struct, "SkillAffectDamageDistributionInfo"}}
     }
   ]},
  {"SkillStatsAffectInfo",
   [%{name: "HealthPointsDelta", type: {:uint, 4}}, %{name: "ManaPointsDelta", type: {:uint, 4}}]},
  {"SkillStageInfo",
   [
     %{name: "Stage", type: {:uint, 1}},
     %{name: "LoopCounter", type: {:uint, 4}},
     %{name: "SubStageCounter", type: {:uint, 4}},
     %{name: "SkillCasterAffectInfo", type: {:nulleable, {:struct, "SkillCasterAffectInfo"}}},
     %{name: "SkillAffectTargetGuidList", type: {:list, {:uint, 8}}},
     %{
       name: "SkillAffectTargetAffectInfoList",
       type: {:list, {:nulleable, {:struct, "SkillAffectTargetAffectInfo"}}}
     },
     %{
       name: "SkillShieldWallAffectInfoList",
       type: {:list, {:nulleable, {:struct, "SkillShieldWallAffectInfo"}}}
     },
     %{name: "SkillTargetingInfos", type: {:list, :message}},
     %{name: "AppliedSomaBuffCuid", type: :Cuid},
     %{name: "AppliedAetherCategoryTier", type: {:uint, 4}},
     %{name: "StageStartDateTime", type: {:struct, "FDateTime"}},
     %{name: "Duration_msec", type: {:uint, 4}}
   ]},
  {"SkillTargetingInfo", [%{name: "CharacterGuid", type: {:uint, 8}}]},
  {"SkillCasterAffectInfo",
   [
     %{name: "SkillStatsAffectInfo", type: :message},
     %{
       name: "SkillCasterMoveAffectInfo",
       type: {:nulleable, {:struct, "SkillCasterMoveAffectInfo"}}
     }
   ]},
  {"MountCallingFailResponse", [%{name: "ErTozMessageWithResultCode", type: {:uint, 4}}]},
  {"PlayerLogoutResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "FrontServerReauthenticateKey", type: {:uint, 4}}
   ]},
  {"PlayerLogoutRequest", []},
  {"SessionKickNotify",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "BanInfo", type: :message}
   ]},
  {"TutorialBeginFirstOneRequest", [%{name: "TutorialCuids", type: {:list, :Cuid}}]},
  {"WorldMapPvpBattleInitialDataNotify",
   [
     %{name: "PubSubChannelInitialDataNotify", type: {:struct, "PubSubChannelDataNotify"}},
     %{
       name: "PvpBattleInfos",
       type: {:map, :Cuid, {:map, 8, :message}}
     }
   ]},
  {"ErChatServerSessionInitializeInfo",
   [
     %{name: "ErServerSessionInitializeInfo", type: {:struct, "ErServerSessionInitializeInfo"}},
     %{name: "ChatEntityInfo", type: {:nulleable, {:struct, "ChatEntityInfo"}}},
     %{name: "BlockedChatEntities", type: {:map, :Cuid, :string}}
   ]},
  {"ErServerSessionInitializeInfo",
   [
     %{name: "UtcNow", type: {:struct, "FDateTime"}}
   ]},
  {"ChatEntityInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "RealmAccountGuid", type: {:uint, 8}},
     %{name: "PlayerInfo", type: {:nulleable, {:struct, "ChatEntityPlayerInfo"}}},
     %{name: "CovenantGuid", type: {:nulleable, {:uint, 8}}},
     %{name: "PlayerHarmfulTextOnChatViolationInfo", type: :message}
   ]},
  {"ChatEntityPlayerInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "Name", type: :string},
     %{name: "Level", type: {:uint, 4}},
     %{name: "PlayerExperiencePointsRanking", type: {:uint, 4}},
     %{name: "LastLoginDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"MonsterBookNodeAcquirableStateInfo",
   [
     %{name: "MonsterBookNodeStateInfo", type: {:struct, "MonsterBookNodeStateInfo"}},
     %{name: "NpcCuidToKillCount", type: {:map, :Cuid, 4}}
   ]},
  {"QuickSlotDetailInfo",
   [
     %{name: "field_0", type: {:uint, 4}},
     %{name: "field_1", type: {:struct, "AffectItemQuickSlotDetailInfo"}}
   ]},
  {"RegionContentPlayTimeInfoBySec",
   [
     %{name: "BaseRemainingDuration_sec", type: {:uint, 4}},
     %{name: "RechargedRemainingDuration_sec", type: {:uint, 4}}
   ]},
  {"MonsterBookCollectionInfo",
   [
     %{name: "CollectionCuid", type: :Cuid},
     %{name: "AccomplishedRewardPhase", type: {:uint, 1}}
   ]},
  {"MonsterBookNodeStateInfo",
   [
     %{name: "NodeCuid", type: :Cuid},
     %{name: "AnalysisColorCuid", type: :Cuid},
     %{name: "AnalysisRewardStatCuid", type: :Cuid},
     %{name: "IsAnalysisLocked", type: :bool}
   ]},
  {"RegionContentPlayInfo",
   [
     %{
       name: "RegionContentPlayTimeInfo",
       type: {:nulleable, {:struct, "RegionContentPlayTimeInfo"}}
     }
   ]},
  {"RegionContentPlayTimeInfo",
   [
     %{name: "RegionContentKind", type: {:uint, 1}},
     %{name: "RegionContentPlayTimeInfoBySec", type: :message},
     %{name: "RegionContentPlayTimeInfoByDatetime", type: :message},
     %{name: "RemainRechargePlayTimeLimitBySec", type: {:uint, 4}}
   ]},
  {"ServerDrivenPlayInfo",
   [
     %{name: "HuntingSiteCuid", type: :Cuid},
     %{name: "StartLocation_cm", type: {:struct, "FVector"}},
     %{name: "StartTime", type: {:struct, "FDateTime"}},
     %{name: "StartUsingDailyDurationTime", type: {:struct, "FDateTime"}},
     %{name: "RewardInfo", type: :message},
     %{name: "AutoResupplyUsedCount", type: {:uint, 4}},
     %{name: "CurrentStateInfo", type: :message}
   ]},
  {"PartyOptionInfo",
   [
     %{name: "RegionCuid", type: :Cuid},
     %{name: "Name", type: :string},
     %{name: "Purpose", type: {:uint, 1}},
     %{name: "PartyJoiningLimitKind", type: {:uint, 1}},
     %{name: "MinLevelLimit", type: {:uint, 4}},
     %{name: "MinSlayingGradeLimit", type: {:uint, 2}},
     %{name: "CanInviteOrJoinApplyOnlyFriendOrSameCovenant", type: :bool},
     %{name: "IsAutomatedNewComerApproval", type: :bool},
     %{
       name: "PartyItemDistributionInfo",
       type: {:nulleable, {:struct, "PartyOrBattalionItemDistributionInfo"}}
     }
   ]},
  {"PartyOrBattalionItemDistributionInfo",
   [
     %{name: "PartyOrBattalionItemDistributionRule", type: {:nulleable, {:uint, 1}}},
     %{name: "MinItemGradeToPrioritizeLeader", type: {:uint, 1}}
   ]},
  {"PartyInfo",
   [
     %{name: "PartyGuid", type: {:uint, 8}},
     %{
       name: "PartyOptionInfo",
       type: {:nulleable, {:struct, "PartyOptionInfo"}}
     },
     %{name: "PartyLeaderGuid", type: {:uint, 8}},
     %{
       name: "PartyMemberInfos",
       type: {:map, :Cuid, {:struct, "PartyMemberInfo"}}
     },
     %{
       name: "TargetLocationInfos",
       type: {:list, {:struct, "TargetLocationInfo"}}
     }
   ]},
  {"TargetLocationInfo",
   [
     %{name: "Index", type: {:uint, 4}},
     %{
       name: "LocationInfo",
       type: {:nulleable, {:struct, "LocationInfo"}}
     }
   ]},
  {"PartyMemberInfo",
   [
     %{
       name: "CoreInfo",
       type: {:nulleable, {:struct, "PartyMemberCoreInfo"}}
     },
     %{
       name: "LocationInfo",
       type: {:nulleable, {:struct, "LocationInfo"}}
     },
     %{name: "State", type: {:uint, 1}},
     %{
       name: "CostumeInfo",
       type: {:nulleable, {:struct, "CostumeInfo"}}
     },
     %{
       name: "ErosionInfo",
       type: {:nulleable, {:struct, "PlayerCustomizeInfo"}}
     }
   ]},
  {"PartyMemberCoreInfo",
   [
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "AffiliationRealmCuid", type: :Cuid},
     %{
       name: "PlayerName",
       type: :string
     },
     %{name: "Classe", type: {:uint, 1}},
     %{name: "Level", type: {:uint, 4}},
     %{name: "SlayingGrade", type: {:uint, 2}},
     %{name: "CovenantGuid", type: {:uint, 8}},
     %{name: "CovenantName", type: :string},
     %{
       name: "CovenantEmblemInfo",
       type: {:nulleable, {:struct, "CovenantEmblemInfo"}}
     },
     %{name: "ConnectionStatus", type: {:uint, 1}}
   ]},
  {"ChatServerLoginRequest", []},
  {"MonsterBookInfo",
   [
     %{
       name: "CategoryCuidToNodeStateInfos",
       type: {:map, :Cuid, {:list, :message}}
     },
     %{
       name: "CategoryCuidToCollectionInfo",
       type: {:map, :Cuid, {:nulleable, {:struct, "MonsterBookCollectionInfo"}}}
     },
     %{name: "CategoryCuidToFreeAnalysisCount", type: {:map, :Cuid, 8}},
     %{
       name: "CategoryCuidToAnalysisStatChangeInfos",
       type: {:map, :Cuid, {:list, {:nulleable, {:struct, "CharacterStatChangeInfo"}}}}
     }
   ]},
  {"FieldInitializeInfoSynchronizeNotify",
   [
     %{
       name: "FieldInitializeInfo",
       type: {:nulleable, {:struct, "FieldInitializeInfo"}}
     }
   ]},
  {"PlayerEmergencyEscapeInfo",
   [
     %{name: "LastEscapeDateTime", type: {:struct, "FDateTime"}},
     %{name: "DailyUseCount", type: {:uint, 4}}
   ]},
  {"GatheringSiteInfo",
   [
     %{name: "CharacterInfo", type: {:struct, "CharacterInfo"}},
     %{name: "GatheringSiteCuid", type: {:uint, 4}},
     %{name: "SpawnerCuid", type: {:uint, 4}},
     %{
       name: "GatheringFollowerWorkInfos",
       type: {:map, 8, {:nulleable, {:struct, "FollowerWorkOverallInfo"}}}
     }
   ]},
  {"FollowerWorkOverallInfo",
   [
     %{name: "CoreInfo", type: {:nulleable, {:struct, "FollowerCoreInfo"}}},
     %{name: "WorkInfo", type: {:nulleable, {:struct, "FollowerWorkInfo"}}}
   ]},
  {"FollowerWorkInfo",
   [
     %{name: "WorkState", type: {:uint, 4}},
     %{name: "MaxWorkTime_sec", type: {:uint, 4}},
     %{name: "ElapsedWorkTime_sec", type: {:uint, 4}},
     %{name: "CurrentWorkSpeed_mwpsec", type: {:uint, 4}},
     %{name: "AccumulatedWorkAmount_mw", type: {:uint, 8}},
     %{name: "LastWorkUpdateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"FactionProxyInfo", [%{name: "Guid", type: {:uint, 8}}, %{name: "Faction", type: {:uint, 1}}]},
  {"CovenantJoinRequest", [%{name: "CovenantGuid", type: {:uint, 8}}]},
  {"CovenantJoinResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "LastCovenantWithdrawalDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     }
   ]},
  {"CovenantQueryRequest", [%{name: "CovenantGuid", type: {:uint, 8}}]},
  {"CovenantQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "CovenantSummaryInfo",
       type: {:nulleable, {:struct, "CovenantSummaryInfo"}}
     },
     %{name: "IsJoinApplied", type: :bool},
     %{name: "IsInvited", type: :bool},
     %{
       name: "LeaderCustomizeInfo",
       type: {:nulleable, {:struct, "PlayerCustomizeInfo"}}
     },
     %{name: "LeaderCostumeInfo", type: {:nulleable, {:struct, "CostumeInfo"}}},
     %{name: "LeaderLevel", type: {:uint, 4}},
     %{name: "LeaderGender", type: {:uint, 1}},
     %{name: "LeaderClasse", type: {:uint, 1}}
   ]},
  {"CovenantRealmTransferInfo",
   [
     %{name: "RealmTransferCuid", type: :Cuid},
     %{name: "ToRealmCuid", type: :Cuid},
     %{name: "CovenantRealmTransferMemberReadyChecks", type: {:map, 8, :bool}},
     %{
       name: "CovenantRealmTransferExpireDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     }
   ]},
  {"CovenantQueryRecommendCovenantSummaryInfoListRequest", []},
  {"CovenantQueryRecommendCovenantSummaryInfoListResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "CovenantSummaryInfos",
       type: {:list, {:nulleable, {:struct, "CovenantSummaryInfo"}}}
     }
   ]},
  {"CovenantSummaryInfo",
   [
     %{name: "CovenantGuid", type: {:uint, 8}},
     %{name: "Ranking", type: {:nulleable, {:uint, 4}}},
     %{name: "Name", type: :string},
     %{name: "Level", type: {:uint, 4}},
     %{name: "CovenantJoinKind", type: {:uint, 1}},
     %{name: "LeaderName", type: :string},
     %{name: "MemberCount", type: {:uint, 2}},
     %{name: "MaxMemberCount", type: {:uint, 2}},
     %{
       name: "CovenantEmblemInfo",
       type: {:nulleable, {:struct, "CovenantEmblemInfo"}}
     },
     %{name: "CovenantCampCuid", type: {:uint, 4}},
     %{name: "OccupiedStrongholdCuids", type: {:list, {:uint, 4}}},
     %{name: "MainHavenCuid", type: {:uint, 4}},
     %{name: "MaximumHeadquartersLevel", type: {:uint, 4}},
     %{name: "Introduction", type: :string},
     %{name: "IntroductionHarmfulTextKind", type: {:uint, 1}},
     %{name: "MainLivingTotemInfo", type: :message}
   ]},
  {"ShopSellRequest",
   [
     %{name: "ShopKind", type: {:uint, 1}},
     %{
       name: "ItemGuidSelectors",
       type: {:list, {:nulleable, {:struct, "ItemGuidSelector"}}}
     }
   ]},
  {"ShopSellResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"GearSubOptionInfo",
   [
     %{
       name: "CharacterStatChange",
       type: {:nulleable, {:struct, "CharacterStatChangeInfo"}}
     }
   ]},
  {"CharacterPublicStatsInfoSynchronizeNotify",
   [
     %{name: "EntitySynchronizeMessage", type: {:uint, 8}},
     %{name: "CharacterPublicStatsInfo", type: :message}
   ]},
  {"SpellstoneAdditionalBuffStatsInfo",
   [
     %{name: "DurationIncreaseAmount_msec", type: {:uint, 4}},
     %{name: "DurationIncreaseRatio", type: :float},
     %{name: "IntervalDecreaseAmount_msec", type: {:uint, 4}},
     %{name: "IntervalDecreaseRatio", type: :float},
     %{name: "IsImmuneToHealthPointsLoss", type: :bool},
     %{name: "IsImmuneToHealthPointsGain", type: :bool},
     %{name: "IsImmuneToManaPointsLoss", type: :bool},
     %{name: "IsImmuneToManaPointsGain", type: :bool},
     %{
       name: "CharacterStatChangesByStatKind",
       type: {:map, {:enum, "AdjustableStatKindType"}, {:struct, "CharacterStatChangeInfo"}}
     },
     %{name: "ReflectDamageRatioBasedOnDamageTakenIncreaseAmount", type: :float},
     %{
       name: "ReflectDamageRatioBasedOnMaxHealthPointsIncreaseAmount",
       type: :float
     },
     %{name: "MaxReflectCountIncreaseAmount", type: :float},
     %{name: "HealthPointsGainAdjustRatioIncreaseAmount", type: :float},
     %{name: "HealthPointsLossAdjustRatioIncreaseAmount", type: :float},
     %{
       name: "StatChangeIncreaseRatiosByStatKind",
       type: {:map, {:enum, "AdjustableStatKindType"}, :float}
     },
     %{name: "StatChangeIncreaseRatio", type: :float},
     %{
       name: "ProtectHealthPointsSettingStatKindByStatKind",
       type: {:map, {:enum, "AdjustableStatKindType"}, :float}
     },
     %{name: "ProtectHealthPointsSettingAmount", type: {:uint, 4}}
   ]},
  {"SkillCasterLocationProxyInfo",
   [
     %{name: "Cuid", type: {:uint, 4}},
     %{name: "Location_cm", type: {:struct, "FVector"}}
   ]},
  {"NpcActionNotify",
   [
     %{name: "NpcGuid", type: {:uint, 8}},
     %{name: "NpcActionCuid", type: {:uint, 4}},
     %{name: "NpcSpeechBalloonInfo", type: :message}
   ]},
  {"NpcSpeechBalloonInfo",
   [%{name: "Cuid", type: :Cuid}, %{name: "NpcSpeechBalloonTextFormatInfo", type: :message}]},
  {"BuildingInfo",
   [
     %{name: "CharacterInfo", type: {:struct, "CharacterInfo"}},
     %{name: "BuildingCuid", type: :Cuid},
     %{name: "SpawnerCuid", type: :Cuid},
     %{name: "BuildingWorkInfo", type: {:nulleable, {:struct, "BuildingWorkInfo"}}},
     %{name: "BuildingAccessPermissionKind", type: {:uint, 4}},
     %{name: "IsBaseBuildingExist", type: :bool},
     %{name: "IsBlocked", type: :bool},
     %{name: "LastChangeDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"MountInteractionStateNotify",
   [
     %{name: "DriverGuid", type: {:uint, 8}},
     %{name: "MountInteractionState", type: {:uint, 4}},
     %{name: "Info", type: :message}
   ]},
  {"MountBoardedInfo",
   [
     %{name: "MountItemCuid", type: :Cuid},
     %{name: "MountSkillReadyDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"InventoryUpdateNotify",
   [
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"ShopCashMerchandiseBuyResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MerchandisePaymentInfo", type: :message},
     %{
       name: "MerchandiseBuyResultInfo",
       type: {:nulleable, {:struct, "MerchandiseBuyResultInfo"}}
     }
   ]},
  {"MerchandiseBuyResultInfo",
   [
     %{
       name: "PlayerCurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{name: "ReceivedRewardInfo", type: {:nulleable, {:struct, "ReceivedRewardInfo"}}},
     %{
       name: "CashShopRefundableMerchandiseStorageBoxUpdateInfo",
       type: {:nulleable, {:struct, "CashShopRefundableMerchandiseStorageBoxUpdateInfo"}}
     },
     %{
       name: "MerchandiseBuyCountInfo",
       type: {:nulleable, {:struct, "MerchandiseBuyCountInfo"}}
     }
   ]},
  {"ShopCashMerchandiseBuyRequest", [%{name: "MerchandisePaymentInfo", type: :message}]},
  {"CashShopMerchandisePaymentInfo",
   [
     %{name: "TargetCuid", type: :Cuid},
     %{name: "SubCategoryCuid", type: :Cuid},
     %{name: "CuidAndCountInfo", type: {:nulleable, {:struct, "CuidAndCountInfo"}}}
   ]},
  {"CraftRequest",
   [
     %{name: "NpcGuid", type: {:uint, 8}},
     %{name: "RewardCuid", type: :Cuid},
     %{name: "CraftCount", type: {:uint, 4}},
     %{name: "MaterialGroupOrderList", type: {:list, :Cuid}},
     %{
       name: "MaterialCuidToItemSelectors",
       type: {:map, :Cuid, {:list, :message}}
     }
   ]},
  {"ItemIndexOptionalSelector",
   [
     %{name: "ItemCuid", type: :Cuid},
     %{name: "IsBound", type: {:nulleable, :bool}},
     %{name: "IsStorable", type: {:nulleable, :bool}},
     %{name: "IsEroded", type: {:nulleable, :bool}},
     %{name: "ExpireBeginDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "ExpireEndDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "GearQuality", type: {:nulleable, {:uint, 1}}},
     %{name: "ItemCount", type: {:nulleable, {:uint, 8}}}
   ]},
  {"RealmAccountWarehouseItemStoreResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     },
     %{
       name: "RealmAccountWarehouseInventoryUpdateInfo",
       type: {:nulleable, {:struct, "InventoryUpdateInfo"}}
     }
   ]},
  {"RealmAccountWarehouseItemStoreRequest",
   [
     %{name: "NpcGuid", type: {:uint, 8}},
     %{
       name: "ItemGuidSelectors",
       type: {:list, {:nulleable, {:struct, "ItemGuidSelector"}}}
     }
   ]},
  {"QuestTeleportToReentryLocationCastNotify", [%{name: "CasterGuid", type: {:uint, 8}}]},
  {"QuestTeleportToReentryLocationRequest", [%{name: "QuestMissionCuid", type: :Cuid}]},
  {"MailQueryRequest",
   [
     %{name: "MailTab", type: {:uint, 1}},
     %{name: "UpperBoundDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"PlayerSummaryInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "Name", type: :string},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "Gender", type: {:uint, 1}},
     %{name: "Stance", type: {:uint, 1}},
     %{name: "LocationInfo", type: {:nulleable, {:struct, "LocationInfo"}}},
     %{name: "Level", type: {:uint, 4}},
     %{name: "ExperiencePoints", type: {:uint, 8}},
     %{name: "SlayingGrade", type: {:uint, 2}},
     %{
       name: "PlayerCustomizeInfo",
       type: {:nulleable, {:struct, "PlayerCustomizeInfo"}}
     },
     %{name: "CostumeInfo", type: {:nulleable, {:struct, "CostumeInfo"}}},
     %{name: "CovenantInvitable", type: :bool},
     %{name: "CovenantGuid", type: {:uint, 8}},
     %{name: "CovenantName", type: :string},
     %{
       name: "CovenantEmblemInfo",
       type: {:nulleable, {:struct, "CovenantEmblemInfo"}}
     },
     %{name: "CovenantMemberRoleKind", type: {:uint, 1}},
     %{name: "CovenantMemberRoleName", type: :string},
     %{name: "PartyGuid", type: {:uint, 8}},
     %{name: "ConnectionStatus", type: {:uint, 4}},
     %{name: "LastLoginDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "LastLogoutDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "CreateDateTime", type: {:struct, "FDateTime"}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "IsInServerDrivenPlay", type: :bool},
     %{name: "PlayerHarmfulTextOnChatViolationInfo", type: :message},
     %{
       name: "ReservedDeleteDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     },
     %{name: "IsHeadPieceDisplayed", type: :bool}
   ]},
  {"DeathPenaltyRecordInfoRemoveNotify",
   [%{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}]},
  {"MarketBuyResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "GoodsGuid", type: {:uint, 8}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"MarketBuyRequest",
   [
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "GoodsGuid", type: {:uint, 8}},
     %{name: "BuyCurrencyCuid", type: :Cuid},
     %{name: "BuyCurrencyAmount", type: {:uint, 8}},
     %{name: "CovenantMarketFixedFeeCurrencyCuid", type: :Cuid},
     %{name: "CovenantMarketFixedFeeCurrencyAmount", type: {:uint, 8}}
   ]},
  {"RealmInfoListResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{
       name: "RealmInfos",
       type: {:list, {:list, {:nulleable, {:struct, "RealmInfo"}}}}
     },
     %{
       name: "RealmAccountInfos",
       type: {:list, {:nulleable, {:struct, "UniverseAccountRealmAccountInfo"}}}
     },
     %{
       name: "AppliedRealmAccountGuids",
       type: {:list, {:nulleable, {:struct, "AppliedRealmAccountGuid"}}}
     }
   ]},
  {"UniverseAccountRealmAccountInfo",
   [
     %{name: "RealmCuid", type: :Cuid},
     %{name: "RealmAccountGuid", type: {:uint, 8}},
     %{
       name: "UniverseAccountPlayerInfos",
       type: {:list, {:nulleable, {:struct, "UniverseAccountPlayerInfo"}}}
     }
   ]},
  {"UniverseAccountPlayerInfo",
   [
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerName", type: :string},
     %{name: "PlayerLevel", type: {:uint, 4}},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "MeaningLess1", type: :bool},
     %{name: "LastLoginDateTime", type: {:struct, "FDateTime"}},
     %{name: "MeaningLess2", type: :bool},
     %{name: "LastLogoutDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"ArquiruneDeactivateResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "ArquiruneCuid", type: :Cuid}
   ]},
  {"ArquiruneDeactivateRequest", [%{name: "ArquiruneCuid", type: :Cuid}]},
  {"ArquiruneInstallResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "ArquiruneCuid", type: :Cuid},
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"ArquiruneInstallRequest", [%{name: "ArquiruneCuid", type: :Cuid}]},
  {"ArquiruneActivateResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "ArquiruneCuid", type: :Cuid}
   ]},
  {"ArquiruneActivateRequest", [%{name: "ArquiruneCuid", type: :Cuid}]},
  {"GearEnchantSlotInfo",
   [
     %{name: "SlotIndex", type: {:uint, 2}},
     %{name: "GearEnchantOptionGrade", type: {:uint, 1}},
     %{name: "GearEnchantOptionStatSetCuid", type: :Cuid},
     %{
       name: "CharacterStatChange",
       type: {:nulleable, {:struct, "CharacterStatChangeInfo"}}
     }
   ]},
  {"CharacterStatChangeInfo",
   [
     %{name: "StatKind", type: {:uint, 1}},
     %{name: "Amount", type: :float},
     %{name: "Ratio", type: :float}
   ]},
  {"SeasonPassAchievementRewardResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MessageId", type: {:uint, 4}},
     %{name: "SeasonPassExperiencePoints", type: {:uint, 8}}
   ]},
  {"SeasonPassAchievementRewardRequest",
   [
     %{name: "MessageId", type: {:uint, 4}},
     %{name: "SeasonPassCuid", type: {:uint, 4}},
     %{name: "SeasonPassAchievementGroupCuid", type: {:uint, 4}},
     %{name: "AchievementCuid", type: {:uint, 4}}
   ]},
  {"SeasonPassAchievementInitializeDataNotify",
   [%{name: "SeasonPassAchievementInfos", type: {:list, :message}}]},
  {"SeasonPassQueryRequest", []},
  {"SeasonPassAchievementInfo",
   [
     %{name: "AchievementInfo", type: {:struct, "AchievementInfo"}},
     %{name: "SeasonPassCuid", type: :Cuid},
     %{name: "SeasonPassAchivementGroupCuid", type: :Cuid}
   ]},
  {"SeasonPassLevelRewardResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MessageId", type: {:uint, 4}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"SeasonPassLevelRewardRequest",
   [
     %{name: "MessageId", type: {:uint, 4}},
     %{name: "SeasonPassCuid", type: :Cuid},
     %{name: "Level", type: {:uint, 4}},
     %{name: "IsPaidReward", type: :bool}
   ]},
  {"MarketRecommendedItemQueryRequest", [%{name: "MarketKind", type: {:uint, 1}}]},
  {"MarketFavoriteItemInfoQueryRequest", [%{name: "MarketKind", type: {:uint, 1}}]},
  {"MarketFavoriteItemInfoQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MarketKind", type: {:uint, 1}},
     %{
       name: "MarketFavoriteItemInfosOnSale",
       type: {:list, {:nulleable, {:struct, "MarketFavoriteItemInfo"}}}
     },
     %{
       name: "MarketFavoriteItemInfosNotOnSale",
       type: {:list, {:nulleable, {:struct, "MarketFavoriteItemInfo"}}}
     }
   ]},
  {"MarketStrongholdTaxInfoRequest", []},
  {"MarketRecommendedItemQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "RecommendedGearCuidByGearKind", type: {:map, {:enum, "GearKindType"}, :Cuid}},
     %{
       name: "RecommendedCoreMaterialCuidByGearKind",
       type: {:map, {:enum, "GearKindType"}, :Cuid}
     }
   ]},
  {"MailDeleteResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MailGuid", type: {:uint, 8}}
   ]},
  {"MailDeleteRequest",
   [
     %{name: "MailGuid", type: {:uint, 8}},
     %{name: "MailBoxKind", type: {:uint, 4}},
     %{name: "MailTab", type: {:uint, 1}}
   ]},
  {"MarketGoodsInfoQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "MarketGoodsQueryInfo",
       type: {:nulleable, {:struct, "MarketGoodsQueryInfo"}}
     },
     %{name: "DateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "MarketGoodsInfos", type: {:list, :message}}
   ]},
  {"MarketGoodsInfoQueryRequest",
   [
     %{name: "MarketGoodsQueryInfo", type: {:nulleable, {:struct, "MarketGoodsQueryInfo"}}},
     %{name: "IndexUpperBound", type: {:uint, 4}},
     %{name: "IndexLowerBound", type: {:uint, 4}}
   ]},
  {"MarketGoodsQueryInfo",
   [
     %{
       name: "MarketGoodsSummaryQueryInfo",
       type: {:struct, "MarketGoodsSummaryQueryInfo"}
     },
     %{
       name: "GearAdditionalInfo",
       type: {:nulleable, {:struct, "GearAdditionalInfo"}}
     },
     %{name: "MarketOrderByKind", type: {:uint, 1}}
   ]},
  {"MarketGoodsSummaryInfoQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MarketGoodsSummaryQueryInfo", type: :message}
   ]},
  {"MarketGoodsSummaryInfoQueryNotify",
   [
     %{name: "MarketGoodsSummaryQueryInfo", type: :message},
     %{
       name: "MarketGoodsSummaryInfos",
       type: {:list, {:nulleable, {:struct, "MarketGoodsSummaryInfo"}}}
     }
   ]},
  {"MarketGoodsSummaryInfo",
   [
     %{name: "ItemCuid", type: :Cuid},
     %{name: "GearAdditionalInfo", type: {:nulleable, {:struct, "GearAdditionalInfo"}}},
     %{name: "LowestUnitListPrice_pe2", type: {:uint, 8}},
     %{name: "GoodsCount", type: {:uint, 4}}
   ]},
  {"MarketGoodsSummaryInfoQueryRequest",
   [%{name: "MarketGoodsSummaryQueryInfo", type: :message}]},
  {"MarketGoodsSummaryQueryInfo",
   [
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "MainGroupCuid", type: :Cuid},
     %{name: "SubGroupCuid", type: :Cuid},
     %{name: "ItemCuid", type: :Cuid}
   ]},
  {"MarketStrongholdTaxInfoResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "MarketStrongholdTaxInfos",
       type: {:list, {:nulleable, {:struct, "MarketStrongholdTaxInfo"}}}
     }
   ]},
  {"MarketStrongholdTaxInfo",
   [
     %{name: "StrongholdCuid", type: :Cuid},
     %{name: "CovenantEmblemInfo", type: {:nulleable, {:struct, "CovenantEmblemInfo"}}},
     %{name: "CurrentTaxRate_pe2", type: {:uint, 4}}
   ]},
  {"FavoriteCollectionRegisterResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "CollectionCuid", type: :Cuid},
     %{name: "IsRegistered", type: :bool}
   ]},
  {"FavoriteCollectionRegisterRequest",
   [%{name: "CollectionCuid", type: :Cuid}, %{name: "IsRegistered", type: :bool}]},
  {"StackableItemMultipleUseResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "ItemGuid", type: {:uint, 8}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     },
     %{name: "CovenantRewardInfo", type: {:nulleable, {:struct, "CovenantRewardInfo"}}},
     %{name: "Amity", type: {:map, :Cuid, 8}},
     %{name: "PlayerInventoryItemAddInfo", type: {:list, :message}},
     %{name: "ExperiencePointsDelta", type: {:uint, 8}},
     %{name: "IsUpgradeSlayingGrade", type: :bool},
     %{name: "AmityDelta", type: {:map, :Cuid, 8}},
     %{name: "SpiritualBondPowerDelta", type: {:uint, 8}},
     %{
       name: "CooldownExpireDateTimeRangeInfo",
       type: {:nulleable, {:struct, "DateTimeRangeInfo"}}
     }
   ]},
  {"StackableItemMultipleUseRequest",
   [
     %{name: "ItemGuidSelector", type: {:nulleable, {:struct, "ItemGuidSelector"}}},
     %{name: "ParameterInfo", type: :message}
   ]},
  {"FavorMissionInfo",
   [
     %{name: "Vuid", type: {:struct, "Vuid"}},
     %{name: "FavorVuid", type: {:struct, "Vuid"}},
     %{name: "HuntingSiteCuidList", type: {:list, :Cuid}},
     %{name: "TargetCuidList", type: {:list, :Cuid}},
     %{name: "LevelOfTargetNpc", type: {:uint, 4}},
     %{name: "ClanCuid", type: :Cuid}
   ]},
  {"FavorInfo",
   [
     %{name: "Vuid", type: {:struct, "Vuid"}},
     %{name: "FavorTemplateCuid", type: :Cuid},
     %{name: "TerritoryCuid", type: :Cuid},
     %{name: "FavorAcceptedStrongholdCuid", type: :Cuid},
     %{name: "FavorRandomRewardCuidCandidates", type: {:list, :Cuid}}
   ]},
  {"PackageItemUseParameterInfo", [%{name: "SelectedResultCuid", type: :Cuid}]},
  {"MailStrongholdBattleEndResultLogLayoutInfo",
   [
     %{name: "MailLayoutKind", type: {:uint, 1}},
     %{name: "StrongholdCuid", type: :Cuid},
     %{name: "StrongholdBattleEndResultKind", type: {:uint, 1}},
     %{
       name: "StrongholdBattleJoinedCovenantHistoryInfos",
       type: {:list, {:nulleable, {:struct, "StrongholdBattleJoinedCovenantHistoryInfo"}}}
     },
     %{name: "WinnerCovenantVuid", type: {:struct, "Vuid"}}
   ]},
  {"StrongholdBattleJoinedCovenantHistoryInfo",
   [
     %{name: "DeploymentKind", type: {:uint, 1}},
     %{name: "CovenantVuid", type: {:struct, "Vuid"}},
     %{name: "CovenantName", type: :string},
     %{name: "JoinedDateTime", type: {:struct, "FDateTime"}},
     %{name: "IsDismissed", type: :bool},
     %{name: "CovenantEmblemInfo", type: {:nulleable, {:struct, "CovenantEmblemInfo"}}}
   ]},
  {"MailsReceiveAttachmentsInTabResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MailTab", type: {:uint, 1}},
     %{name: "ReceivedMailGuids", type: {:list, {:uint, 8}}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"MailsReceiveAttachmentsInTabRequest",
   [
     %{name: "MailTab", type: {:uint, 1}},
     %{name: "UpperBoundDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"MailAttachmentCurrencyInfo",
   [%{name: "CurrencyCuid", type: :Cuid}, %{name: "CurrencyAmount", type: {:uint, 8}}]},
  {"CollectionCompleteNotify",
   [
     %{name: "CollectionCuid", type: :Cuid},
     %{name: "RewardStatCuid", type: :Cuid},
     %{name: "ItemAddInfo", type: {:nulleable, {:struct, "ItemAddInfo"}}},
     %{name: "IsAnyRewardSentByMai", type: :bool}
   ]},
  {"MailInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "MailBoxKind", type: {:uint, 4}},
     %{name: "MailTab", type: {:uint, 1}},
     %{name: "MailKind", type: {:uint, 1}},
     %{name: "From", type: :string},
     %{name: "CreateDateTime", type: {:struct, "FDateTime"}},
     %{name: "ExpireDateTime", type: {:struct, "FDateTime"}},
     %{name: "IsRead", type: :bool},
     %{name: "IsAttachmentsReceived", type: :bool},
     %{name: "Title", type: :string},
     %{name: "Body", type: :string},
     %{name: "Attachments", type: {:nulleable, {:struct, "MailAttachmentsInfo"}}},
     %{name: "HarmfulTextKind", type: {:uint, 1}},
     %{name: "LayoutInfo", type: :message}
   ]},
  {"MailAttachmentsInfo",
   [
     %{name: "Items", type: {:list, :message}},
     %{
       name: "Currencies",
       type: {:list, {:nulleable, {:struct, "MailAttachmentCurrencyInfo"}}}
     },
     %{name: "SpiritualBondPower", type: {:uint, 8}}
   ]},
  {"StanceAcquireNotify",
   [
     %{name: "InstallAndSwitchResultCode", type: {:uint, 4}},
     %{name: "AcquiredStance", type: {:uint, 1}},
     %{name: "Stance", type: {:uint, 1}},
     %{name: "StanceSwitchCooldownExpireDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "InstalledStance", type: {:uint, 1}},
     %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
   ]},
  {"ClanSelectionQuestAcceptResponse",
   [%{name: "ErTozMessageWithResultCode", type: {:uint, 4}}, %{name: "QuestCuid", type: :Cuid}]},
  {"ClanSelectionQuestAcceptRequest", [%{name: "QuestCuid", type: :Cuid}]},
  {"StanceInstallResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "InstallRequestedStance", type: {:uint, 1}},
     %{name: "Stance", type: {:uint, 1}},
     %{name: "StanceSwitchCooldownExpireDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "InstalledStance", type: {:uint, 1}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     },
     %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
   ]},
  {"StanceInstallRequest",
   [%{name: "NpcGuid", type: {:uint, 8}}, %{name: "Stance", type: {:uint, 1}}]},
  {"StanceSwitchResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "SwitchRequestedStance", type: {:uint, 1}},
     %{name: "Stance", type: {:uint, 1}},
     %{name: "StanceSwitchCooldownExpireDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"StanceSwitchNotify",
   [%{name: "PlayerGuid", type: {:uint, 8}}, %{name: "Stance", type: {:uint, 1}}]},
  {"StanceSwitchRequest", [%{name: "Stance", type: {:uint, 1}}]},
  {"ArquiruneInfo", [%{name: "ItemInfo", type: {:struct, "ItemInfo"}}]},
  {"ErFrontServerReauthenticateInfo",
   [
     %{name: "ErFrontServerAuthenticateInfo", type: :string},
     %{name: "AuthenticateKey", type: {:uint, 4}}
   ]},
  {"ErChatServerAuthenticateInfo",
   [
     %{name: "ErServerAuthenticateInfo", type: :string},
     %{name: "AuthenticateKey", type: {:uint, 4}}
   ]},
  {"SpellstoneUnequipResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "RootSkillCuid", type: :Cuid},
     %{name: "SpellstoneGuid", type: {:uint, 8}}
   ]},
  {"SpellstoneUnequipRequest",
   [%{name: "RootSkillCuid", type: :Cuid}, %{name: "SpellstoneGuid", type: {:uint, 8}}]},
  {"SpellstoneEquipResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "RootSkillCuid", type: :Cuid},
     %{name: "SpellstoneGuid", type: {:uint, 8}},
     %{name: "SpellstoneSlotInfo", type: {:nulleable, {:struct, "SpellstoneSlotInfo"}}},
     %{
       name: "PlayerCurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     }
   ]},
  {"SpellstoneEquipRequest",
   [
     %{name: "RootSkillCuid", type: :Cuid},
     %{name: "SpellstoneGuid", type: {:uint, 8}},
     %{name: "SpellstoneSlotInfo", type: {:nulleable, {:struct, "SpellstoneSlotInfo"}}}
   ]},
  {"SkillCooldownSynchronizeNotify",
   [
     %{name: "CooldownSkillCuid", type: :Cuid},
     %{name: "SkillCuid", type: :Cuid},
     %{name: "CooldownDateTimeRangeInfo", type: {:nulleable, {:struct, "DateTimeRangeInfo"}}},
     %{name: "CooldownUpdatedReason", type: {:uint, 4}}
   ]},
  {"QuestTeleportToQuestWayPointResponse",
   [%{name: "ErTozMessageWithResultCode", type: {:uint, 4}}]},
  {"QuestTeleportToQuestWayPointRequest", [%{name: "QuestMissionCuid", type: :Cuid}]},
  {"SkillUseOptionInfo",
   [
     %{name: "SkillCuid", type: :Cuid},
     %{name: "UseManaPointsRestriction", type: :bool},
     %{name: "UseByAutoAttackTargetingRangeKind", type: :bool},
     %{name: "UseCycle", type: :bool},
     %{name: "UseCycleInPvp", type: {:nulleable, :bool}},
     %{name: "CycleRange_sec", type: {:uint, 4}},
     %{
       name: "fieldUseByAutoUseByHealthPointsCondition_6",
       type: {:nulleable, :bool}
     },
     %{name: "HealthPointsRatioToAutoUse_pe2", type: {:nulleable, {:uint, 1}}}
   ]},
  {"ControlOptionInfo", [%{name: "GroundSkillControlKind", type: {:nulleable, {:uint, 1}}}]},
  {"StackableItemQuickSlotDetailInfo", [%{name: "field_0", type: :Cuid}]},
  {"MarketSellReregisterResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "IsSuccessByGoodsGuids", type: {:map, 8, :bool}},
     %{name: "FailedGoodsGuid", type: {:uint, 8}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     }
   ]},
  {"MarketSellReregisterRequest",
   [
     %{
       name: "RegistrationFeeCurrencyInfoByGoodsGuid",
       type: {:map, 8, {:nulleable, {:struct, "CuidAndCountInfo"}}}
     }
   ]},
  {"CuidAndCountInfo", [%{name: "Cuid", type: :Cuid}, %{name: "Count", type: {:uint, 8}}]},
  {"MarketSellWithdrawResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "GoodsGuid", type: {:uint, 8}},
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"MarketSellWithdrawRequest", [%{name: "GoodsGuid", type: {:uint, 8}}]},
  {"MailQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MailTab", type: {:uint, 1}},
     %{name: "Mails", type: {:list, {:nulleable, {:struct, "MailInfo"}}}},
     %{name: "HasMore", type: :bool}
   ]},
  {"TerritoryUpdateNotify",
   [%{name: "TerritoryInfo", type: {:nulleable, {:struct, "TerritoryInfo"}}}]},
  {"CovenantGiftReceiveRewardInfo",
   [
     %{name: "CurrencyCuidToAmount", type: {:map, :Cuid, 8}},
     %{name: "ItemIndexWithCounts", type: {:list, :message}}
   ]},
  {"LimitedCountingInfo",
   [
     %{name: "CountingValue", type: {:uint, 8}},
     %{name: "LastCountingDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"PlayerLocationMonitoringInfo",
   [
     %{name: "RequestPlayerGuid", type: {:uint, 8}},
     %{name: "RequestPlayerRealmCuid", type: {:uint, 4}},
     %{name: "RequestPlayerName", type: :string},
     %{name: "TargetPlayerGuid", type: {:uint, 8}},
     %{name: "TargetPlayerRealmCuid", type: {:uint, 4}},
     %{name: "TargetPlayerName", type: :string},
     %{name: "TargetCovenantGuid", type: {:uint, 8}},
     %{name: "TargetCovenantName", type: :string},
     %{name: "TargetConnectionStatus", type: {:uint, 1}},
     %{name: "ExpiredDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"AnniversaryAchievementPrivateChannelOpenRequest", []},
  {"BasicAchievementPrivateChannelOpenRequest", []},
  {"HeroBossSpawnInfo", [%{name: "BossSpawnInfo", type: {:struct, "BossSpawnInfo"}}]},
  {"HavenEventInfo",
   [
     %{name: "HavenEventCuid", type: :Cuid},
     %{name: "EventBeginDateTime", type: {:struct, "FDateTime"}},
     %{name: "EventEndDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"FieldEnterCompleteResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "FieldInitializeInfo", type: {:nulleable, {:struct, "FieldInitializeInfo"}}},
     %{name: "ServerNavMeshCrcChecksum", type: {:uint, 4}},
     %{name: "ClientNavMeshCrcChecksum", type: {:uint, 4}},
     %{name: "EntitySpawnReason", type: {:uint, 1}},
     %{name: "LastSourceWarpPointCuid", type: :Cuid}
   ]},
  {"FieldInitializeInfo",
   [
     %{
       name: "TerritoryInfos",
       type: {:list, {:nulleable, {:struct, "TerritoryInfo"}}}
     },
     %{name: "ZoneInfos", type: {:list, {:nulleable, {:struct, "ZoneInfo"}}}},
     %{name: "BossSpawnInfos", type: {:map, :Cuid, {:list, :message}}},
     %{
       name: "OccupiableNpcBossSpawnInfos",
       type: {:map, :Cuid, {:list, {:struct, "OccupiableNpcBossSpawnInfo"}}}
     },
     %{
       name: "OccupiableNpcInfos",
       type: {:list, {:nulleable, {:struct, "OccupiableNpcInfo"}}}
     }
   ]},
  {"TerritoryBossSpawnInfo",
   [
     %{name: "BossSpawnInfo", type: {:struct, "BossSpawnInfo"}},
     %{name: "NextTrySpawnDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"BossSpawnInfo",
   [
     %{name: "SpawnerCuid", type: :Cuid},
     %{name: "SpawnDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "ForceDespawnDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"ZoneInfo",
   [
     %{name: "Cuid", type: :Cuid},
     %{name: "EntanglementGauge", type: {:uint, 4}}
   ]},
  {"TerritoryNoticeInfo",
   [
     %{name: "Notice", type: :string},
     %{name: "LastUpdatedDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"TaxInfo",
   [
     %{name: "ShopValueAddedTaxRate_pe2", type: {:uint, 4}},
     %{name: "CraftedItemValueAddedTaxRate_pe2", type: {:uint, 4}},
     %{name: "GatheringSiteEntranceFee", type: {:uint, 4}},
     %{name: "CovenantTradeTaxRate_pe2", type: {:uint, 4}},
     %{name: "MarketTaxRate_pe2", type: {:nulleable, {:uint, 4}}}
   ]},
  {"TerritoryInfo",
   [
     %{name: "DistrictInfo", type: {:struct, "DistrictInfo"}},
     %{name: "OccupyingCovenantVuid", type: {:struct, "Vuid"}},
     %{name: "OccupyingCovenantName", type: :string},
     %{name: "OccupyingCovenantLevel", type: {:uint, 4}},
     %{
       name: "TerritoryEmblemInfo",
       type: {:nulleable, {:struct, "CovenantEmblemInfo"}}
     },
     %{name: "DeployedLivingTotemCuid", type: :Cuid},
     %{
       name: "LeadingCovenantCampEmblemInfo",
       type: {:nulleable, {:struct, "CovenantEmblemInfo"}}
     },
     %{name: "EntanglementGauge", type: {:uint, 4}},
     %{
       name: "BuildingLevels",
       type: {:map, {:enum, "ETzBuildingKindType"}, {:uint, 4}}
     },
     %{name: "AddNpcCraftGreatSuccessRatio_pe4", type: {:uint, 4}},
     %{
       name: "StrongholdProtectionExpirationDateTime",
       type: {:struct, "FDateTime"}
     },
     %{
       name: "ErosionItemConfigurationInfo",
       type: {:nulleable, {:struct, "TerritoryErosionItemConfigurationInfo"}}
     },
     %{name: "NoticeInfo", type: {:nulleable, {:struct, "TerritoryNoticeInfo"}}},
     %{
       name: "ContaminationInfo",
       type: {:nulleable, {:struct, "ContaminationInfo"}}
     },
     %{name: "TaxInfo", type: {:nulleable, {:struct, "TaxInfo"}}},
     %{
       name: "StrongholdBuildingAccessPermissionKinds",
       type: {:map, {:uint, 4}, {:uint, 1}}
     },
     %{name: "StrongholdBattleAttackPhase", type: {:uint, 1}},
     %{name: "HavenEventInfos", type: {:map, :Cuid, {:map, :Cuid, :message}}}
   ]},
  {"ContaminationInfo",
   [
     %{name: "Stage", type: {:uint, 1}},
     %{name: "UpdatedValue", type: {:uint, 4}},
     %{name: "UpdatedDateTime", type: {:struct, "FDateTime"}},
     %{name: "TotalDecrement_psec", type: {:uint, 4}},
     %{
       name: "ContaminationNaturalDecreaseInfos",
       type: {:map, {:uint, 4}, {:uint, 4}}
     },
     %{name: "CastVeilDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "RemoveVeilDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "FullContamination", type: {:uint, 4}}
   ]},
  {"TerritoryErosionItemConfigurationInfo",
   [
     %{name: "IsPermitted", type: :bool},
     %{name: "InstallCostGoldPerUnitContamination", type: {:uint, 8}}
   ]},
  {"DistrictInfo", [%{name: "Cuid", type: :Cuid}]},
  {"LastDeathRecordDeleteResponse", [%{name: "ErTozMessageWithResultCode", type: {:uint, 4}}]},
  {"MarketPriceQueryResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "MarketPriceInfo", type: {:nulleable, {:struct, "MarketPriceInfo"}}}
   ]},
  {"MarketPriceInfo",
   [
     %{name: "ItemCuid", type: :Cuid},
     %{name: "GearQuality", type: {:uint, 1}},
     %{name: "GearEnhancementGrade", type: {:nulleable, {:uint, 2}}},
     %{name: "LowestUnitSalesPriceForLast7DaysUpToYesterday_pe2", type: {:uint, 8}},
     %{name: "LowestUnitSalesPriceForYesterday_pe2", type: {:uint, 8}},
     %{name: "AverageUnitSalesPriceForConfigDurationUpToYesterday_pe2", type: {:uint, 8}},
     %{name: "LastUnitSalesPrice_pe2", type: {:uint, 8}},
     %{name: "LowestUnitListPrice_pe2", type: {:uint, 8}}
   ]},
  {"MarketPriceQueryRequest",
   [
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "ItemCuid", type: :Cuid},
     %{name: "GearQuality", type: {:uint, 1}},
     %{name: "GearEnhancementGrade", type: {:nulleable, {:uint, 2}}}
   ]},
  {"MarketSellSettleResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "IsSuccessByGoodsGuids", type: {:map, 8, :bool}},
     %{name: "FailedGoodsGuid", type: {:uint, 8}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     }
   ]},
  {"MarketSellSettleRequest", [%{name: "GoodsGuids", type: {:list, {:uint, 8}}}]},
  {"AnniversaryAchievementRewardRequest",
   [
     %{name: "AnniversaryCuid", type: {:uint, 4}},
     %{name: "AnniversaryAchievementCycleBeginDateTime", type: {:struct, "FDateTime"}},
     %{name: "AchievementCuid", type: {:uint, 4}}
   ]},
  {"MountDeboardingRequest", []},
  {"MountStationaryCallingRequest",
   [
     %{name: "MountCallingRequest", type: {:struct, "FVector"}},
     %{name: "PlayerFacingDirectionYaw_rad", type: :float}
   ]},
  {"BuffAttachNotify",
   [
     %{name: "EntityGuid", type: {:uint, 8}},
     %{name: "BuffInfo", type: {:nulleable, {:struct, "BuffInfo"}}},
     %{
       name: "BuffAffectInfoList",
       type: {:list, :message}
     }
   ]},
  {"SpellstoneAdditionalHealthAndManaStatsInfo",
   [
     %{name: "HealthPointsAffectIncreaseAmount", type: :float},
     %{name: "HealthPointsAffectIncreaseRatio", type: :float},
     %{name: "ManaPointsAffectIncreaseAmount", type: :float},
     %{name: "ManaPointsAffectIncreaseRatio", type: :float}
   ]},
  {"BuffRenewNotify",
   [
     %{name: "EntityGuid", type: {:uint, 8}},
     %{name: "BuffInfo", type: {:nulleable, {:struct, "BuffInfo"}}}
   ]},
  {"SpellstoneAdditionalStatsInfo",
   [
     %{
       name: "SpellstoneAdditionalSkillStatsInfo",
       type: {:nulleable, {:struct, "SpellstoneAdditionalSkillStatsInfo"}}
     },
     %{
       name: "SpellstoneAdditionalBuffStatsInfosByBuffKindAndQuickSlotBuffKind",
       type:
         {:map, {:enum, "BuffKindType"},
          {:map, {:enum, "QuickSlotBuffKindType"},
           {:nulleable, {:struct, "SpellstoneAdditionalBuffStatsInfo"}}}}
     },
     %{
       name: "SpellstoneAdditionalHealthAndManaStatsInfosByStatsAffectKind",
       type:
         {:map, {:enum, "StatsAffectKindType"},
          {:nulleable, {:struct, "SpellstoneAdditionalHealthAndManaStatsInfo"}}}
     }
   ]},
  {"SpellstoneAdditionalSkillStatsInfo",
   [
     %{name: "ManaPointsCostDecreaseAmount", type: {:uint, 4}},
     %{name: "ManaPointsCostDecreaseRatio_pe4", type: {:uint, 4}},
     %{name: "CooldownDurationDecreaseAmount_msec", type: {:uint, 4}},
     %{name: "CooldownDurationDecreaseRatio_pe4", type: {:uint, 4}},
     %{name: "FeedbackHealthPointsAffectRatioIncreaseAmount", type: :float},
     %{name: "FeedbackHealthPointsAffectRatioIncreaseRatio", type: :float},
     %{
       name: "CharacterStatChangesDuringSkillProgress",
       type: {:list, {:nulleable, {:struct, "CharacterStatChangeInfo"}}}
     }
   ]},
  {"PlayerMarketSaleGoodsListResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "MarketSellerGoodsInfos",
       type: {:list, {:nulleable, {:struct, "MarketSellerGoodsInfo"}}}
     }
   ]},
  {"MarketSellerGoodsInfo",
   [
     %{name: "MarketGoodsInfo", type: {:struct, "MarketGoodsInfo"}},
     %{name: "MarketSellState", type: {:uint, 1}}
   ]},
  {"MarketGoodsInfo",
   [
     %{name: "GoodsGuid", type: {:uint, 8}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "SellPlayerName", type: :string},
     %{name: "ItemCuid", type: :Cuid},
     %{name: "IsStorable", type: :bool},
     %{name: "ItemAdditionalInfo", type: :message},
     %{name: "ItemStackCount", type: {:uint, 4}},
     %{name: "CurrencyCuid", type: :Cuid},
     %{name: "CurrencyAmount", type: {:uint, 8}},
     %{name: "ExpireDateTime", type: {:struct, "FDateTime"}},
     %{name: "Index", type: {:nulleable, {:uint, 4}}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"PlayerMarketSaleGoodsListRequest", []},
  {"MarketSellCancelResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "GoodsGuid", type: {:uint, 8}},
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"MarketSellResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MarketKind", type: {:uint, 1}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"MarketSellCancelRequest", [%{name: "GoodsGuid", type: {:uint, 8}}]},
  {"MerchandiseBuyCountInfo",
   [
     %{name: "SubCategoryCuid", type: :Cuid},
     %{name: "MerchandiseCuid", type: :Cuid},
     %{name: "BuyOrCraftLimitLevel", type: {:uint, 1}},
     %{name: "Count", type: {:uint, 4}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"ThreatListClearNotify", []},
  {"FieldMigrationReadyResponse", []},
  {"LastDeathRecordDeleteRequest", []},
  {"ItemAcquireNotify",
   [
     %{name: "RealmCuid", type: :Cuid},
     %{name: "PlayerName", type: :string},
     %{
       name: "ItemAcquireSourceInfo",
       type: {:nulleable, {:struct, "ItemAcquireSourceInfo"}}
     },
     %{name: "ItemIndices", type: {:list, :message}}
   ]},
  {"ItemAcquireSourceInfo",
   [
     %{name: "ItemAcquireMethod", type: {:uint, 1}},
     %{name: "SourceCuid", type: :Cuid},
     %{name: "AcquireSourceAdditionalParameter", type: :message}
   ]},
  {"DropParameter", [%{name: "NpcCuid", type: :Cuid}]},
  {"MarketSellRequest",
   [
     %{name: "MarketKind", type: {:uint, 1}},
     %{name: "ItemGuidSelector", type: {:nulleable, {:struct, "ItemGuidSelector"}}},
     %{name: "SellCurrencyCuid", type: :Cuid},
     %{name: "SellCurrencyAmount", type: {:uint, 8}},
     %{name: "RegistrationFeeCurrencyCuid", type: :Cuid},
     %{name: "RegistrationFeeCurrencyAmount", type: {:uint, 8}}
   ]},
  {"FollowerCollectionTopExperienceInfo",
   [
     %{name: "FollowerItemCuid", type: :Cuid},
     %{name: "OwnerPlayerNameOrNull", type: :string},
     %{name: "ExperiencePoints", type: {:uint, 8}}
   ]},
  {"AuthenticateInfo", [%{name: "field_0", type: :message}]},
  {"ErInterServerMigrationAuthenticateInfo",
   [
     %{name: "ErServerAuthenticateInfo", type: :string},
     %{name: "AuthenticateKey", type: {:uint, 4}}
   ]},
  {"RewardInfo",
   [
     %{name: "ExperiencePoints", type: {:uint, 8}},
     %{name: "CovenantExperiencePoints", type: {:uint, 8}},
     %{name: "CurrencyCuidToAmount", type: {:map, :Cuid, 8}},
     %{name: "RewardItemInfos", type: {:list, {:struct, "ItemInfo"}}},
     %{
       name: "SortedRewardItemIndexWithCounts",
       type: {:list, {:nulleable, {:struct, "RewardItemIndexWithCount"}}}
     },
     %{name: "EntanglementGauge", type: {:uint, 4}},
     %{name: "Amity", type: {:map, :Cuid, 8}},
     %{name: "BossChaseGauge", type: {:uint, 4}},
     %{name: "IsUpgradeSlayingGrade", type: :bool},
     %{name: "SpiritualBondPower", type: {:uint, 8}},
     %{name: "AnniversaryRewardCuidToAmount", type: {:map, :Cuid, 8}},
     %{name: "AnniversaryPoint", type: {:uint, 8}},
     %{name: "SeasonPassExperiencePoints", type: {:uint, 8}},
     %{name: "UnlockPaidRewardSeasonPassCuid", type: :Cuid},
     %{name: "UnlockPlusRewardSeasonPassCuid", type: :Cuid},
     %{name: "UnlockPaidAttendanceCuid", type: :Cuid}
   ]},
  {"RewardItemIndexWithCount",
   [
     %{name: "ItemIndexWithCount", type: {:struct, "ItemIndexWithCount"}},
     %{name: "IsCovenantReward", type: :bool},
     %{
       name: "ItemAdditionalInfo",
       type: {:nulleable, {:struct, "ItemCreateAdditionalInfo"}}
     }
   ]},
  {"LastDeathRecordNotify", [%{name: "DeathRecordInfo", type: :message}]},
  {"DeathPenaltyRecordInfoAddNotify", [%{name: "DeathPenaltyRecordInfo", type: :message}]},
  {"DeathPenaltyRecordInfo",
   [
     %{name: "RecordKind", type: {:uint, 4}},
     %{name: "Guid", type: {:uint, 8}},
     %{name: "PlayerLevel", type: {:uint, 4}},
     %{name: "LostExperiencePointsPercentage", type: {:uint, 4}},
     %{name: "LostExperiencePoints", type: {:uint, 8}},
     %{name: "ExpireDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"DeathPenaltyRecoverResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "RecoveredDeathPenaltyGuids", type: {:list, {:uint, 8}}},
     %{name: "DeathPenaltyFreeRecoveryInfo", type: :message},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"DeathPenaltyRecoverRequest",
   [
     %{name: "CurrencyCuid", type: :Cuid},
     %{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
     # %{name: "field_2", type: {:struct, "FDateTime"}}
   ]},
  {"ItemDestroyResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"ItemDestroyRequest",
   [%{name: "ItemGuidSelector", type: {:nulleable, {:struct, "ItemGuidSelector"}}}]},
  {"ItemGuidSelector",
   [
     %{name: "ItemGuid", type: {:uint, 8}},
     %{name: "SingleItemSelector", type: :bool},
     %{name: "ItemCount", type: {:uint, 8}}
   ]},
  {"PlayerPrivateStatsInfoSynchronizeNotify",
   [
     %{
       name: "PlayerPrivateStatsInfo",
       type: {:nulleable, {:struct, "PlayerPrivateStatsInfo"}}
     }
   ]},
  {"CovenantCampInfoListRequest", []},
  {"GearEnhanceResponse",
   [
     %{name: "GearEnhanceResponse", type: {:uint, 4}},
     %{
       name: "GearEnhancementResultInfo",
       type: {:nulleable, {:struct, "GearEnhancementResultInfo"}}
     }
   ]},
  {"GearEnhancementResultInfo",
   [
     %{name: "GearGuid", type: {:uint, 8}},
     %{name: "IsEnhancementSuccess", type: :bool},
     %{name: "ResultEnhancementGrade", type: {:uint, 2}},
     %{name: "PreviousEnhancementGrade", type: {:uint, 2}},
     %{name: "IsEroded", type: :bool},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     },
     %{name: "DestructionRewardInfo", type: {:nulleable, {:struct, "RewardInfo"}}},
     %{name: "IsDestroyed", type: {:uint, 1}}
   ]},
  {"GearEnhanceRequest",
   [
     %{name: "GearGuid", type: {:uint, 8}},
     %{name: "MaterialItemGuid", type: {:uint, 8}},
     %{name: "RequestEnhancementGrade", type: {:uint, 2}},
     %{name: "SpecialGearEnhancementScheduleCuid", type: :Cuid}
   ]},
  {"FavoriteCraftRecipeInfo",
   [
     %{name: "RewardCuid", type: :Cuid},
     %{name: "RegisterDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"InteractionCompleteNotify",
   [
     %{name: "state", type: {:uint, 4}},
     %{name: "user_guid", type: {:uint, 8}},
     %{name: "interaction_guid", type: {:uint, 8}}
   ]},
  {"InteractableDoodadInfo",
   [
     %{name: "EntityInfo", type: {:struct, "EntityInfo"}},
     %{name: "DoodadCuid", type: :Cuid},
     %{name: "SpawnerCuid", type: :Cuid},
     %{name: "RemainingInteractionCompleteCount", type: {:uint, 4}}
   ]},
  {"SelfieDoodadInfo",
   [%{name: "InteractableDoodadInfo", type: {:struct, "InteractableDoodadInfo"}}]},
  {"OneShotSpecialMoveDoodadInfo",
   [%{name: "InteractableDoodadInfo", type: {:struct, "InteractableDoodadInfo"}}]},
  {"ReturnPlaceDoodadInfo",
   [%{name: "InteractableDoodadInfo", type: {:struct, "InteractableDoodadInfo"}}]},
  {"StackableItemUpdateInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "StackCountDelta", type: {:uint, 8}},
     %{name: "AcquiredDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"PlayerItemUseNotify",
   [
     %{name: "ItemGuid", type: {:uint, 8}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     },
     %{name: "CovenantRewardInfo", type: {:nulleable, {:struct, "CovenantRewardInfo"}}},
     %{name: "Amity", type: {:map, :Cuid, 8}},
     %{name: "ItemIndexWithCounts", type: {:list, :message}},
     %{name: "ExperiencePointsDelta", type: {:uint, 8}},
     %{name: "IsUpgradeSlayingGrade", type: :bool},
     %{name: "AmityDelta", type: {:map, :Cuid, 8}},
     %{name: "SpiritualBondPowerDelta", type: {:uint, 8}},
     %{
       name: "CooldownExpireDateTimeRangeInfo",
       type: {:nulleable, {:struct, "DateTimeRangeInfo"}}
     }
   ]},
  {"ErFrontServerSessionInitializeInfoNotify",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{
       name: "RealmAccountInfo",
       type: {:nulleable, {:struct, "RealmAccountInfo"}}
     },
     %{
       name: "PlayerSummaryInfos",
       type: {:map, 8, {:nulleable, {:struct, "PlayerSummaryInfo"}}}
     },
     %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
     %{name: "CanCheatCommand", type: :bool},
     %{name: "PlayerGuidsNeedChangeName", type: {:list, {:uint, 8}}}
   ]},
  {"RealmAccountInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "UniverseAccountGuid", type: {:uint, 8}},
     %{
       name: "UniverseAccountInfo",
       type: {:nulleable, {:struct, "UniverseAccountInfo"}}
     },
     %{
       name: "OptionInfo",
       type: {:nulleable, {:struct, "RealmAccountOptionInfo"}}
     },
     %{name: "PlayedCutSceneCuids", type: {:list, :Cuid}},
     %{name: "AdditionalPlayerSlotCount", type: {:uint, 4}},
     %{name: "HighestPlayerMaxLevel", type: {:uint, 4}}
   ]},
  {"RealmAccountOptionInfo",
   [
     %{
       name: "PushNotificationOptionInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "PushNotificationOptionInfo"}}}
     }
   ]},
  {"UniverseAccountInfo",
   [
     %{name: "PresenceId", type: :string},
     %{name: "Guid", type: {:uint, 8}},
     %{name: "Npsn", type: :string},
     %{name: "NpaCode", type: :string},
     %{name: "WpcInfo", type: {:nulleable, {:struct, "WpcInfo"}}}
   ]},
  {"WpcInfo",
   [
     %{name: "BillingId", type: :string},
     %{name: "CharacterIdForHistory", type: :string},
     %{name: "ProductType", type: {:uint, 4}},
     %{name: "CoinType", type: :string}
   ]},
  {"DeathRecordInfo",
   [
     %{name: "AffectSourceInfo", type: :message},
     %{name: "LostExperiencePointsPercentage", type: {:uint, 4}},
     %{name: "LostExperiencePoints", type: {:uint, 8}},
     %{name: "DeathPenaltyExemptKind", type: {:uint, 4}}
   ]},
  {"CharacterCastAffectSourceInfo",
   [
     %{name: "Cuid", type: :Cuid},
     %{name: "SourceEntityGuid", type: {:uint, 8}},
     %{name: "ContributorRecordInfo", type: {:nulleable, {:struct, "CharacterRecordInfo"}}}
   ]},
  {"CharacterRecordInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "Level", type: {:uint, 4}},
     %{name: "CharacterNameInfo", type: {:nulleable, {:struct, "CharacterNameInfo"}}},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
     %{name: "CovenantName", type: :string},
     %{name: "StrongholdBattleGuid", type: {:uint, 8}},
     %{name: "IsPvpStatsAffectedCharacter", type: :bool}
   ]},
  {"RealmCovenantId",
   [
     %{name: "RealmCuid", type: :Cuid},
     %{name: "CovenantVuid", type: {:struct, "Vuid"}}
   ]},
  {"CharacterNameInfo", [%{name: "Cuid", type: :Cuid}, %{name: "Name", type: :string}]},
  {"QuestMissionProgressInfo",
   [
     %{name: "QuestMissionVuid", type: {:struct, "Vuid"}},
     %{name: "ProgressCount", type: {:uint, 8}}
   ]},
  {"SpellstoneSlotInfo",
   [
     %{name: "LocationCoordinates", type: {:struct, "FIntVector2D"}},
     %{name: "Orientation", type: {:uint, 1}}
   ]},
  {"PushNotificationOptionInfo",
   [
     %{name: "Cuid", type: :Cuid},
     %{name: "IsEnabled", type: :bool},
     %{name: "IsNotifiedEvenWhenConnected", type: :bool}
   ]},
  {"InventoryOptionInfo", [%{name: "IsEquippedItemVisible", type: :bool}]},
  {"GameNotificationOptionInfo",
   [
     %{name: "HeroBossSpawnNotifyDisplayOption", type: :bool},
     %{name: "DistrictBossSpawnNotifyDisplayOption", type: :bool},
     %{name: "ZonePointBossSpawnNotifyDisplayOption", type: :bool}
   ]},
  {"NameTagHealthBarDisplayOptionDetailInfo",
   [
     %{name: "IsOwnNameTagDisplayed", type: :bool},
     %{name: "IsOwnCovenantNameDisplayed", type: :bool},
     %{name: "IsOwnHealthBarDisplayed", type: :bool},
     %{name: "IsOtherCovenantNameDisplayed", type: :bool},
     %{name: "IsSameCovenantHealthBarDisplayed", type: :bool},
     %{name: "IsSamePartyOrBattalionHealthBarDisplayed", type: :bool}
   ]},
  {"PotionAutoUsageOptionInfo",
   [
     %{name: "IsAutoUse", type: :bool},
     %{name: "MaxPointsRatioToAutoUse_pe2", type: {:uint, 1}},
     %{name: "MaxPointsRatioToAutoUseInPvp_pe2", type: {:uint, 1}}
   ]},
  {"CombatLootOptionInfo",
   [
     %{name: "MaxWeightPercentage", type: {:uint, 2}},
     %{name: "MinCoreMaterialItemGrade", type: {:uint, 1}},
     %{name: "IncludePotion", type: :bool},
     %{name: "IncludeBuffItem", type: :bool},
     %{name: "MinArquiruneGrade", type: {:uint, 1}},
     %{name: "MinSpellstoneGrade", type: {:uint, 1}},
     %{name: "DefaultDisplayDropItemName", type: :bool}
   ]},
  {"FollowerItemAdditionalInfo",
   [
     %{name: "Tier", type: {:uint, 4}},
     %{name: "Level", type: {:uint, 4}},
     %{name: "ExperiencePoints", type: {:uint, 8}},
     %{name: "LastLevelUpDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"StrongholdInfo",
   [
     %{name: "HeadquartersLevel", type: {:uint, 4}},
     %{name: "FavorBranchLevel", type: {:uint, 4}},
     %{
       name: "CurrentStrongholdTaxInfo",
       type: {:nulleable, {:struct, "StrongholdTaxInfo"}}
     },
     %{
       name: "ReservedStrongholdTaxInfo",
       type: {:nulleable, {:struct, "StrongholdTaxInfo"}}
     },
     %{
       name: "StrongholdProtectionInfo",
       type: {:nulleable, {:struct, "StrongholdProtectionInfo"}}
     },
     %{name: "OccupyDateTime", type: {:struct, "FDateTime"}},
     %{name: "StrongholdBattleAttackPhase", type: {:uint, 1}},
     %{
       name: "FirstOccupationRewardReceivedPlayerCovenantGuid",
       type: {:uint, 8}
     },
     %{
       name: "FirstOccupationRewardEarliestReceivableDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     }
   ]},
  {"StrongholdTaxInfo", [%{name: "TaxInfo", type: {:nulleable, {:struct, "Taxinfo"}}}]},
  {"Taxinfo",
   [
     %{name: "ShopValueAddedTaxRate_pe2", type: {:uint, 4}},
     %{name: "CraftedItemValueAddedTaxRate_pe2", type: {:uint, 4}},
     %{name: "GatheringSiteEntranceFee", type: {:uint, 4}},
     %{name: "CovenantTradeTaxRate_pe2", type: {:uint, 4}},
     %{name: "MarketTaxRate_pe2", type: {:nulleable, {:uint, 4}}}
   ]},
  {"StrongholdProtectionInfo",
   [
     %{name: "ProtectionStartDateTime", type: {:struct, "FDateTime"}},
     %{name: "ProtectionEndDateTime", type: {:struct, "FDateTime"}},
     %{name: "ProtectionRestrictionEndDateTime", type: {:struct, "FDateTime"}},
     %{name: "ReservationDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"CovenantInfo",
   [
     %{
       name: "CrossRealmCovenantDiplomacyInfos",
       type: {:nulleable, {:struct, "CovenantDiplomacyInfos"}}
     },
     %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
     %{name: "Ranking", type: {:nulleable, {:uint, 4}}},
     %{name: "Name", type: :string},
     %{name: "Level", type: {:uint, 4}},
     %{name: "LevelUpLastUpdatedDateTime", type: {:struct, "FDateTime"}},
     %{name: "ExperiencePoints", type: {:uint, 8}},
     %{name: "CovenantJoinKind", type: {:nulleable, {:uint, 1}}},
     %{
       name: "CovenantMemberInfos",
       type: {:map, 8, {:nulleable, {:struct, "CovenantMemberInfo"}}}
     },
     %{name: "MaxCovenantMemberCount", type: {:uint, 2}},
     %{name: "Notice", type: :string},
     %{name: "NoticeHarmfulTextKind", type: {:nulleable, {:uint, 1}}},
     %{name: "NoticeLastUpdatedDateTime", type: {:struct, "FDateTime"}},
     %{name: "Introduction", type: :string},
     %{name: "IntroductionHarmfulTextKind", type: {:nulleable, {:uint, 1}}},
     %{
       name: "CovenantCampOccupancyInfo",
       type: {:nulleable, {:struct, "CovenantCampOccupancyInfo"}}
     },
     %{
       name: "OccupiedStrongholdInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "StrongholdInfo"}}}
     },
     %{
       name: "HavenOrganizationStatsDetailInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "HavenOrganizationStatsDetailInfo"}}}
     },
     %{name: "MainHavenCuid", type: :Cuid},
     %{
       name: "CovenantEmblemInfo",
       type: {:nulleable, {:struct, "CovenantEmblemInfo"}}
     },
     %{name: "CovenantMemberRoleInfos", type: {:list, :message}},
     %{
       name: "CovenantHighestUpgradedBuildingLevelInfos",
       type: {:map, :Cuid, 4}
     },
     %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}},
     %{name: "CovenantLivingTotemInfos", type: {:list, :message}},
     %{
       name: "CovenantResearchInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "CovenantResearchInfo"}}}
     },
     %{
       name: "CovenantDiplomacyInfos",
       type: {:nulleable, {:struct, "CovenantDiplomacyInfos"}}
     },
     %{
       name: "PlayerLocationMonitoringInfos",
       type: {:list, {:nulleable, {:struct, "PlayerLocationMonitoringInfo"}}}
     },
     %{
       name: "CovenantOutLinkInfos",
       type:
         {:map, {:enum, "CovenantOutLinkKindType"},
          {:nulleable, {:struct, "CovenantOutLinkInfo"}}}
     },
     %{name: "CreateDateTime", type: {:struct, "FDateTime"}},
     %{name: "CovenantCampaignInfo", type: :message},
     %{name: "HighestOccupiedStrongholdGrade", type: {:nulleable, {:uint, 1}}},
     %{
       name: "CovenantRealmTransferInfo",
       type: {:nulleable, {:struct, "CovenantRealmTransferInfo"}}
     },
     %{
       name: "LastCovenantRealmTransferDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     },
     %{
       name: "LastPlunderDeclaredDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     }
   ]},
  {"CovenantCampaignInfo",
   [
     %{name: "ActiveCampaignProgressInfos", type: {:map, :Cuid, {:list, :Cuid}}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}},
     %{name: "CovenantCampaignProgressInfo", type: :message},
     %{name: "CovenantCampaignTicketCount", type: {:uint, 4}}
   ]},
  {"CovenantOutLinkInfo",
   [
     %{name: "CovenantOutLinkKind", type: {:uint, 1}},
     %{name: "Uri", type: :string},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"CovenantDiplomacyInfos",
   [
     %{name: "RequestInfos", type: {:map, 8, :message}},
     %{name: "ResponseInfos", type: {:map, 8, :message}}
   ]},
  {"CovenantDiplomacyInfo",
   [
     %{name: "RequestCovenantGuid", type: {:uint, 8}},
     %{name: "ResponseCovenantGuid", type: {:uint, 8}},
     %{name: "CovenantDiplomacyState", type: {:uint, 4}},
     %{name: "CreateDateTime", type: {:struct, "FDateTime"}},
     %{name: "CovenantDiplomacyAdditionalInfo", type: :message}
   ]},
  {"CovenantResearchInfo",
   [
     %{name: "ResearchCuid", type: :Cuid},
     %{name: "ResearchLevel", type: {:uint, 4}},
     %{name: "ResearchState", type: {:uint, 4}},
     %{name: "HavenCuid", type: :Cuid},
     %{name: "WorkplaceCuid", type: :Cuid},
     %{name: "LastUpdateGauge_mw", type: {:uint, 8}},
     %{name: "ResearchStartDateTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"CovenantLivingTotemInfo",
   [
     %{name: "LivingTotemCuid", type: :Cuid},
     %{name: "LivingTotemTier", type: {:uint, 4}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"CovenantMemberRoleInfo",
   [
     %{name: "CovenantMemberRoleKind", type: {:uint, 1}},
     %{name: "Name", type: :string},
     %{
       name: "CovenantPermissionsInfo",
       type: {:nulleable, {:struct, "CovenantPermissionsInfo"}}
     },
     %{name: "CreateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"CovenantPermissionsInfo",
   [
     %{name: "CanEditCovenantInfo", type: :bool},
     %{name: "CanManageCovenantMember", type: :bool},
     %{name: "CanBanishMember", type: :bool},
     %{name: "CanManageHaven", type: :bool},
     %{name: "CanModifyTax", type: :bool},
     %{name: "CanManageDiplomacy", type: :bool},
     %{name: "CanDeclareBattle", type: :bool},
     %{name: "CanStartCampaign", type: :bool}
   ]},
  {"HavenOrganizationStatsDetailInfo",
   [
     %{
       name: "Stats",
       type: {:map, 4, {:map, :Cuid, 4}}
     }
   ]},
  {"CovenantCampOccupancyInfo",
   [
     %{name: "HavenOccupancyInfo", type: {:struct, "HavenOccupancyInfo"}},
     %{name: "CovenantCampChangeCooldownExpireDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"HavenOccupancyInfo",
   [
     %{name: "Cuid", type: :Cuid},
     %{
       name: "HavenOperationInfo",
       type: {:nulleable, {:struct, "HavenOperationInfo"}}
     }
   ]},
  {"HavenOperationInfo",
   [
     %{
       name: "RecommendedResourceKinds",
       type: {:list, {:enum, "ResourceKindType"}}
     },
     %{name: "DeployedLivingTotemCuid", type: :Cuid},
     %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}}
   ]},
  {"CovenantMemberInfo",
   [
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerName", type: :string},
     %{name: "CovenantMemberRoleKind", type: {:uint, 1}},
     %{name: "CovenantMemberRoleName", type: :string},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "Level", type: {:uint, 4}},
     %{name: "SlayingGrade", type: {:uint, 2}},
     %{name: "ConnectionStatus", type: {:uint, 4}},
     %{name: "LastClientDisconnectDateTime", type: {:struct, "FDateTime"}},
     %{name: "PartyGuid", type: {:uint, 8}},
     %{name: "BattalionGuid", type: {:uint, 8}},
     %{name: "DailyContributionPoints", type: {:uint, 8}},
     %{name: "WeeklyContributionPoints", type: {:uint, 8}},
     %{name: "PreviousWeeklyContributionPoints", type: {:uint, 8}},
     %{name: "TotalContributionPoints", type: {:uint, 8}},
     %{name: "ContributionPointsUpdateDateTime", type: {:struct, "FDateTime"}},
     %{name: "CreateDateTime", type: {:struct, "FDateTime"}},
     %{
       name: "CovenantMemberRoleRewardLastAcquiredDateTime",
       type: {:struct, "FDateTime"}
     },
     %{
       name: "CovenantMemberRoleLastUpdatedDateTime",
       type: {:struct, "FDateTime"}
     }
   ]},
  {"CovenantGiftBoxInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "MissionCuid", type: :Cuid},
     %{name: "MissionStep", type: {:uint, 4}},
     %{name: "GiftBoxCuid", type: :Cuid},
     %{name: "ExpireDateTime", type: {:struct, "FDateTime"}},
     %{name: "SenderPlayerGuid", type: {:uint, 8}},
     %{name: "SenderPlayerName", type: :string},
     %{name: "IsReceived", type: :bool},
     %{name: "ReceiveRewardInfo", type: :message}
   ]},
  {"MissionInfo",
   [
     %{name: "MissionCuid", type: :Cuid},
     %{name: "ProgressCount", type: {:uint, 4}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}},
     %{
       name: "RewardAcquiredDateTimes",
       type: {:map, 4, {:nulleable, {:struct, "FDateTime"}}}
     }
   ]},
  {"SpellstoneSlotPageInfo",
   [
     %{
       name: "SpellstoneSlotInfos",
       type: {:map, 8, {:nulleable, {:struct, "SpellstoneSlotInfo"}}}
     }
   ]},
  {"FIntVector2D", [%{name: "field_0", type: {:uint, 4}}, %{name: "field_1", type: {:uint, 4}}]},
  {"QuickSlotPageInfo",
   [
     %{name: "PageOfRightQuickSlot", type: {:uint, 4}},
     %{name: "PageOfMiddleQuickSlot", type: {:uint, 4}}
   ]},
  {"SkillQuickSlotDetailInfo", [%{name: "SkillCuid", type: :Cuid}]},
  {"FollowerItemInfo",
   [
     %{name: "StackableItemInfo", type: {:struct, "StackableItemInfo"}},
     %{
       name: "FollowerItemAdditionalInfo",
       type: {:nulleable, {:struct, "FollowerItemAdditionalInfo"}}
     }
   ]},
  {"SpellstoneInfo",
   [
     %{name: "ItemInfo", type: {:struct, "ItemInfo"}},
     %{
       name: "SpellstoneAdditionalInfo",
       type: {:nulleable, {:struct, "SpellstoneAdditionalInfo"}}
     }
   ]},
  {"SpellstoneAdditionalInfo", [%{name: "SubOptionCuids", type: {:list, :Cuid}}]},
  {"FollowerCollectionInfo",
   [
     %{name: "CollectionCuid", type: :Cuid},
     %{
       name: "CollectionStatus",
       type: {:map, :Cuid, {:nulleable, {:struct, "FollowerCollectionTopExperienceInfo"}}}
     },
     %{name: "AccomplishedRewardPhase", type: {:uint, 1}}
   ]},
  {"CollectionProgressInfo",
   [
     %{name: "CollectionCuid", type: :Cuid},
     %{name: "RegisteredCollectionSlotItemCuids", type: {:map, :Cuid, :Cuid}}
   ]},
  {"PlayerInitializeInfoNotify",
   [
     %{
       name: "PlayerInitializeInfo",
       type: {:nulleable, {:struct, "PlayerInitializeInfo"}}
     },
     %{name: "CovenantInfo", type: {:nulleable, {:struct, "CovenantInfo"}}},
     %{name: "CovenantBattalionInfos", type: {:map, 8, {:struct, "FDateTime"}}},
     %{
       name: "FirstLoginAsPlayerDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     },
     %{
       name: "ReturningUserReturnedDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     },
     %{
       name: "ContentsActivationFlags",
       type: {:list, :bool}
     }
   ]},
  {"PlayerInitializeInfo",
   [
     %{name: "PlayerInfo", type: {:nulleable, {:struct, "PlayerInfo"}}},
     %{name: "IsEnteredInField", type: :bool},
     %{
       name: "PlayerPrivateStatsInfo",
       type: {:nulleable, {:struct, "PlayerPrivateStatsInfo"}}
     },
     %{
       name: "PlayerStanceInfo",
       type: {:nulleable, {:struct, "PlayerStanceInfo"}}
     },
     %{
       name: "CombinedInventoryInfo",
       type: {:nulleable, {:struct, "CombinedInventoryInfo"}}
     },
     %{name: "SelectedEquipmentPresetIndex", type: {:uint, 1}},
     %{name: "EquipmentPresetInfos", type: {:map, {:enum, "EquipmentPresetIndexType"}, :message}},
     %{
       name: "QuickSlotInfos",
       type: {:map, {:enum, "QuickSlotIndexType"}, {:nulleable, {:struct, "QuickSlotInfo"}}}
     },
     %{
       name: "QuickSlotPageInfos",
       type: {:map, {:enum, "StanceType"}, {:nulleable, {:struct, "QuickSlotPageInfo"}}}
     },
     %{name: "OpenFogsByDistrictCuid", type: {:map, :Cuid, {:uint, 8}}},
     %{
       name: "PlayerGameOptionInfo",
       type: {:nulleable, {:struct, "PlayerGameOptionInfo"}}
     },
     %{
       name: "PushNotificationOptionInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "PushNotificationOptionInfo"}}}
     },
     %{
       name: "PlayerSkillInfo",
       type: {:nulleable, {:struct, "PlayerSkillInfo"}}
     },
     %{
       name: "FavoriteCraftRecipeInfos",
       type: {:list, {:nulleable, {:struct, "FavoriteCraftRecipeInfo"}}}
     },
     %{name: "QuestsInfo", type: {:nulleable, {:struct, "QuestsInfo"}}},
     %{name: "CompletedTutorialCuids", type: {:list, :Cuid}},
     %{name: "PartyInfo", type: {:nulleable, {:struct, "PartyInfo"}}},
     %{name: "BattalionInfo", type: :message},
     %{
       name: "InGameNotificationInfos",
       type: {:list, {:nulleable, {:struct, "InGameNotificationInfo"}}}
     },
     %{name: "AmityInfos", type: {:map, :Cuid, 8}},
     %{
       name: "PlayerFollowerInfo",
       type: {:nulleable, {:struct, "PlayerFollowerInfo"}}
     },
     %{
       name: "PlayerServerDrivenPlayInfo",
       type: {:nulleable, {:struct, "PlayerServerDrivenPlayInfo"}}
     },
     %{
       name: "PlayerLimitedCounterInfo",
       type: {:nulleable, {:struct, "PlayerLimitedCounterInfo"}}
     },
     %{
       name: "AutoBuySettingsInfo",
       type: {:nulleable, {:struct, "AutoBuySettingsInfo"}}
     },
     %{
       name: "AutoSellSettingsInfo",
       type: {:nulleable, {:struct, "AutoSellSettingsInfo"}}
     },
     %{
       name: "UsableItemCooldownExpireDateTimeRangeInfos",
       type: {:map, 4, {:nulleable, {:struct, "DateTimeRangeInfo"}}}
     },
     %{
       name: "MountSkillSlotInfos",
       type: {:map, {:enum, "MountSkillSlotIndexType"}, :bool}
     },
     %{name: "PointCurrencyContainerInfo", type: {:map, :Cuid, 8}},
     %{
       name: "RealmAccountWarehouseInfo",
       type: {:nulleable, {:struct, "RealmAccountWarehouseInfo"}}
     },
     %{
       name: "RealmAccountWarehouseAutoStoreSettingsInfo",
       type: {:nulleable, {:struct, "RealmAccountWarehouseAutoStoreSettingsInfo"}}
     },
     %{name: "ActivatedCollectionCategoryCuids", type: {:list, :Cuid}},
     %{
       name: "CollectionProgressInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "CollectionProgressInfo"}}}
     },
     %{name: "BasicOrGrowthGuideAchievementInfos", type: {:list, :message}},
     %{
       name: "AnniversaryAchievementInfos",
       type: {:map, :Cuid, {:list, :message}}
     },
     %{
       name: "AnniversaryAchievementPointInfos",
       type: {:list, {:nulleable, {:struct, "AnniversaryAchievementPointInfo"}}}
     },
     %{name: "DiscoveredSelfieDoodadSpawnerCuids", type: {:list, :Cuid}},
     %{name: "LastDeathRecordInfo", type: :message},
     %{name: "DeathPenaltyRecordInfos", type: {:list, :message}},
     %{name: "DeathPenaltyFreeRecoveryInfo", type: :message},
     %{
       name: "TransmutationProgressInfos",
       type: {:map, {:enum, "ItemCategoryType"}, {:map, {:enum, "ItemGradeType"}, 2}}
     },
     %{
       name: "MissionInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "MissionInfo"}}}
     },
     %{
       name: "ArquiAttunementInfo",
       type: {:nulleable, {:struct, "ArquiAttunementInfo"}}
     },
     %{name: "AlertPlayers", type: {:map, 8, {:struct, "FDateTime"}}},
     %{name: "CrossRealmAlertPlayers", type: {:map, 8, {:struct, "FDateTime"}}},
     %{
       name: "PlayerLocationMonitoringInfos",
       type: {:list, {:nulleable, {:struct, "PlayerLocationMonitoringInfo"}}}
     },
     %{name: "PlayerHarmfulTextOnChatViolationInfo", type: :message},
     %{name: "FissionPoints", type: {:uint, 4}},
     %{
       name: "PlayerCashShopInfo",
       type: {:nulleable, {:struct, "PlayerCashShopInfo"}}
     },
     %{name: "PlayerAutoUseInfo", type: :message},
     %{
       name: "PlayerEmergencyEscapeInfo",
       type: {:nulleable, {:struct, "PlayerEmergencyEscapeInfo"}}
     },
     %{name: "UnSettledGoodsGuids", type: {:list, {:uint, 8}}},
     %{name: "ExpiredGoodsGuids", type: {:list, {:uint, 8}}},
     %{
       name: "PlayerCovenantInfo",
       type: {:nulleable, {:struct, "PlayerCovenantInfo"}}
     },
     %{
       name: "GiftBoxInfos",
       type: {:map, 8, {:nulleable, {:struct, "CovenantGiftBoxInfo"}}}
     },
     %{
       name: "AccountAffectInfos",
       type: {:map, 8, :message}
     },
     %{name: "MaxLevel", type: {:uint, 4}},
     %{name: "LastLevelForLevelUpNotify", type: {:uint, 4}},
     %{name: "LastLevelUpDateTime", type: {:struct, "FDateTime"}},
     %{
       name: "RegisteredFavoriteAdjustableStatKinds",
       type: {:list, {:enum, "AdjustableStatKindType"}}
     },
     %{name: "RegisteredReturnPlaceDoodadSpawnerCuid", type: :Cuid},
     %{name: "CrossRealmRegisteredReturnPlaceDoodadSpawnerCuid", type: :Cuid},
     %{
       name: "WorldMapMarkerInfos",
       type: {:list, {:nulleable, {:struct, "WorldMapMarkerInfo"}}}
     },
     %{name: "FavoriteCollectionCuids", type: {:list, :Cuid}},
     %{
       name: "SkillUseOptionInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "SkillUseOptionInfo"}}}
     },
     %{
       name: "RegionContentPlayInfos",
       type:
         {:map, {:enum, "RegionContentKindType"},
          {:nulleable, {:struct, "RegionContentPlayInfo"}}}
     },
     %{
       name: "MonsterBookInfo",
       type: {:nulleable, {:struct, "MonsterBookInfo"}}
     },
     %{name: "TransmutationRecords", type: {:map, {:struct, "TTuple"}, 8}},
     %{name: "PlayerCampaignInfo", type: :message},
     %{
       name: "VolunteerParticipationInfos",
       type: {:map, {:struct, "BattalionContentsKindType"}, 1}
     },
     %{
       name: "PlayerRealmIntegrationBattleInfo",
       type: {:nulleable, {:struct, "PlayerRealmIntegrationBattleInfo"}}
     },
     %{
       name: "PaidAttendanceInfos",
       type: {:list, {:nulleable, {:struct, "PaidAttendanceInfo"}}}
     }
   ]},
  {"TTuple",
   [
     %{name: "field_0", type: :Cuid},
     %{name: "field_1", type: {:uint, 1}},
     %{name: "field_2", type: {:uint, 1}}
   ]},
  {"WorldMapMarkerInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "Name", type: :string},
     %{name: "RegionCuid", type: :Cuid},
     %{name: "DistrictCuid", type: :Cuid},
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "InstallDateTimeUtc", type: {:struct, "FDateTime"}}
   ]},
  {"PlayerCovenantInfo",
   [
     %{name: "InvitedCovenantGuidAndInvitedDateTimes", type: {:map, 8, {:struct, "FDateTime"}}},
     %{name: "JoinAppliedCovenantGuids", type: {:list, {:uint, 8}}},
     %{name: "CovenantReturnHavenCuid", type: :Cuid}
   ]},
  {"PlayerAutoUseInfo",
   [
     %{name: "ItemCuids", type: {:list, :Cuid}},
     %{name: "RootSkillCuids", type: {:list, :Cuid}}
   ]},
  {"PlayerCashShopInfo",
   [
     %{
       name: "CashShopRefundableMerchandiseStorageBoxInfo",
       type: {:nulleable, {:struct, "CashShopRefundableMerchandiseStorageBoxInfo"}}
     },
     %{
       name: "MerchandiseBuyCountInfoList",
       type: {:list, {:nulleable, {:struct, "MerchandiseBuyCountInfo"}}}
     }
   ]},
  {"CashShopRefundableMerchandiseStorageBoxInfo",
   [
     %{
       name: "SlotInfos",
       type: {:list, {:nulleable, {:struct, "CashShopRefundableMerchandiseStorageBoxSlotInfo"}}}
     }
   ]},
  {"PlayerHarmfulTextOnChatViolationInfo",
   [
     %{name: "ViolationCount", type: {:uint, 4}},
     %{name: "BlockPostEndTime", type: {:nulleable, {:struct, "FDateTime"}}}
   ]},
  {"ArquiAttunementInfo",
   [
     %{name: "LevelByArquiAttunementCuid", type: {:map, :Cuid, 4}},
     %{
       name: "AetherOptionLevelByCategoryCuidAndOptionCuid",
       type: {:map, :Cuid, {:map, :Cuid, 4}}
     }
   ]},
  {"DeathPenaltyFreeRecoveryInfo",
   [
     %{name: "DailyFreeRecoveryCount", type: {:uint, 4}},
     %{name: "RemainingDailyFreeRecoveryCount", type: {:uint, 4}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"AnniversaryAchievementPointInfo",
   [
     %{name: "AnniversaryCuid", type: :Cuid},
     %{
       name: "AnniversaryAchievementCycleBeginDateTime",
       type: {:struct, "FDateTime"}
     },
     %{
       name: "AnniversaryAchievementCycleEndDateTime",
       type: {:struct, "FDateTime"}
     },
     %{name: "RewardedGoalPoints", type: {:list, {:uint, 4}}}
   ]},
  {"AnniversaryAchievementInfo",
   [
     %{name: "AchievementInfo", type: {:struct, "AchievementInfo"}},
     %{name: "AnniversaryCuid", type: :Cuid},
     %{
       name: "AnniversaryAchievementCycleBeginDateTime",
       type: {:struct, "FDateTime"}
     },
     %{
       name: "AnniversaryAchievementCycleEndDateTime",
       type: {:struct, "FDateTime"}
     },
     %{
       name: "AnniversaryAchievementBeginDateTime",
       type: {:struct, "FDateTime"}
     },
     %{name: "AnniversaryAchievementEndDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"AchievementInfo",
   [
     %{name: "AchievementCuid", type: :Cuid},
     %{name: "MissionProgressCounts", type: {:list, 8}},
     %{name: "AccomplishDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "IsRewarded", type: :bool}
   ]},
  {"RealmAccountWarehouseAutoStoreSettingsInfo",
   [%{name: "Settings", type: {:map, :Cuid, {:enum, "ItemGradeType"}}}]},
  {"RealmAccountWarehouseInfo",
   [
     %{name: "InventoryInfo", type: {:nulleable, {:struct, "InventoryInfo"}}},
     %{name: "AdditionalSlotCount", type: {:uint, 4}}
   ]},
  {"AutoSellSettingsInfo", [%{name: "Settings", type: {:map, :Cuid, {:enum, "ItemGradeType"}}}]},
  {"AutoBuySettingsInfo", [%{name: "Settings", type: {:map, :Cuid, 4}}]},
  {"PlayerLimitedCounterInfo",
   [
     %{
       name: "LimitedCountingInfos",
       type: {:map, 4, {:nulleable, {:struct, "LimitedCountingInfo"}}}
     }
   ]},
  {"PlayerServerDrivenPlayInfo",
   [
     %{name: "RemainingDailyDuration_sec", type: {:uint, 4}},
     %{
       name: "ServerDrivenPlayInfo",
       type: {:nulleable, {:struct, "ServerDrivenPlayInfo"}}
     }
   ]},
  {"ServerDrivenPlayModeSettingInfo",
   [
     %{name: "field_0", type: :bool},
     %{name: "field_1", type: {:uint, 4}},
     %{name: "field_2", type: :bool},
     %{name: "field_3", type: {:uint, 4}}
   ]},
  {"PlayerFollowerInfo",
   [
     %{name: "FollowerSquadSlots", type: {:map, {:uint, 1}, 8}},
     %{
       name: "FollowerDispatchOverallInfos",
       type: {:map, 8, {:nulleable, {:struct, "FollowerDispatchOverallInfo"}}}
     },
     %{
       name: "FollowerCollectionInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "FollowerCollectionInfo"}}}
     }
   ]},
  {"FollowerDispatchOverallInfo",
   [
     %{name: "CoreInfo", type: {:nulleable, {:struct, "FollowerCoreInfo"}}},
     %{
       name: "DispatchInfo",
       type: {:nulleable, {:struct, "FollowerDispatchInfo"}}
     },
     %{
       name: "DispatchAutomationInfo",
       type: {:nulleable, {:struct, "FollowerDispatchAutomationInfo"}}
     },
     %{
       name: "WorkInfo",
       type: {:nulleable, {:struct, "FollowerWorkInfo"}}
     },
     %{
       name: "DeathInfo",
       type: {:nulleable, {:struct, "FollowerDeathInfo"}}
     }
   ]},
  {"FollowerDispatchAutomationInfo",
   [
     %{name: "DispatchAutomationState", type: {:uint, 2}},
     %{name: "ProceedingDispatchAutomationCount", type: {:nulleable, {:uint, 4}}},
     %{name: "MaxDispatchAutomationCount", type: {:nulleable, {:uint, 4}}}
   ]},
  {"FollowerDeathInfo",
   [
     %{name: "DeathDateTime", type: {:struct, "FDateTime"}},
     %{name: "DeathReason", type: :string},
     %{name: "KillingInfo", type: :message},
     %{name: "LootedItemIndexWithCount", type: :message}
   ]},
  {"QuestsInfo",
   [
     %{name: "RewardedQuests", type: {:map, :Cuid, {:struct, "FDateTime"}}},
     %{
       name: "ActiveQuestProgressInfos",
       type: {:map, {:struct, "Vuid"}, {:nulleable, {:struct, "QuestProgressInfo"}}}
     },
     %{
       name: "RepeatQuestCancelRecordInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "QuestCancelRecordInfo"}}}
     },
     %{name: "ActiveFavorInfos", type: {:map, {:struct, "Vuid"}, :message}},
     %{
       name: "ActiveFavorMissionInfos",
       type: {:map, {:struct, "Vuid"}, :message}
     },
     %{name: "FavorRefreshCostIndex", type: {:uint, 4}},
     %{name: "DailyAcceptableFavorRemainingCount", type: {:uint, 4}},
     %{
       name: "LastProceedEpisodeCuidsByEpisodeGroup",
       type: {:map, {:enum, "EpisodeGroupType"}, :Cuid}
     }
   ]},
  {"QuestCancelRecordInfo",
   [
     %{name: "Count", type: {:uint, 4}},
     %{name: "LastCancelDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"QuestProgressInfo",
   [
     %{name: "QuestVuid", type: {:struct, "Vuid"}},
     %{name: "AcceptDateTime", type: {:struct, "FDateTime"}},
     %{name: "StartByItem", type: {:uint, 1}},
     %{
       name: "QuestMissionProgressInfos",
       type: {:map, {:struct, "Vuid"}, {:nulleable, {:struct, "QuestMissionProgressInfo"}}}
     }
   ]},
  {"PlayerSkillInfo",
   [
     %{name: "RootSkillCuids", type: {:list, :Cuid}},
     %{name: "SkillCuids", type: {:list, :Cuid}},
     %{
       name: "PlayerSkillSlotSetInfos",
       type: {:map, {:enum, "StanceType"}, {:nulleable, {:struct, "PlayerSkillSlotSetInfo"}}}
     },
     %{
       name: "PlayerSkillCooldownExpireDateTimeRangeInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "DateTimeRangeInfo"}}}
     },
     %{name: "InstalledArquiruneInfos", type: {:map, :Cuid, {:map, :Cuid, :bool}}},
     %{
       name: "SpellstoneSlotPageInfos",
       type: {:map, :Cuid, {:nulleable, {:struct, "SpellstoneSlotPageInfo"}}}
     },
     %{name: "ReplacementSkillCuidsByRootSkillCuid", type: {:map, :Cuid, :Cuid}}
   ]},
  {"PlayerSkillSlotSetInfo",
   [
     %{
       name: "PlayerSkillSlotInfos",
       type:
         {:map, {:enum, "PlayerSkillSlotIndexType"},
          {:nulleable, {:struct, "PlayerSkillSlotInfo"}}}
     }
   ]},
  {"PlayerGameOptionInfo",
   [
     %{
       name: "CombatOptionInfo",
       type: {:nulleable, {:struct, "CombatOptionInfo"}}
     },
     %{
       name: "ConvenienceOptionInfo",
       type: {:nulleable, {:struct, "ConvenienceOptionInfo"}}
     },
     %{
       name: "DisplayOptionInfo",
       type: {:nulleable, {:struct, "DisplayOptionInfo"}}
     },
     %{
       name: "GameNotificationOptionInfo",
       type: {:nulleable, {:struct, "GameNotificationOptionInfo"}}
     },
     %{name: "ChatOptionInfo", type: {:nulleable, {:struct, "ChatOptionInfo"}}},
     %{
       name: "InventoryOptionInfo",
       type: {:nulleable, {:struct, "InventoryOptionInfo"}}
     },
     %{
       name: "BattalionOptionInfo",
       type: {:nulleable, {:struct, "PlayerBattalionOptionInfo"}}
     },
     %{
       name: "ServerDrivenPlayOptionInfo",
       type: {:nulleable, {:struct, "ServerDrivenPlayOptionInfo"}}
     },
     %{
       name: "AutoDonateSettingOptionInfo",
       type: {:nulleable, {:struct, "AutoDonateSettingOptionInfo"}}
     },
     %{
       name: "ControlOptionInfo",
       type: {:nulleable, {:struct, "ControlOptionInfo"}}
     },
     %{
       name: "MonsterBookConsumeItemOptionInfo",
       type: {:nulleable, {:struct, "MonsterBookConsumeItemOptionInfo"}}
     }
   ]},
  {"MonsterBookConsumeItemOptionInfo",
   [
     %{name: "ExceptExperiencePointItemsAvailableAtAcquisitionNodes", type: :bool},
     %{name: "ItemGradeToBatchConsume", type: {:nulleable, {:uint, 1}}}
   ]},
  {"AutoDonateSettingOptionInfo",
   [
     %{
       name: "ItemFilterCuidToItemGrade",
       type: {:map, :Cuid, {:enum, "ItemGradeType"}}
     },
     %{name: "IsContainEnhancedItem", type: :bool},
     %{name: "IsContainEnchantedItem", type: :bool},
     %{name: "IsContainBasicCollectableItem", type: :bool}
   ]},
  {"ServerDrivenPlayOptionInfo",
   [
     %{name: "AlwaysUseWarp", type: :bool},
     %{name: "SwitchAtCurrentLocationInsideHuntingSite", type: :bool},
     %{name: "SwitchAtDesignatedHuntingSiteOutsideHuntingSite", type: :bool},
     %{name: "AutoSwitchOnDisconnected", type: :bool},
     %{name: "DesignatedHuntingSiteCuid", type: :Cuid},
     %{name: "DesignatedPlayerWorldMapMarkerGuid", type: {:uint, 8}},
     %{name: "UseAutoResupply", type: :bool},
     %{name: "AutoResupplyUseCount", type: {:uint, 4}},
     %{name: "UseAutoResupplyWhenDead", type: :bool},
     %{name: "ResupplyWeightLimit_pe2", type: {:uint, 4}},
     %{name: "UseHealthPointsRecovery", type: :bool},
     %{name: "EndWhenDeadInPvp", type: :bool}
   ]},
  {"PlayerBattalionOptionInfo", [%{name: "PurposeTexts", type: {:map, 4, :string}}]},
  {"ChatOptionInfo",
   [
     %{name: "ChatTabFilter", type: {:list, {:enum, "ChatKindType"}}},
     %{name: "ItemAcquireNotifyDisplayOption", type: :bool},
     %{name: "ExperiencePointsAndGoldAcquireNotifyDisplayOption", type: :bool},
     %{
       name: "PartyOrBattalionMemberItemAcquireNotifyDisplayOption",
       type: :bool
     },
     %{name: "CovenantRewardAcquireNotifyDisplayOption", type: :bool},
     %{
       name: "CovenantMemberCovenantRewardAcquireNotifyDisplayOption",
       type: :bool
     },
     %{name: "ChatMacros", type: {:map, 4, :string}}
   ]},
  {"DisplayOptionInfo",
   [
     %{name: "IsRelatedTerritoryVisibleInWorldMap", type: :bool},
     %{name: "IsAllianceCovenantVisibleInMiniMap", type: :bool},
     %{name: "ItemAcquireNotifyAnonymityOption", type: :bool},
     %{
       name: "NameTagHealthBarDisplayOptionInfo",
       type: {:nulleable, {:struct, "NameTagHealthBarDisplayOptionInfo"}}
     },
     %{name: "IsOccupiedStrongholdVisibleInChat", type: :bool},
     %{name: "IsLivingTotemIconEmphasized", type: :bool}
   ]},
  {"NameTagHealthBarDisplayOptionInfo",
   [
     %{name: "IsOwnUniformDisplayedInStrongholdBattle", type: :bool},
     %{name: "IsDisplayModeAutoSelect", type: :bool},
     %{name: "DisplayMode", type: {:uint, 1}},
     %{
       name: "DetailInfos",
       type:
         {:map, {:enum, "NameTagHealthBarDisplayModeType"},
          {:nulleable, {:struct, "NameTagHealthBarDisplayOptionDetailInfo"}}}
     },
     %{name: "NpcHealthBarDisplayScope", type: {:uint, 1}},
     %{name: "IsAllNpcNamesDisplayed", type: :bool},
     %{name: "IsDisplayedFissionStatusFriendlyOrBetter", type: :bool}
   ]},
  {"ConvenienceOptionInfo",
   [
     %{
       name: "HealthPointsPotionAutoUsageOptionInfo",
       type: {:nulleable, {:struct, "PotionAutoUsageOptionInfo"}}
     },
     %{
       name: "ManaPointsPotionAutoUsageOptionInfo",
       type: {:nulleable, {:struct, "PotionAutoUsageOptionInfo"}}
     },
     %{name: "AutoUseReplaceSpentItemPolicyOption", type: {:uint, 1}},
     %{
       name: "SkillAutoUseManaPointsRestrictOptionInfo",
       type: {:nulleable, {:struct, "SkillAutoUseManaPointsRestrictOptionInfo"}}
     },
     %{name: "PartyAutoCreationOnlyCovenantMemberOrFriend", type: :bool},
     %{name: "PartyAutoCreationAutoApprovalJoinApplication", type: :bool},
     %{name: "PartyInvitationAllowKind", type: :bool},
     %{name: "CovenantInvitable", type: :bool},
     %{name: "IsChatCurrencySpendWarned", type: :bool},
     %{name: "SomaItemUsePopupDisplayOption", type: :bool},
     %{name: "DeathPenaltyAutoRecoveryOption", type: :bool},
     %{
       name: "FollowerDispatchAutomationCovenantRecommendationFirst",
       type: :bool
     },
     %{name: "PowerSavingModeAutoSwitchMinutes", type: {:uint, 4}},
     %{name: "GearEnhancementErodeNotifyDisplayOption", type: :bool},
     %{name: "GearEnhancementDestroyNotifyDisplayOption", type: :bool},
     %{name: "GearEnhancementNotErodedOnFailNotifyDisplayOption", type: :bool},
     %{name: "ErodedRestoreScrollUseNotifyDisplayOption", type: :bool},
     %{name: "NpcListAutoExpandAndCollapse", type: :bool},
     %{name: "MonsterBookAnalysisCostByLockCountDisplayOption", type: :bool}
   ]},
  {"SkillAutoUseManaPointsRestrictOptionInfo",
   [
     %{name: "IsManaPointsUsageRestricted", type: :bool},
     %{
       name: "MinManaPointsRatioToUseManaPointsConsumingSkill_pe2",
       type: {:uint, 1}
     },
     %{name: "IsForceUseSkillsInPvp", type: :bool},
     %{name: "IsForceUseSelfBuffSkills", type: :bool}
   ]},
  {"CombatOptionInfo",
   [
     %{name: "CombatTargetOptionInfo", type: {:nulleable, {:struct, "CombatTargetOptionInfo"}}},
     %{name: "CombatLootOptionInfo", type: {:nulleable, {:struct, "CombatLootOptionInfo"}}}
   ]},
  {"CombatTargetOptionInfo",
   [
     %{name: "ContinuousCombatMannerModeKind", type: {:uint, 1}},
     %{name: "ContinuousCombatRadiusKind", type: {:uint, 1}},
     %{name: "QuestAutoProceedRadiusKind", type: {:uint, 1}},
     %{name: "TargetDyingOrRecoveryStateCharacter", type: :bool},
     %{name: "KeepTargetOnChracterStateChangeToDyingOrRecovery", type: :bool},
     %{name: "KeepContinuousCombatAndAutoMoveOnManualMove", type: :bool},
     %{name: "KeepAutoAttackOnMoveToLocation", type: :bool},
     %{name: "KeepAutoAttackOnMoveToDirection", type: :bool},
     %{name: "AutoAttackTargetOnKinds", type: {:list, {:enum, "AutoAttackTargetKindType"}}},
     %{name: "AutoCounterAttackNpc", type: :bool},
     %{
       name: "AutoAttackTargetOnNpcGrades",
       type: {:list, {:enum, "AutoAttackTargetNpcGradeType"}}
     },
     %{name: "CancelAttackOrFocusTargetButtonVisible", type: :bool},
     %{name: "SkillUsePriorityKind", type: {:uint, 1}},
     %{name: "RemoveTargetingByContinuousCombatOff", type: :bool},
     %{name: "TabSelectTargetingKind", type: {:uint, 1}},
     %{name: "FocusTargetSelfButtonVisible", type: {:uint, 1}},
     %{name: "IsReservedSkillCancellable", type: {:uint, 1}},
     %{name: "StopContinuousCombatWhenKilledBoss", type: {:uint, 1}}
   ]},
  {"QuickSlotInfo",
   [
     %{name: "SlotKind", type: {:uint, 1}},
     %{name: "QuickSlotDetailInfo", type: :message}
   ]},
  {"AffectItemQuickSlotDetailInfo",
   [
     %{
       name: "StackableItemQuickSlotDetailInfo",
       type: {:struct, "StackableItemQuickSlotDetailInfo"}
     },
     %{name: "AffectItemKind", type: {:uint, 1}}
   ]},
  {"GearSlotPresetInfo",
   [
     %{name: "GearSlotPresetIndex", type: {:uint, 1}},
     %{
       name: "GearSlotInfos",
       type: {:list, {:nulleable, {:struct, "GearSlotInfo"}}}
     }
   ]},
  {"GearSlotInfo",
   [
     %{name: "ItemGuid", type: {:uint, 8}},
     %{name: "GearSlot", type: {:uint, 1}}
   ]},
  {"CombinedInventoryInfo",
   [
     %{
       name: "InventoryInfosByInventoryKind",
       type: {:map, {:enum, "UserInventoryKindType"}, {:nulleable, {:struct, "InventoryInfo"}}}
     },
     %{
       name: "RedrawableItemInventoryInfosByItemCategory",
       type:
         {:map, {:enum, "ItemCategoryType"},
          {:nulleable, {:struct, "RedrawableItemInventoryInfo"}}}
     }
   ]},
  {"RedrawableItemInventoryInfo",
   [
     %{
       name: "RedrawableItemInfos",
       type: {:list, {:nulleable, {:struct, "RedrawableItemInfo"}}}
     }
   ]},
  {"RedrawableItemInfo",
   [
     %{
       name: "RedrawableItemAdditionalInfo",
       type: {:nulleable, {:struct, "RedrawableItemAdditionalInfo"}}
     },
     %{
       name: "ItemInfo",
       type: {:struct, "ItemInfo"}
     }
   ]},
  {"RedrawableItemAdditionalInfo",
   [
     %{
       name: "ExcludedItemCuidsWhenRedrawing",
       type: {:list, :Cuid}
     }
   ]},
  {"InventoryInfo",
   [
     %{name: "ItemInfos", type: {:list, :message}},
     %{name: "MaxSlotCount", type: {:uint, 4}}
   ]},
  {"StackableItemInfo",
   [
     %{name: "ItemInfo", type: {:struct, "ItemInfo"}},
     %{name: "StackCount", type: {:uint, 8}}
   ]},
  {"CoreMaterialItemInfo", [%{name: "ItemInfo", type: {:struct, "ItemInfo"}}]},
  {"PlayerStanceInfo",
   [
     %{name: "AcquiredStances", type: {:list, {:enum, "StanceType"}}},
     %{name: "InstalledStance", type: {:uint, 1}},
     %{
       name: "StanceSwitchCooldownExpireDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     },
     %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
   ]},
  {"PlayerPrivateStatsInfo",
   [
     %{
       name: "CharacterPrivateStatsInfo",
       type: {:struct, "CharacterPrivateStatsInfo"}
     },
     %{name: "InventoryWeightLimit", type: {:uint, 8}},
     %{name: "AdditionalHealPowerAmount", type: {:uint, 4}},
     %{name: "AdditionalHealPowerRatio_pe4", type: {:uint, 4}},
     %{name: "SpecialMovePoints", type: {:uint, 4}},
     %{name: "MaxSpecialMovePoints", type: {:uint, 4}},
     %{name: "MaxTargetScanCount", type: {:uint, 2}},
     %{name: "SkillManaPointsCostDecreaseRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalNpcRewardExperiencePointsRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalNpcRewardGoldRatio_pe4", type: {:uint, 4}},
     %{
       name: "AdditionalNpcRewardItemDropChanceAdjustRatio_pe4",
       type: {:uint, 4}
     },
     %{name: "AdditionalHealthPointsPotionRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalHealthPointsPotionAmount", type: {:uint, 4}},
     %{name: "AdditionalManaPointsPotionRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalManaPointsPotionAmount", type: {:uint, 4}},
     %{
       name: "SpiritualBondPowerAdditionalNpcRewardExperiencePointsRatio_pe4",
       type: {:uint, 4}
     },
     %{
       name: "SpiritualBondPowerAdditionalNpcRewardGoldRatio_pe4",
       type: {:uint, 4}
     },
     %{name: "SpiritualBondPowerGainIncreaseRatio_pe4", type: {:uint, 4}},
     %{name: "SpiritualBondPowerConsumeDecreaseRatio_pe4", type: {:uint, 4}}
   ]},
  {"CharacterPrivateStatsInfo",
   [
     %{name: "ExperiencePoints", type: {:uint, 8}},
     %{name: "HealthPointsRegenerationOutOfCombatUnit", type: {:uint, 8}},
     %{name: "HealthPointsRegenerationInCombatUnit", type: {:uint, 8}},
     %{name: "ManaPoints", type: {:uint, 8}},
     %{name: "MaxManaPoints", type: {:uint, 8}},
     %{name: "ManaPointsRegenerationOutOfCombatUnit", type: {:uint, 8}},
     %{name: "ManaPointsRegenerationInCombatUnit", type: {:uint, 8}},
     %{name: "Potential", type: {:uint, 4}},
     %{name: "OffensivePower", type: {:uint, 4}},
     %{name: "AdditionalMeleeOffensivePower", type: {:uint, 4}},
     %{name: "AdditionalRangedOffensivePower", type: {:uint, 4}},
     %{name: "AdditionalMagicOffensivePower", type: {:uint, 4}},
     %{name: "WeaponMinDamage", type: {:uint, 4}},
     %{name: "WeaponMaxDamage", type: {:uint, 4}},
     %{name: "Hit", type: {:uint, 4}},
     %{name: "MeleeHit", type: {:uint, 4}},
     %{name: "RangedHit", type: {:uint, 4}},
     %{name: "MagicHit", type: {:uint, 4}},
     %{name: "SkillHit", type: {:uint, 4}},
     %{name: "StunHitRatio_pe4", type: {:uint, 4}},
     %{name: "SilenceHitRatio_pe4", type: {:uint, 4}},
     %{name: "BlindHitRatio_pe4", type: {:uint, 4}},
     %{name: "OverlayDebuffHitRatio_pe4", type: {:uint, 4}},
     %{name: "PierceRatio_pe4", type: {:uint, 4}},
     %{name: "CriticalRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalWeaponDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalWeaponDamageRatio_pe4", type: {:uint, 4}},
     %{name: "CriticalDamageIncreaseRatio_pe4", type: {:uint, 4}},
     %{name: "SkillDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalMeleeDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalMeleeOffensivePowerRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalRangedDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalRangedOffensivePowerRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalMagicDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalMagicOffensivePowerRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalFireDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalFireDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalWaterDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalWaterDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalEarthDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalEarthDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalWindDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalWindDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalHolyDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalHolyDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalDarkDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalDarkDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalDivineDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalDivineDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalHumanoidDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalHumanoidDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalElvenDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalElvenDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalEntangledDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalEntangledDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalBeastDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalBeastDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalAbyssalDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalAbyssalDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalSiegeWeaponDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalSiegeWeaponDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalBossDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalBossDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalCriticalDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalDamageAmount", type: {:uint, 4}},
     %{name: "PierceDamageAmount", type: {:uint, 4}},
     %{name: "DefensivePower", type: {:uint, 4}},
     %{name: "SkillDefensivePower", type: {:uint, 4}},
     %{name: "Dodge", type: {:uint, 4}},
     %{name: "MeleeDodge", type: {:uint, 4}},
     %{name: "RangedDodge", type: {:uint, 4}},
     %{name: "MagicDodge", type: {:uint, 4}},
     %{name: "SkillDodge", type: {:uint, 4}},
     %{name: "StunResistRatio_pe4", type: {:uint, 4}},
     %{name: "SilenceResistRatio_pe4", type: {:uint, 4}},
     %{name: "BlindResistRatio_pe4", type: {:uint, 4}},
     %{name: "UniversalDebuffResistAmount", type: {:uint, 4}},
     %{name: "OverlayDebuffResistRatio_pe4", type: {:uint, 4}},
     %{name: "OverlayDebuffDecreaseRatio_pe4", type: {:uint, 4}},
     %{name: "BlockRatio_pe4", type: {:uint, 4}},
     %{name: "CriticalResistRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalWeaponDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalWeaponDamageRatio_pe4", type: {:uint, 4}},
     %{name: "CriticalDamageReduceRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbSkillDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalMeleeDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalMeleeDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalRangedDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalRangedDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalMagicDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalMagicDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalFireDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalFireDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalWaterDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalWaterDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalEarthDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalEarthDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalWindDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalWindDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalHolyDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalHolyDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalDarkDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalDarkDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalCriticalDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAllKindOfDamageAmount", type: {:uint, 4}},
     %{name: "IgnoreAbsorbAllKindOfDamageAmount", type: {:uint, 4}},
     %{name: "BasicAttackSpeedIncrease", type: {:uint, 4}},
     %{name: "NonBasicAttackSpeedIncrease", type: {:uint, 4}},
     %{name: "SkillCooldownDurationDecreaseRatio_pe4", type: {:uint, 4}},
     %{name: "SomaHit", type: {:uint, 4}},
     %{name: "SomaSkillHit", type: {:uint, 4}},
     %{name: "SomaMeleeHit", type: {:uint, 4}},
     %{name: "SomaRangedHit", type: {:uint, 4}},
     %{name: "SomaMagicHit", type: {:uint, 4}},
     %{name: "SomaSkillDamageRatio_pe4", type: {:uint, 4}},
     %{name: "SomaAdditionalCriticalDamageAmount", type: {:uint, 4}},
     %{name: "SomaCriticalDamageIncreaseRatio_pe4", type: {:uint, 4}},
     %{name: "SomaAdditionalBossDamageAmount", type: {:uint, 4}},
     %{name: "SomaAdditionalBossDamageRatio_pe4", type: {:uint, 4}},
     %{name: "SomaAdditionalMeleeDamageAmount", type: {:uint, 4}},
     %{name: "SomaAdditionalMeleeOffensivePowerRatio_pe4", type: {:uint, 4}},
     %{name: "SomaAdditionalRangedDamageAmount", type: {:uint, 4}},
     %{name: "SomaAdditionalRangedOffensivePowerRatio_pe4", type: {:uint, 4}},
     %{name: "SomaAdditionalMagicDamageAmount", type: {:uint, 4}},
     %{name: "SomaAdditionalMagicOffensivePowerRatio_pe4", type: {:uint, 4}},
     %{name: "SomaWeaponDamageAmount", type: {:uint, 4}},
     %{name: "SomaWeaponDamageRatio_pe4", type: {:uint, 4}},
     %{name: "SomaAdditionalDamageAmount", type: {:uint, 4}},
     %{name: "SomaPvpDamageAmount", type: {:uint, 4}},
     %{name: "SomaAdditionalPvpDamageRatio_pe4", type: {:uint, 4}},
     %{name: "ExpeditionDamageRatio_pe4", type: {:uint, 4}},
     %{name: "ExpeditionNormalHitIncreaseRatio_pe4", type: {:uint, 4}},
     %{name: "ExpeditionSkillHitIncreaseRatio_pe4", type: {:uint, 4}},
     %{name: "ExpeditionAbsorbAllKindOfDamageAmount", type: {:uint, 4}},
     %{name: "ImmobilizeHitRatio_pe4", type: {:uint, 4}},
     %{name: "ImmobilizeResistRatio_pe4", type: {:uint, 4}},
     %{name: "DownHitRatio_pe4", type: {:uint, 4}},
     %{name: "DownResistRatio_pe4", type: {:uint, 4}},
     %{name: "SleepHitRatio_pe4", type: {:uint, 4}},
     %{name: "SleepResistRatio_pe4", type: {:uint, 4}},
     %{name: "FreezingHitRatio_pe4", type: {:uint, 4}},
     %{name: "FreezingResistRatio_pe4", type: {:uint, 4}},
     %{name: "DisengageHitRatio_pe4", type: {:uint, 4}},
     %{name: "TauntResistRatio_pe4", type: {:uint, 4}},
     %{name: "TauntHitRatio_pe4", type: {:uint, 4}},
     %{name: "DisengageResistRatio_pe4", type: {:uint, 4}},
     %{name: "CrowdControlDurationIncreaseAmount", type: {:uint, 4}},
     %{name: "CrowdControlDurationDecreaseAmount", type: {:uint, 4}},
     %{name: "DebuffDurationIncreaseAmount", type: {:uint, 4}},
     %{name: "DebuffDurationDecreaseAmount", type: {:uint, 4}},
     %{name: "AdditionalStunDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalSilenceDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalImmobilizeDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalDownDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalDamagePeriodicDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalBlindDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalFreezingDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalBuildingDamageAmount", type: {:uint, 4}},
     %{name: "TotalNormalHitRatio_pe4", type: {:uint, 4}},
     %{name: "TotalNormalDodgeRatio_pe4", type: {:uint, 4}},
     %{name: "TotalSkillHitRatio_pe4", type: {:uint, 4}},
     %{name: "TotalSkillDodgeRatio_pe4", type: {:uint, 4}},
     %{name: "TotalAdditionalDamageRatio_pe4", type: {:uint, 4}},
     %{name: "TotalAbsorbDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalNonBossNpcDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalNonBossNpcDamageRatio_pe4", type: {:uint, 4}},
     %{name: "NonBossNpcHit", type: {:uint, 4}},
     %{name: "NonBossNpcDodge", type: {:uint, 4}},
     %{name: "KnockbackHitRatio_pe4", type: {:uint, 4}},
     %{name: "KnockbackResistRatio_pe4", type: {:uint, 4}},
     %{name: "PullHitRatio_pe4", type: {:uint, 4}},
     %{name: "PullResistRatio_pe4", type: {:uint, 4}},
     %{name: "HitImmobilizeHitRatio_pe4", type: {:uint, 4}},
     %{name: "HitImmobilizeResistRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbPeriodicLossRatio_pe4", type: {:uint, 4}},
     %{name: "AdditionalPvpDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalPvpDamageRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbAdditionalPvpDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalPvpDamageRatio_pe4", type: {:uint, 4}},
     %{name: "PvpHit", type: {:uint, 4}},
     %{name: "PvpDodge", type: {:uint, 4}},
     %{name: "AdditionalNonBossNpcOffensivePower", type: {:uint, 4}},
     %{name: "AdditionalBossOffensivePower", type: {:uint, 4}},
     %{name: "AdditionalNonBossNpcDefensivePower", type: {:uint, 4}},
     %{name: "AdditionalBossDefensivePower", type: {:uint, 4}},
     %{name: "AbsorbAdditionalNonBossNpcDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalBossDamageAmount", type: {:uint, 4}},
     %{name: "AbsorbAdditionalMeleeOffensivePower", type: {:uint, 4}},
     %{name: "AbsorbAdditionalRangedOffensivePower", type: {:uint, 4}},
     %{name: "AbsorbAdditionalMagicOffensivePower", type: {:uint, 4}},
     %{name: "AdditionalMeleeDefensivePower", type: {:uint, 4}},
     %{name: "AdditionalRangedDefensivePower", type: {:uint, 4}},
     %{name: "AdditionalMagicDefensivePower", type: {:uint, 4}},
     %{name: "AdditionalHealTargetPowerRatio_pe4", type: {:uint, 4}},
     %{name: "AbsorbBlockDamageAmount", type: {:uint, 4}},
     %{name: "AdditionalMeleeTargetOffensivePower", type: {:uint, 4}},
     %{name: "AdditionalRangedTargetOffensivePower", type: {:uint, 4}},
     %{name: "AdditionalMagicTargetOffensivePower", type: {:uint, 4}}
   ]},
  {"CostumeInfo",
   [
     %{name: "WeaponCuid", type: :Cuid},
     %{name: "WeaponEnhancementGrade", type: {:uint, 2}},
     %{name: "GuiseCuid", type: :Cuid},
     %{name: "HasPreviouslyEquippedGuise", type: :bool},
     %{name: "IsWearUniform", type: :bool}
   ]},
  {"PlayerCustomizeInfo",
   [
     %{name: "BodyStyleSetCuid", type: :Cuid},
     %{name: "HairStyleSetCuid", type: :Cuid},
     %{name: "SkinRoughness", type: {:uint, 1}},
     %{name: "SkinColor", type: {:uint, 1}},
     %{name: "Hair1Color", type: {:uint, 1}},
     %{name: "Hair2Color", type: {:uint, 1}},
     %{name: "IrisRColor", type: {:uint, 1}},
     %{name: "IrisLColor", type: {:uint, 1}},
     %{name: "ScleraColor", type: {:uint, 1}},
     %{name: "IrisScale", type: {:uint, 1}},
     %{name: "IrisPositionY", type: {:uint, 1}},
     %{name: "EyebrowFrame", type: {:uint, 1}},
     %{name: "EyebrowColor", type: {:uint, 1}},
     %{name: "EyebrowIntensity", type: {:uint, 1}},
     %{name: "EyelineFrame", type: {:uint, 1}},
     %{name: "EyelineIntensity", type: {:uint, 1}},
     %{name: "EyeshadowColor", type: {:uint, 1}},
     %{name: "EyelineColor", type: {:uint, 1}},
     %{name: "IrisTexture", type: {:uint, 1}},
     %{name: "EyeshadowIntensity", type: {:uint, 1}},
     %{name: "BlusherFrame", type: {:uint, 1}},
     %{name: "BlusherColor", type: {:uint, 1}},
     %{name: "BlusherIntensity", type: {:uint, 1}},
     %{name: "LipFrame", type: {:uint, 1}},
     %{name: "LipColor", type: {:uint, 1}},
     %{name: "LipIntensity", type: {:uint, 1}},
     %{name: "FaceTexture", type: {:uint, 1}},
     %{name: "DecalTexture", type: {:uint, 1}},
     %{name: "DecalIntensity", type: {:uint, 1}},
     %{name: "DecalScale", type: {:uint, 1}},
     %{name: "DecalRotation", type: {:uint, 1}},
     %{name: "DecalPositionX", type: {:uint, 1}},
     %{name: "DecalPositionY", type: {:uint, 1}},
     %{name: "Forehead_Y", type: {:uint, 1}},
     %{name: "Forehead_Z", type: {:uint, 1}},
     %{name: "Eyebrow_End", type: {:uint, 1}},
     %{name: "Eyebrow_Y", type: {:uint, 1}},
     %{name: "Eyebrow_Z", type: {:uint, 1}},
     %{name: "Eye_End", type: {:uint, 1}},
     %{name: "Eye_Mid1", type: {:uint, 1}},
     %{name: "Eye_Mid2", type: {:uint, 1}},
     %{name: "Eye_X", type: {:uint, 1}},
     %{name: "Eye_Y", type: {:uint, 1}},
     %{name: "Eye_Z", type: {:uint, 1}},
     %{name: "Eye_S1", type: {:uint, 1}},
     %{name: "Eye_S2", type: {:uint, 1}},
     %{name: "Cheek_X", type: {:uint, 1}},
     %{name: "Cheek_Y", type: {:uint, 1}},
     %{name: "Cheek_Z", type: {:uint, 1}},
     %{name: "Cheek_s1", type: {:uint, 1}},
     %{name: "Nose_End", type: {:uint, 1}},
     %{name: "Nose_Mid", type: {:uint, 1}},
     %{name: "Nose_X", type: {:uint, 1}},
     %{name: "Nose_Y", type: {:uint, 1}},
     %{name: "Nose_Z", type: {:uint, 1}},
     %{name: "Nose_s1", type: {:uint, 1}},
     %{name: "Nose_s2", type: {:uint, 1}},
     %{name: "Mouth_End", type: {:uint, 1}},
     %{name: "Mouth_Mid", type: {:uint, 1}},
     %{name: "Mouth_X", type: {:uint, 1}},
     %{name: "Mouth_Y", type: {:uint, 1}},
     %{name: "Mouth_Z", type: {:uint, 1}},
     %{name: "Mouth_S1", type: {:uint, 1}},
     %{name: "Mouth_S2", type: {:uint, 1}},
     %{name: "Chin_X", type: {:uint, 1}},
     %{name: "Chin_Y", type: {:uint, 1}},
     %{name: "Chin_Z", type: {:uint, 1}},
     %{name: "Chin_Mid", type: {:uint, 1}},
     %{name: "Jaw_X", type: {:uint, 1}},
     %{name: "Jaw_Y", type: {:uint, 1}},
     %{name: "BeardFrame", type: {:uint, 1}},
     %{name: "BeardColor", type: {:uint, 1}},
     %{name: "BeardIntensity", type: {:uint, 1}},
     %{name: "Beard_Color_Brightness", type: {:uint, 1}},
     %{name: "HairShadowsFrame", type: {:uint, 1}},
     %{name: "Head_XYZ", type: {:uint, 1}},
     %{name: "Head_Z", type: {:uint, 1}},
     %{name: "Neck_X", type: {:uint, 1}},
     %{name: "Neck_YZ", type: {:uint, 1}},
     %{name: "Breast_XYZ", type: {:uint, 1}},
     %{name: "Chest_XYZ", type: {:uint, 1}},
     %{name: "Spine_X", type: {:uint, 1}},
     %{name: "Spine_YZ", type: {:uint, 1}},
     %{name: "Pelvis_YZ", type: {:uint, 1}},
     %{name: "Clavicle_XYZ", type: {:uint, 1}},
     %{name: "Arm_X", type: {:uint, 1}},
     %{name: "Arm_YZ", type: {:uint, 1}},
     %{name: "Hand_XYZ", type: {:uint, 1}},
     %{name: "Leg_X", type: {:uint, 1}},
     %{name: "Leg_YZ", type: {:uint, 1}},
     %{name: "Foot_XYZ", type: {:uint, 1}},
     %{name: "Hair1_Color_Brightness", type: {:uint, 1}},
     %{name: "Hair2_Color_Brightness", type: {:uint, 1}},
     %{name: "Eyebrow_Color_Brightness", type: {:uint, 1}},
     %{name: "Temple", type: {:uint, 1}},
     %{name: "Head_Y", type: {:uint, 1}},
     %{name: "Cheek_D_X", type: {:uint, 1}},
     %{name: "Cheek_D_Y", type: {:uint, 1}},
     %{name: "Cheek_D_Z", type: {:uint, 1}},
     %{name: "Jaw_Z", type: {:uint, 1}},
     %{name: "EyebrowUpDown", type: {:uint, 1}},
     %{name: "EyebrowBetween", type: {:uint, 1}},
     %{name: "EyeBrowScale_y", type: {:uint, 1}},
     %{name: "IrisPositionX", type: {:uint, 1}},
     %{name: "DoubleEyelid_Frame", type: {:uint, 1}},
     %{name: "DoubleEyelid_Intensity", type: {:uint, 1}},
     %{name: "DoubleEyelidUpDown", type: {:uint, 1}},
     %{name: "Eye_In_S", type: {:uint, 1}},
     %{name: "Eye_In_Y", type: {:uint, 1}},
     %{name: "Eye_In_Z", type: {:uint, 1}},
     %{name: "Eyelashes_S", type: {:uint, 1}},
     %{name: "Eyelashes_Intensity", type: {:uint, 1}},
     %{name: "Eyelashes_U_Y", type: {:uint, 1}},
     %{name: "Eyelashes_D_Y", type: {:uint, 1}},
     %{name: "Upperlip_X", type: {:uint, 1}},
     %{name: "Upperlip_Y", type: {:uint, 1}},
     %{name: "Lowerlip_X", type: {:uint, 1}},
     %{name: "Lowerlip_Y", type: {:uint, 1}},
     %{name: "Mouth_End_Y", type: {:uint, 1}},
     %{name: "IrisL_Color_Brightness", type: {:uint, 1}},
     %{name: "IrisR_Color_Brightness", type: {:uint, 1}},
     %{name: "Lens_Relf", type: {:uint, 1}},
     %{name: "Lens_Specular", type: {:uint, 1}},
     %{name: "Blusher_Color_Brightness", type: {:uint, 1}},
     %{name: "Lip_Color_Brightness", type: {:uint, 1}},
     %{name: "Lip_Roughness", type: {:uint, 1}},
     %{name: "Eyeline_Color_Brightness", type: {:uint, 1}},
     %{name: "Eyeshadow_Color_Brightness", type: {:uint, 1}},
     %{name: "Eyelashes_Color", type: {:uint, 1}},
     %{name: "Eyelashes_Color_Brightness", type: {:uint, 1}},
     %{name: "Decal_Color", type: {:uint, 1}},
     %{name: "Decal_Color_Brightness", type: {:uint, 1}}
   ]},
  {"PlayerPublicStatsInfo",
   [
     %{
       name: "CharacterPublicStatsInfo",
       type: {:struct, "CharacterPublicStatsInfo"}
     },
     %{name: "AdditionalPlayerRunSpeedRatio_pe4", type: {:uint, 4}},
     %{name: "SwimSpeed_cmpsec", type: {:uint, 2}},
     %{name: "SwimAngularSpeed_radpsec", type: :float},
     %{name: "CrawlSpeed_cmpsec", type: {:uint, 2}},
     %{name: "CrawlAngularSpeed_radpsec", type: :float},
     %{name: "OnBoardWalkSpeed_cmpsec", type: {:uint, 2}},
     %{name: "OnBoardWalkAngularSpeed_radpsec", type: :float},
     %{name: "OnBoardRunSpeed_cmpsec", type: {:uint, 2}},
     %{name: "OnBoardRunAngularSpeed_radpsec", type: :float}
   ]},
  {"FRotator",
   [
     %{name: "field_0", type: :float},
     %{name: "field_1", type: :float},
     %{name: "field_2", type: :float}
   ]},
  {"QuestRewardResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "QuestVuid", type: {:struct, "Vuid"}},
     %{
       name: "ReceivedRewardInfo",
       type: {:nulleable, {:struct, "ReceivedRewardInfo"}}
     },
     %{name: "HiddenRewardInfo", type: {:nulleable, {:struct, "RewardInfo"}}}
   ]},
  {"ReceivedRewardInfo",
   [
     %{name: "ExperiencePoints", type: {:uint, 8}},
     %{name: "ExperiencePointsFromFinisher", type: {:uint, 8}},
     %{name: "CovenantExperiencePoints", type: {:uint, 8}},
     %{
       name: "CurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     },
     %{name: "PlayerInventoryItemAddInfo", type: {:nulleable, {:struct, "ItemAddInfo"}}},
     %{name: "CurrencyCuidToAmount", type: {:map, :Cuid, 8}},
     %{name: "IsAnyRewardSentByMail", type: :bool},
     %{name: "CovenantRewardInfo", type: {:nulleable, {:struct, "CovenantRewardInfo"}}},
     %{name: "SpiritualBondPower", type: {:uint, 8}},
     %{name: "TerritoryCuid", type: :Cuid},
     %{name: "EntanglementGauge", type: {:uint, 4}},
     %{name: "BossChaseGauge", type: {:uint, 4}},
     %{name: "AmityReason", type: :string},
     %{name: "Amity", type: {:map, :Cuid, 8}},
     %{name: "IsUpgradeSlayingGrade", type: :bool},
     %{name: "SeasonPassExperiencePoints", type: {:uint, 8}},
     %{name: "UnlockPaidRewardSeasonPassCuid", type: :Cuid},
     %{name: "UnlockPlusRewardSeasonPassCuid", type: :Cuid},
     %{name: "UnlockPaidAttendanceCuid", type: :Cuid}
   ]},
  {"ItemAddInfo", [%{name: "ItemIndexWithCounts", type: {:list, :message}}]},
  {"ItemIndexWithCount",
   [
     %{name: "ItemIndex", type: {:struct, "ItemIndex"}},
     %{name: "Count", type: {:uint, 8}}
   ]},
  {"ItemIndex",
   [
     %{name: "ItemCuid", type: :Cuid},
     %{name: "IsBound", type: :bool},
     %{name: "IsStorable", type: :bool},
     %{name: "IsEroded", type: :bool},
     %{name: "ExpireDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "GearQuality", type: {:uint, 1}}
   ]},
  {"InventoryUpdateInfo",
   [
     %{name: "AddedItemInfoList", type: {:list, :message}},
     %{name: "RemovedItemGuidList", type: {:list, {:uint, 8}}},
     %{
       name: "StackableItemUpdateInfoList",
       type: {:list, {:nulleable, {:struct, "StackableItemUpdateInfo"}}}
     }
   ]},
  {"GearInfo",
   [
     %{name: "ItemInfo", type: {:struct, "ItemInfo"}},
     %{
       name: "GearAdditionalInfo",
       type: {:nulleable, {:struct, "GearAdditionalInfo"}}
     }
   ]},
  {"GearAdditionalInfo",
   [
     %{name: "GearQuality", type: {:uint, 1}},
     %{name: "EnhancementGrade", type: {:uint, 2}},
     %{name: "IsEroded", type: :bool},
     %{name: "GearEnchantGrade", type: {:uint, 1}},
     %{
       name: "GearEnchantSlotInfos",
       type: {:list, {:nulleable, {:struct, "GearEnchantSlotInfo"}}}
     },
     %{
       name: "GearSubOptionInfos",
       type: {:list, {:nulleable, {:struct, "GearSubOptionInfo"}}}
     },
     %{
       name: "SpecialGearEnhancementUseInfoByCuid",
       type: {:map, :Cuid, {:nulleable, {:struct, "SpecialGearEnhancementUseInfo"}}}
     }
   ]},
  {"SpecialGearEnhancementUseInfo",
   [
     %{name: "LastUseSpecialGearEnhancementScheduleCuid", type: :Cuid},
     %{name: "UseCount", type: {:uint, 4}}
   ]},
  {"ItemInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "Cuid", type: :Cuid},
     %{name: "IsBound", type: :bool},
     %{name: "IsStorable", type: :bool},
     %{name: "ExpireDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{name: "AcquiredDateTime", type: {:struct, "FDateTime"}},
     %{name: "IsLocked", type: :bool}
   ]},
  {"PlayerCurrencyContainerUpdateInfo",
   [
     %{
       name: "PointCurrencyContainerUpdateInfo",
       type: {:nulleable, {:struct, "PointCurrencyContainerUpdateInfo"}}
     },
     %{
       name: "CombinedInventoryUpdateInfo",
       type: {:nulleable, {:struct, "CombinedInventoryUpdateInfo"}}
     }
   ]},
  {"CombinedInventoryUpdateInfo",
   [
     %{
       name: "InventoryUpdateInfosByInventoryKind",
       type:
         {:map, {:enum, "UserInventoryKindType"}, {:nulleable, {:struct, "InventoryUpdateInfo"}}}
     },
     %{
       name: "RedrawableInventoryUpdateInfosByItemCategory",
       type:
         {:map, {:enum, "ItemCategoryType"},
          {:nulleable, {:struct, "RedrawableItemInventoryUpdateInfo"}}}
     }
   ]},
  {"PointCurrencyContainerUpdateInfo",
   [
     %{name: "CuidToAmountDelta", type: {:map, :Cuid, 8}},
     %{name: "CuidToAmount", type: {:map, :Cuid, 8}}
   ]},
  {"TozPing",
   [
     %{name: "Nonce", type: {:uint, 4}},
     %{name: "RecentlyProcessedTozMessageIndex", type: {:uint, 4}}
   ]},
  {"TozPong",
   [
     %{name: "Nonce", type: {:uint, 4}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "RecentlyProcessedTozMessageIndex", type: {:uint, 4}}
   ]},
  {"TlsLikeEncryptClientHello", [%{name: "ClientRandom", type: :binary}]},
  {"TlsLikeEncryptServerHello",
   [
     %{name: "ServerRandom", type: :binary},
     %{name: "Exponent", type: :binary},
     %{name: "PublicKey", type: :binary}
   ]},
  {"TlsLikeEncryptPremasterSecret", [%{name: "PremasterSecret", type: :binary}]},
  {"TlsLikeEncryptServerCompleted", []},
  {"InfoAuthenticate", [%{name: "AuthenticateInfo", type: :message}]},
  {"ErFrontServerInitialAuthenticateInfo",
   [
     %{name: "LocalAreaNetworkAddress", type: :string},
     %{name: "UniverseAccountGuid", type: {:uint, 8}},
     %{name: "AuthenticateKey", type: {:uint, 4}}
   ]},
  {"ErGameServerAuthenticateInfo",
   [
     %{name: "LocalAreaNetworkAddress", type: :string},
     %{name: "AuthenticateKey", type: {:uint, 4}}
   ]},
  {"FieldEnterCompleteRequest",
   [
     %{name: "NavMeshCrcChecksum", type: {:uint, 4}},
     %{name: "CharacterMoveInfo", type: :message}
   ]},
  {"RealmAccountLoginRequest",
   [%{name: "RealmCuid", type: :Cuid}, %{name: "IsFastLogin", type: :bool}]},
  {"RealmAccountLoginResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{
       name: "FrontServerConnectionInfo",
       type: {:nulleable, {:struct, "ConnectionInfo"}}
     }
   ]},
  {"ConnectionInfo",
   [
     %{name: "ServerIp", type: :string},
     %{name: "ServerPort", type: {:uint, 4}},
     %{name: "AuthenticateKey", type: {:uint, 4}}
   ]},
  {"ProtocolCheckRequest", [%{name: "Hash", type: :string}]},
  {"ProtocolCheckResponse", []},
  {"HandshakeFailMessage", [%{name: "Result", type: :message}]},
  {"ProtocolCheckHandshakeResult",
   [%{name: "Success", type: :bool}, %{name: "ClientHash", type: :string}]},
  {"SubscriptionCommandRequest",
   [
     %{name: "Channel", type: {:uint, 4}},
     %{name: "Command", type: {:uint, 1}},
     %{name: "Parameter", type: :Cuid}
   ]},
  {"SubscriptionCommandResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "RequestedChannel", type: {:uint, 4}},
     %{name: "RequestedCommand", type: {:uint, 1}},
     %{name: "RequestedParameter", type: :Cuid},
     %{name: "SubscribeKeepaliveInterval_sec", type: {:uint, 4}}
   ]},
  {"RealmInfoPubSubChannelInitialDataNotify",
   [
     %{
       name: "PubSubChannelInitialDataNotify",
       type: {:struct, "PubSubChannelDataNotify"}
     },
     %{name: "RealmInfo", type: {:nulleable, {:struct, "RealmInfo"}}}
   ]},
  {"RealmInfo",
   [
     %{name: "RealmCuid", type: :Cuid},
     %{name: "RealmCuidString", type: :string},
     %{name: "WorldName", type: :string},
     %{name: "RealmName", type: :string},
     %{name: "Ip", type: :string},
     %{name: "Port", type: {:uint, 4}},
     %{name: "ServerState", type: {:uint, 1}},
     %{name: "ServerTagKind", type: {:uint, 1}},
     %{name: "UpdateDateTime", type: {:struct, "FDateTime"}},
     %{name: "CreateDateTime", type: {:struct, "FDateTime"}},
     %{name: "IsInboundRealmTransferable", type: :bool}
   ]},
  {"RealmInfoListRequest", [%{name: "RealmCuid", type: :Cuid}]},
  {"PlayerCreateRequest",
   [
     %{name: "Name", type: :string},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "Gender", type: {:uint, 1}},
     %{
       name: "PlayerCustomizeInfo",
       type: {:nulleable, {:struct, "PlayerCustomizeInfo"}}
     },
     %{
       name: "DevStartLocationInfo",
       type: {:nulleable, {:struct, "LocationInfo"}}
     }
   ]},
  {"PlayerCreateResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{
       name: "PlayerSummaryInfo",
       type: {:nulleable, {:struct, "PlayerSummaryInfo"}}
     }
   ]},
  {"PlayerLoginRequest",
   [
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "IsFastLogin", type: :bool}
   ]},
  {"PlayerLoginResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{
       name: "GameServerConnectionInfo",
       type: {:nulleable, {:struct, "ConnectionInfo"}}
     },
     %{name: "CanCheatCommand", type: :bool},
     %{name: "BanInfo", type: :message},
     %{name: "InPvpPlayerGuid", type: {:uint, 8}}
   ]},
  {"SessionKeyAuthenticate",
   [
     %{name: "SessionKey", type: :binary},
     %{name: "RecentlyProcessedTozMessageIndex", type: {:uint, 4}}
   ]},
  {"SessionKeyAuthenticateComplete",
   [
     %{name: "Success", type: :bool},
     %{name: "RecentlyProcessedTozMessageIndex", type: {:uint, 4}}
   ]},
  {"AttackTargetNotify",
   [
     %{name: "AttackTargetGuid", type: {:uint, 8}},
     %{name: "CharacterGuid", type: {:uint, 8}}
   ]},
  {"AttackTargetRequest", [%{name: "AttackTargetGuid", type: {:uint, 8}}]},
  {"AttackTargetResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "AttackTargetGuid", type: {:uint, 8}}
   ]},
  {"CharacterMoveNotify",
   [
     %{name: "CharacterGuid", type: {:uint, 8}},
     %{name: "CharacterMoveInfo", type: :message}
   ]},
  {"EntitySpawnNotify",
   [
     %{name: "EntityGuid", type: {:uint, 8}},
     %{name: "EntityInfo", type: :message},
     %{name: "EntitySpawnReason", type: {:uint, 1}}
   ]},
  {"EntityRemoveNotify",
   [
     %{name: "EntityGuid", type: {:uint, 8}},
     %{name: "EntityRemoveReason", type: {:uint, 1}}
   ]},
  {"FocusNotify",
   [
     %{name: "FocusTargetGuid", type: {:uint, 8}},
     %{name: "CharacterGuid", type: {:uint, 8}}
   ]},
  {"FocusRequest", [%{name: "FocusTargetGuid", type: {:uint, 8}}]},
  {"FocusResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "FocusTargetGuid", type: {:uint, 8}}
   ]},
  {"SkillRequest",
   [
     %{name: "SkillCuid", type: :Cuid},
     %{name: "SkillTargetingInfo", type: :message},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "SkiDelayForOthersDuration_msecllCuid", type: :float},
     %{name: "IsToggleBuffSkillOn", type: :bool}
   ]},
  {"SkillResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "SkillCuid", type: :Cuid},
     %{name: "IsExecutingBegun", type: :bool}
   ]},
  {"SkillEndNotify",
   [
     %{name: "SkillCuid", type: :Cuid},
     %{name: "CasterGuid", type: {:uint, 8}},
     %{name: "SkillSiid", type: {:uint, 4}},
     %{name: "IsAllStagesComplete", type: :bool}
   ]},
  {"PlayerSkillSlotUpdateRequest",
   [
     %{name: "PlayerSkillSlotIndex", type: {:uint, 1}},
     %{name: "unk", type: {:uint, 1}},
     %{
       name: "PlayerSkillSlotInfo",
       type: {:nulleable, {:struct, "PlayerSkillSlotInfo"}}
     }
   ]},
  {"PlayerSkillSlotUpdateResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "PlayerSkillSlotIndex", type: {:uint, 1}},
     %{name: "Stance", type: {:uint, 1}},
     %{
       name: "PlayerSkillSlotInfo",
       type: {:nulleable, {:struct, "PlayerSkillSlotInfo"}}
     }
   ]},
  {"SkillAutoUseInfoUpdateNotify", [%{name: "RootSkillCuids", type: {:list, :Cuid}}]},
  {"PlayerSkillAcquireRequest", [%{name: "SkillCuid", type: :Cuid}]},
  {"PlayerSkillAcquireResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "SkillCuid", type: :Cuid},
     %{name: "AutoUseRootSkillCuids", type: {:list, :Cuid}}
   ]},
  {"CharacterPublicStatsInfo",
   [
     %{name: "Level", type: {:uint, 4}},
     %{name: "HealthPoints", type: {:uint, 8}},
     %{name: "MaxHealthPoints", type: {:uint, 8}},
     %{name: "WalkSpeed_cmpsec", type: {:uint, 2}},
     %{name: "WalkAngularSpeed_radpsec", type: :float},
     %{name: "RunSpeed_cmpsec", type: {:uint, 2}},
     %{name: "RunAngularSpeed_radpsec", type: :float}
   ]},
  {"FollowerInfo",
   [
     %{name: "CharacterInfo", type: {:struct, "CharacterInfo"}},
     %{name: "CoreInfo", type: {:nulleable, {:struct, "FollowerCoreInfo"}}},
     %{
       name: "DispatchInfo",
       type: {:nulleable, {:struct, "FollowerDispatchInfo"}}
     }
   ]},
  {"BuildingWorkObjectiveInfo",
   [
     %{name: "BuildingWorkKind", type: {:uint, 1}},
     %{name: "CuidValue01", type: :Cuid},
     %{name: "IntegerValue01", type: {:uint, 8}},
     %{name: "IntegerValue02", type: {:uint, 8}}
   ]},
  {"HealthPointsSynchronizeNotify",
   [
     %{name: "EntityGuid", type: {:uint, 8}},
     %{name: "HealthPoints", type: {:uint, 8}}
   ]},
  {"ExperiencePointsSynchronizeNotify", [%{name: "ExperiencePoints", type: {:uint, 8}}]},
  {"LevelSynchronizeNotify",
   [
     %{name: "NewLevel", type: {:uint, 4}},
     %{name: "LastLevelUpDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"NpcInfo",
   [
     %{name: "CharacterInfo", type: {:struct, "CharacterInfo"}},
     %{name: "NpcCuid", type: :Cuid},
     %{name: "SpawnerCuid", type: :Cuid},
     %{name: "MovePatternCuid", type: :Cuid},
     %{name: "AffiliatedBuildingGuid", type: {:uint, 8}},
     %{name: "AffiliatedBuildingCuid", type: :Cuid},
     %{name: "StrongholdBattleDeploymentKind", type: {:uint, 1}},
     %{name: "SummonerGuid", type: {:uint, 8}},
     %{
       name: "FactionProxyInfo",
       type: {:nulleable, {:struct, "FactionProxyInfo"}}
     },
     %{name: "NpcBossChaseGrade", type: {:uint, 4}},
     %{name: "JoinedExpeditionGuid", type: {:uint, 8}},
     %{name: "AffiliatedBattalionGuid", type: {:uint, 8}},
     %{name: "IsInSeekHidingAttackTargetState", type: :bool},
     %{name: "AttackerPlayerGuids", type: {:list, {:uint, 8}}}
   ]},
  {"PlayerInfo",
   [
     %{name: "CharacterInfo", type: {:struct, "CharacterInfo"}},
     %{name: "Name", type: :string},
     %{name: "Classe", type: {:uint, 1}},
     %{name: "Gender", type: {:uint, 1}},
     %{name: "Stance", type: {:uint, 1}},
     %{
       name: "PlayerCustomizeInfo",
       type: {:nulleable, {:struct, "PlayerCustomizeInfo"}}
     },
     %{name: "SpiritualBondPower", type: {:uint, 8}},
     %{name: "SlayingGrade", type: {:uint, 2}},
     %{name: "SelectedMountItemCuid", type: :Cuid},
     %{name: "MountInteractionState", type: {:uint, 4}},
     %{name: "CostumeInfo", type: {:nulleable, {:struct, "CostumeInfo"}}},
     %{name: "InteractingDoodadGuid", type: {:uint, 8}},
     %{name: "DyingExpireDateTime", type: {:nulleable, {:struct, "FDateTime"}}},
     %{
       name: "LastPlayerInteractionDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     },
     %{name: "ConnectionStatus", type: {:uint, 4}},
     %{name: "CovenantMemberRoleKind", type: {:uint, 1}},
     %{name: "CovenantMemberRoleName", type: :string},
     %{name: "PartyGuid", type: {:uint, 8}},
     %{name: "BattalionInfo", type: {:nulleable, {:struct, "AffiliatedBattalionInfo"}}},
     %{name: "IsInSelfieMode", type: :bool},
     %{name: "IsFissioned", type: :bool},
     %{
       name: "SkillCasterLocationProxyInfo",
       type: {:nulleable, {:struct, "SkillCasterLocationProxyInfo"}}
     },
     %{name: "IsCollisionFree", type: :bool},
     %{name: "IsQuestCinePlaying", type: :bool},
     %{name: "IsHeadPieceDisplayed", type: :bool},
     %{name: "FollowerSquadSlotAdditionalCount", type: {:uint, 2}},
     %{name: "LastSourceWarpPointCuid", type: :Cuid}
   ]},
  {"QuestAcceptRequest",
   [
     %{name: "QuestVuid", type: {:struct, "Vuid"}},
     %{name: "FavorNpcGuid", type: {:uint, 8}}
   ]},
  {"QuestRewardRequest", [%{name: "QuestVuid", type: {:struct, "Vuid"}}]},
  {"QuestAcceptNotify",
   [
     %{name: "QuestVuid", type: {:struct, "Vuid"}},
     %{name: "CurrencyContainerUpdateInfo", type: :message},
     %{name: "CombinedInventoryUpdateInfo", type: :message},
     %{name: "StartByItem", type: :bool},
     %{name: "FavorInfo", type: :message},
     %{name: "FavorMissionInfo", type: :message}
   ]},
  {"PlayerItemUseRequest",
   [
     %{name: "ItemGuid", type: {:uint, 8}},
     %{name: "ItemCuid", type: :Cuid},
     %{name: "ParameterInfo", type: :message}
   ]},
  {"PlayerItemUseFailResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "ItemGuid", type: {:uint, 8}},
     %{name: "ItemCuid", type: :Cuid},
     %{name: "ParameterInfo", type: :message},
     %{
       name: "CooldownExpireDateTimeRangeInfo",
       type: {:nulleable, {:struct, "DateTimeRangeInfo"}}
     }
   ]},
  {"QueryChatRoomRecordsInitializationInfoResponse",
   [
     %{name: "ErTozMessageWithResultCode", type: {:uint, 4}},
     %{name: "MessageId", type: {:uint, 4}},
     %{name: "ChatRoomRecordsInitializationInfo", type: {:list, :message}}
   ]},
  {"SpecialMovePointsSynchronizeNotify",
   [
     %{name: "EntityGuid", type: {:uint, 8}},
     %{name: "SpecialMovePoints", type: {:uint, 4}},
     %{name: "DelayForOthersDuration_msec", type: {:uint, 4}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "SpecialMovePointsDecreaseAmount_pmsec", type: :float}
   ]},
  {"ChatMessageNotify", [%{name: "ChatMessageInfos", type: {:list, :message}}]},
  {"ErTozMessageWithResultCode", [%{name: "ResultCode", type: {:uint, 4}}]},
  {"ErLoginServerInitialToyAuthenticateInfo",
   [
     %{
       name: "ErLoginServerInitialAuthenticateInfo",
       type: {:struct, "ErLoginServerInitialAuthenticateInfo"}
     },
     %{name: "Npsn", type: :string},
     %{name: "NpToken", type: :string},
     %{name: "NpaCode", type: :string},
     %{name: "NexonSn", type: {:uint, 8}}
   ]},
  {"ErLoginServerInitialAuthenticateInfo",
   [
     %{name: "LocalAreaNetworkAddress", type: :string},
     %{name: "Market", type: {:uint, 4}},
     %{name: "AuthenticationKind", type: {:uint, 4}},
     %{name: "OsKind", type: {:uint, 4}},
     %{name: "OsVersion", type: :string},
     %{name: "DeviceModel", type: :string},
     %{name: "Adid", type: :string},
     %{name: "Idfv", type: :string},
     %{name: "CountryCode", type: :string},
     %{name: "Language", type: :string},
     %{name: "AppVersion", type: :string},
     %{name: "OsType", type: {:uint, 4}},
     %{name: "OsName", type: :string}
   ]},
  {"CharacterMoveToLocationInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "CurrentFacingDirectionYaw_rad", type: :float},
     %{name: "MoveKind", type: {:uint, 1}},
     %{name: "MoveToDestinationParameterInfo", type: :message},
     %{name: "MoveToNextDestinationParameterInfo", type: :message}
   ]},
  {"CharacterMoveStopInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "CurrentFacingDirectionYaw_rad", type: :float},
     %{name: "CharacterStopMovingReason", type: {:uint, 4}}
   ]},
  {"CharacterMoveToDirectionInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "CurrentFacingDirectionYaw_rad", type: :float},
     %{name: "MoveKind", type: {:uint, 1}},
     %{name: "DirectionYaw_rad", type: :float},
     %{name: "Destination_cm", type: {:struct, "FVector"}}
   ]},
  {"FieldUid",
   [
     %{name: "RegionCuid", type: :Cuid},
     %{name: "InstanceFieldCuid", type: :Cuid},
     %{name: "InstanceFieldGuid", type: {:uint, 8}}
   ]},
  {"FVector",
   [
     %{name: "x", type: :float},
     %{name: "y", type: :float},
     %{name: "z", type: :float}
   ]},
  {"Position",
   [
     %{name: "x", type: :float},
     %{name: "y", type: :float},
     %{name: "z", type: :float}
   ]},
  {"CharacterMoveInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float}
   ]},
  {"CharacterMoveToInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "CurrentFacingDirectionYaw_rad", type: :float},
     %{name: "MoveKind", type: {:uint, 1}}
   ]},
  {"CharacterMoveToLocationParameterInfo",
   [%{name: "Destination_cm", type: {:struct, "FVector"}}]},
  {"CharacterMoveCurvedToLocationParameterInfo",
   [
     %{name: "Destination_cm", type: {:struct, "FVector"}},
     %{name: "IntermediateLocation_cm", type: {:struct, "FVector"}}
   ]},
  {"CharacterRotateTowardsYawInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "Duration_msec", type: {:uint, 4}},
     %{name: "IsClockwise", type: :bool},
     %{name: "MoveKind", type: {:uint, 1}},
     %{name: "FinalYaw_rad", type: :float}
   ]},
  {"FDateTime", [%{name: "utc1", type: {:uint, 4}}, %{name: "utc2", type: {:uint, 8}}]},
  {"CharacterRotateTowardsEntityInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "Duration_msec", type: {:uint, 4}},
     %{name: "IsClockwise", type: :bool},
     %{name: "MoveKind", type: {:uint, 1}},
     %{name: "TargetLocation_cm", type: {:struct, "FVector"}},
     %{name: "EntityGuid", type: {:uint, 8}}
   ]},
  {"CharacterRotateInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "Duration_msec", type: {:uint, 4}},
     %{name: "IsClockwise", type: :bool},
     %{name: "MoveKind", type: {:uint, 1}}
   ]},
  {"CharacterRotateTowardsLocationInfo",
   [
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "DelayForOthersDuration_msec", type: :float},
     %{name: "Duration_msec", type: {:uint, 4}},
     %{name: "IsClockwise", type: :bool},
     %{name: "MoveKind", type: {:uint, 1}},
     %{name: "TargetLocation_cm", type: {:struct, "FVector"}}
   ]},
  {"SkillGroundTargetingInfo",
   [
     %{name: "DirectionYaw_rad", type: :float},
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "IsOriginatedAtCasterLocationProxy", type: :bool}
   ]},
  {"SkillCharacterTargetingInfo", [%{name: "CharacterGuid", type: {:uint, 8}}]},
  {"LocationInfo",
   [
     %{name: "FieldUid", type: {:struct, "FieldUid"}},
     %{name: "Location_cm", type: {:struct, "FVector"}},
     %{name: "FacingDirection", type: {:struct, "FRotator"}}
   ]},
  {"PlayerSkillSlotInfo", [%{name: "SkillCuid", type: :Cuid}]},
  {"FollowerCoreInfo",
   [
     %{name: "FollowerGuid", type: {:uint, 8}},
     %{name: "FollowerCuid", type: :Cuid},
     %{name: "FollowerLevel", type: {:uint, 4}},
     %{name: "AffiliatedHavenCuid", type: :Cuid},
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerName", type: :string},
     %{name: "PlayerCovenantGuid", type: {:uint, 8}},
     %{name: "ReturnReason", type: {:uint, 4}},
     %{name: "ReturnReasonAdditionalInfo", type: {:uint, 1}},
     %{name: "LeaveToWorkplaceDateTime", type: {:struct, "FDateTime"}},
     %{name: "ArrivedAtWorkplaceDateTime", type: {:struct, "FDateTime"}},
     %{name: "LeaveToHeadquartersDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"FollowerDispatchInfo",
   [
     %{name: "WorkKind", type: {:uint, 1}},
     %{name: "WorkplaceCuid", type: :Cuid},
     %{name: "WorkplaceSpawnedEntityCuid", type: :Cuid},
     %{name: "BuildingWorkObjectiveInfo", type: :message}
   ]},
  {"EntitySynchronizeMessage", [%{name: "EntityGuid", type: {:uint, 8}}]},
  {"Vuid", [%{name: "Cuid", type: :Cuid}, %{name: "Guid", type: {:uint, 8}}]},
  {"BuffInfo",
   [
     %{name: "Guid", type: {:uint, 8}},
     %{name: "Cuid", type: :Cuid},
     %{name: "StackCount", type: {:uint, 4}},
     %{name: "CreatedTime", type: {:struct, "FDateTime"}},
     %{name: "ExpireTime", type: {:struct, "FDateTime"}},
     %{name: "CasterGuid", type: {:uint, 8}},
     %{name: "HealthPoints", type: {:uint, 8}},
     %{
       name: "SpellstoneAdditionalStatsInfo",
       type: {:nulleable, {:struct, "SpellstoneAdditionalStatsInfo"}}
     }
   ]},
  {"DateTimeRangeInfo",
   [
     %{name: "FromDateTime", type: {:struct, "FDateTime"}},
     %{name: "ToDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"CovenantEmblemInfo",
   [
     %{name: "BackgroundCuid", type: :Cuid},
     %{name: "BackgroundRotation", type: :float},
     %{name: "FirstBackgroundColorCuid", type: :Cuid},
     %{name: "SecondBackgroundColorCuid", type: :Cuid},
     %{name: "ThirdBackgroundColorCuid", type: :Cuid},
     %{name: "SubLogoCuid", type: :Cuid},
     %{name: "SubLogoColorCuid", type: :Cuid},
     %{name: "SubLogoOpacity", type: :float},
     %{name: "SubLogoRotation", type: :float},
     %{name: "SubLogoScale", type: :float},
     %{name: "SubLogoPositionX", type: :float},
     %{name: "SubLogoPositionY", type: :float},
     %{name: "MainLogoCuid", type: :Cuid},
     %{name: "MainLogoColorCuid", type: :Cuid},
     %{name: "MainLogoOpacity", type: :float},
     %{name: "MainLogoRotation", type: :float},
     %{name: "MainLogoScale", type: :float},
     %{name: "MainLogoPositionX", type: :float},
     %{name: "MainLogoPositionY", type: :float}
   ]},
  {"EntityInfo",
   [
     %{name: "Entity", type: {:uint, 1}},
     %{name: "Guid", type: {:uint, 8}},
     %{name: "RealmCuid", type: :Cuid},
     %{name: "LocationInfo", type: {:nulleable, {:struct, "LocationInfo"}}},
     %{name: "Faction", type: {:uint, 1}},
     %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
     %{name: "CovenantName", type: :string},
     %{
       name: "CovenantEmblemInfo",
       type: {:nulleable, {:struct, "CovenantEmblemInfo"}}
     },
     %{name: "AffiliatedStrongholdCuid", type: :Cuid}
   ]},
  {"CharacterInfo",
   [
     %{name: "Entity", type: {:struct, "EntityInfo"}},
     %{name: "CharacterState", type: {:uint, 4}},
     %{name: "CharacterPublicStatsInfo", type: :message},
     %{name: "BuffInfos", type: {:list, {:nulleable, {:struct, "BuffInfo"}}}},
     %{name: "CharacterMoveInfo", type: :message},
     %{name: "FocusTargetGuid", type: {:uint, 8}},
     %{name: "AttackTargetGuid", type: {:uint, 8}},
     %{
       name: "FinishableExpireDateTime",
       type: {:nulleable, {:struct, "FDateTime"}}
     },
     %{name: "ParticipatingContentsGuids", type: {:list, {:uint, 8}}},
     %{name: "IsHarmfulSkillTargetableInAnyFactionRelation", type: :bool},
     %{name: "StrongholdBattleGuid", type: {:uint, 8}}
   ]},
  {"InfoAuthenticateComplete",
   [
     %{name: "Success", type: :bool},
     %{name: "SessionKey", type: :binary},
     %{name: "SessionInitializeInfo", type: :message},
     %{name: "FailureReason", type: {:uint, 4}},
     %{name: "FailureReasonData", type: :message}
   ]},
  {"ErLoginServerSessionInitializeInfo",
   [
     %{name: "ErServerSessionInitializeInfo", type: {:struct, "ErServerSessionInitializeInfo"}},
     %{name: "UniverseAccountInfo", type: {:nulleable, {:struct, "UniverseAccountInfo"}}},
     %{name: "LatestLoggedInRealmCuid", type: :Cuid},
     %{
       name: "RealmInfo",
       type: {:nulleable, {:struct, "RealmInfo"}}
     },
     %{
       name: "PreregistrationInfo",
       type: {:nulleable, {:struct, "PreregistrationInfo"}}
     },
     %{name: "Gsid", type: :string},
     %{name: "RealmIntegrationRealmInfos", type: {:list, {:struct, "RealmIntegrationRealmInfo"}}}
   ]},
  {"ErGameServerSessionInitializeInfo",
   [
     %{name: "UtcNow", type: {:struct, "FDateTime"}},
     %{name: "LocationInfo", type: {:nulleable, {:struct, "LocationInfo"}}}
   ]},
  {"ErFrontServerSessionInitializeInfo",
   [
     %{name: "ServerUtcNow", type: {:struct, "FDateTime"}},
     %{name: "WaitQueueType", type: {:uint, 1}},
     %{name: "WaitingQueueRemainingCount", type: {:uint, 4}},
     %{name: "RealmHasSpaceAvailable", type: :bool},
     %{name: "PopupCommunityAutomatically", type: :bool},
     %{
       name: "ServerConfigInfo",
       type: {:nulleable, {:struct, "ServerConfigInfo"}}
     }
   ]},
  {"ServerConfigInfo",
   [
     %{name: "CspWebBaseUrl", type: :string},
     %{name: "RealmCreateDateTime", type: {:struct, "FDateTime"}},
     %{name: "AlignedRealmCreateDateTime", type: {:struct, "FDateTime"}}
   ]},
  {"ErInterServerMigrationSessionInitializeInfo",
   [%{name: "UtcNow", type: {:struct, "FDateTime"}}]},
  {"RealmTransferredPlayerNameChangeRequest",
   [%{name: "PlayerGuid", type: {:uint, 8}}, %{name: "NewName", type: :string}]},
  {"RealmTransferredPlayerNameChangeResponse",
   [
     %{name: "ResultCode", type: {:uint, 4}},
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "NewName", type: :string}
   ]}
]
