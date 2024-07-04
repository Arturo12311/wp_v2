%{
  "CovenantCurrencyInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyInfo", type: {:nullable, {:struct, "FTzCovenantCurrencyInfo"}}}
  ],

"StrongholdBattleEnterStrongholdAreaNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "StandByEndDateTime", type: :FDateTime}
  ],

"WpcInfo" => [
    %{name: "BillingId", type: :FString},
    %{name: "CharacterIdForHistory", type: :FString},
    %{name: "ProductType", type: {:int, 4}},
    %{name: "CoinType", type: :FString}
  ],

"PlayerCampaignTicketInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CampaignTicketInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCampaignTicketInfo"}}}
  ],

"SpawnLayerDeactivateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsPermanentSpawnLayer", type: :unknown},
    %{name: "SpawnLayerCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatCancelStrongholdProtectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"PlayerCovenantWatchRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"BuffStatsInfo" => [
    %{name: "Duration", type: :FTimespan},
    %{name: "Interval_msec", type: {:int, 4}},
    %{name: "IsImmuneToHealthPointsLoss", type: :unknown},
    %{name: "IsImmuneToHealthPointsGain", type: :unknown},
    %{name: "IsImmuneToManaPointsLoss", type: :unknown},
    %{name: "IsImmuneToManaPointsGain", type: :unknown},
    %{name: "HealthPointsAffectParam", type: :float},
    %{name: "ManaPointsAffectParam", type: :float},
    %{name: "CharacterStatChanges", type: {:list, {:struct, "CharacterStatChangeInfo"}}},
    %{name: "ReflectDamageRatioBasedOnDamageTaken", type: :float},
    %{name: "ReflectDamageRatioBasedOnMaxHealthPoints", type: :float},
    %{name: "MaxReflectCount", type: :float},
    %{name: "HealthPointsGainAdjustRatio", type: :float},
    %{name: "HealthPointsLossAdjustRatio", type: :float},
    %{name: "ProtectHealthPointsSettingStatKind", type: {:enum, "ETzAdjustableStatKindType"}},
    %{name: "ProtectHealthPointsSettingRatio", type: :float},
    %{name: "ProtectHealthPointsSettingAmount", type: {:int, 4}}
  ],

"SendDiplomacyChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "FTzSendChatMessageRequest"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"TargetLocationInfo" => [
    %{name: "Index", type: {:int, 4}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CheatPaidAttendanceAddAttendanceCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: {:struct, "FTzCuid"}},
    %{name: "AddAttendanceCount", type: {:int, 4}}
  ],

"CrossRealmCovenantDiplomacyWithdrawHostilityResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatAcceptQuestResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "FTzQuestsInfo"}}}
  ],

"MarketSellWithdrawResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"AchievementSourceInfo" => [
    
  ],

"TerritoryErosionRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ErosionGuid", type: {:uint, 8}}
  ],

"CrossRealmCovenantDiplomacyConfirmAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"PowerSavingModeLootNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RewardInfo", type: {:nullable, {:struct, "FTzPowerSavingModeRewardInfo"}}}
  ],

"OneShotSpecialMoveDoodadInfo" => [
    %{name: "__base__", type: {:struct, "FTzInteractableDoodadInfo"}}
  ],

"FollowerDispatchOrderInfo" => [
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "UseDispatchAutomation", type: :unknown}
  ],

"CheatBatchBossSpawnTimeRollbackRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatRealmIntegrationPreprocessingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SeasonPassAchievementRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "SeasonPassAchievementGroupCuid", type: {:struct, "FTzCuid"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"EquipmentPresetInfo" => [
    %{name: "GuiseCuid", type: {:struct, "FTzCuid"}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}}
  ],

"BattalionBattalionWarpRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"WorldMapMarkerEditSettingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :FString}
  ],

"InstanceFieldLeaveExpireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpireTargetTime", type: :FDateTime}
  ],

"CovenantBattalionQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SummaryInfoList", type: {:list, {:struct, "BattalionSummaryInfo"}}}
  ],

"DestroyerInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DestroyerInfo", type: {:nullable, :message}}
  ],

"MonsterBookNodeAcquireRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsAcquireByItem", type: :unknown}
  ],

"PartySynchronizeMemberCharacterStateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPartySynchronizeMemberNotify"}},
    %{name: "State", type: {:enum, "ETzCharacterStateType"}}
  ],

"ServerDrivenPlayEndedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString},
    %{name: "RewardInfo", type: {:nullable, :message}}
  ],

"CheatResetAetherOptionByCategoryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantJoinedStrongholdCampaignBattleInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantJoinedStrongholdBattleInfo"}}
  ],

"CovenantSynchronizeMemberPartyGuidNotify" => [
    %{name: "__base__", type: {:struct, "FTzCovenantSynchronizeMemberNotify"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"ClasseChangeItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "BeforeGearGuidToAfterGearCuids", type: {:map, {:uint, 8}, :cuid}},
    %{name: "BeforeArquiruneCuidToAfterArquiruneCuids", type: {:map, :cuid, :cuid}}
  ],

"TozTcpHello" => [
    %{name: "EngineData", type: :unknown},
    %{name: "UserData", type: :unknown}
  ],

"ChatMessageNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatMessageInfos", type: {:list, {:struct, "ChatMessageInfo"}}}
  ],

"UniverseAccountLogoutRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LogMessage", type: :FString}
  ],

"MountDeboardingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantSynchronizeHavenOrganizationStatsNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "HavenOrganizationStatsDetailInfo", type: {:nullable, {:struct, "FTzHavenOrganizationStatsDetailInfo"}}}
  ],

"CheatTeleportToNpcResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatExpeditionExecuteNextWaveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MonsterBookInfo" => [
    %{name: "CategoryCuidToNodeStateInfos", type: {:list, {:struct, "MonsterBookNodeStateInfo"}}},
    %{name: "CategoryCuidToCollectionInfo", type: {:map, :cuid, {:struct, "TSharedPtr<FTzMonsterBookCollectionInfo"}}},
    %{name: "CategoryCuidToFreeAnalysisCount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CategoryCuidToAnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"CheatPlayerRealmTransferBlockRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ApplyAll", type: :unknown},
    %{name: "Block", type: :unknown}
  ],

"CheatKillSurroundingCharactersResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerDeleteReserveCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"GearEnchantRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "CostItemGuid", type: {:uint, 8}}
  ],

"ShopShoppingModeKickoutNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "Reason", type: {:enum, "ETzShopKickoutReasonType"}}
  ],

"CrossRealmSeasonInfo" => [
    %{name: "SeasonCuid", type: {:struct, "FTzCuid"}},
    %{name: "RegionContentKind", type: {:enum, "ETzRegionContentKindType"}},
    %{name: "IsUnderMaintenance", type: :unknown},
    %{name: "PreseasonStartUtcDateTime", type: :FDateTime},
    %{name: "StartUtcDateTime", type: :FDateTime},
    %{name: "EndUtcDateTime", type: :FDateTime},
    %{name: "PostseasonEndUtcDateTime", type: :FDateTime},
    %{name: "MatchingGroupNameTextCuid", type: {:struct, "FTzCuid"}},
    %{name: "MatchedRealmCuids", type: :unknown},
    %{name: "SeasonInfoPageUrl", type: :FString}
  ],

"CheatSetLoggingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ErLogTag", type: :FString},
    %{name: "IsLogging", type: :unknown}
  ],

"ItemBoundAndErodedSelector" => [
    %{name: "__base__", type: {:struct, "FTzMultipleItemSelector"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: :unknown},
    %{name: "IsEroded", type: :unknown},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"MerchandiseBuyCountInfo" => [
    %{name: "SubCategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "MerchandiseCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuyOrCraftLimitLevel", type: {:enum, "ETzBuyOrCraftLimitLevelType"}},
    %{name: "Count", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"BattalionCovenantDiplomacyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AllianceCovenantGuids", type: :unknown}
  ],

"AnniversaryAchievementPrivateChannelCloseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BuildingConstructRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingLevelToConstruct", type: {:int, 4}}
  ],

"CheatClearCovenantWarehouseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PvpBattleKillDeathInfo" => [
    %{name: "VictimPvpBattlePlayerId", type: {:struct, "FTzPvpBattlePlayerId"}},
    %{name: "VictimPvpBattleCovenantId", type: {:struct, "FTzPvpBattleCovenantId"}},
    %{name: "KillerPvpBattlePlayerId", type: {:struct, "FTzPvpBattlePlayerId"}},
    %{name: "KillerPvpBattleCovenantId", type: {:struct, "FTzPvpBattleCovenantId"}},
    %{name: "DateTime", type: :FDateTime},
    %{name: "DeathLocation_cm", type: :FVector}
  ],

"MarketFavoriteItemInfo" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "RegisterDateTime", type: :FDateTime}
  ],

"CheatChangeServerDrivenPlayRemainingDurationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RemainingDuration_sec", type: {:int, 4}}
  ],

"CastAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAffectSourceInfo"}}
  ],

"CheatMonsterBookSetFreeAnalysisCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "FreeAnalysisCount", type: {:int, 4}}
  ],

"MarketTransactionInfo" => [
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "MarketTransactionKind", type: {:enum, "ETzMarketTransactionKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemStackCount", type: {:int, 4}},
    %{name: "ItemAdditionalInfo", type: {:nullable, :message}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyAmount", type: {:uint, 8}},
    %{name: "SettledCurrencyAmount", type: {:uint, 8}},
    %{name: "TransactionDateTime", type: :FDateTime}
  ],

"CharacterMoveCurvedToLocationParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveToLocationParameterInfo"}},
    %{name: "IntermediateLocation_cm", type: :FVector}
  ],

"AccelerationUseFollowerWorkRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "AccelerationActionKind", type: {:enum, "ETzAccelerationActionKindType"}},
    %{name: "CuidAndCountInfo", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}}
  ],

"AnniversaryAchievementInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementInfo"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryAchievementCycleEndDateTime", type: :FDateTime},
    %{name: "AnniversaryAchievementBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryAchievementEndDateTime", type: :FDateTime}
  ],

"NpcInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterInfo"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "MovePatternCuid", type: {:struct, "FTzCuid"}},
    %{name: "AffiliatedBuildingGuid", type: {:uint, 8}},
    %{name: "AffiliatedBuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "SummonerGuid", type: {:uint, 8}},
    %{name: "FactionProxyInfo", type: {:nullable, {:struct, "FTzFactionProxyInfo"}}},
    %{name: "NpcBossChaseGrade", type: {:int, 4}},
    %{name: "JoinedExpeditionGuid", type: {:uint, 8}},
    %{name: "AffiliatedBattalionGuid", type: {:uint, 8}},
    %{name: "IsInSeekHidingAttackTargetState", type: :unknown},
    %{name: "AttackerPlayerGuids", type: :unknown}
  ],

"CrossRealmSeasonRealmIntegrationBattleEntryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzCrossRealmSeasonEntryUpdateDataNotify"}},
    %{name: "PlayerCount", type: {:int, 4}}
  ],

"CovenantBuildingWorkInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "FTzBuildingWorkInfo"}}}
  ],

"ShopBuyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "RegisteredGoodsGuidToCounts", type: {:map, {:uint, 8}, {:uint, 8}}},
    %{name: "SystemGoodsCuidToCounts", type: {:map, :cuid, {:uint, 8}}},
    %{name: "MostExpensiveGoodsItemIndex", type: {:nullable, :message}}
  ],

"RealmIntegrationCancelRealmAccountDeletionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"CovenantDonationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CovenantWarehouseItemAddInfo", type: {:nullable, {:struct, "FTzItemAddInfo"}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:nullable, {:struct, "FTzItemAddInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :unknown},
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"PartyConfirmInvitationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "IsApproved", type: :unknown}
  ],

"AccountAffectDetachNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AccountAffectGuid", type: {:uint, 8}}
  ],

"StrongholdSummaryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "OccupyingCovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "OccupyingCovenantName", type: :FString},
    %{name: "OccupyingCovenantLevel", type: {:int, 4}},
    %{name: "OccupyingCovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "BuildingSubscriptionSummaryInfos", type: {:list, {:struct, "BuildingSubscriptionSummaryInfo"}}}
  ],

"CovenantRegisteredGoodsRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "FTzItemGuidSelector"}}},
    %{name: "SellCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "SellPrice", type: {:int, 4}},
    %{name: "GoodsBuyLimitCount", type: {:nullable, {:uint, 8}}}
  ],

"ItemIndexWithCount" => [
    %{name: "__base__", type: {:struct, "FTzItemIndex"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"CovenantLivingTotemStatsInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "LivingTotemCuid", type: {:nullable, {:struct, "FTzCuid"}}},
    %{name: "LivingTotemRole", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x29));uVar7=local_198&0xff;}uVar1=local_190;pcVar3=local_188;if((uVar7&1)==0){uVar1=uVar7>>1;pcVar3=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "LivingTotemTier", type: {:nullable, {:int, 4}}}
  ],

"ContentsUnlockNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ContentsUnlockKinds", type: :unknown}
  ],

"CovenantGiftInfo" => [
    %{name: "SpecialGiftBoxCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpecialGiftBoxPoints", type: {:int, 4}},
    %{name: "CovenantGiftExperiencePoints", type: {:uint, 8}}
  ],

"SessionInitializeInfo" => [
    %{name: "unknown_name", type: :unknown}
  ],

"MailAttachmentCurrencyInfo" => [
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"RealmIntegrationBattleScoreInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "ScoreInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzRealmIntegrationBattleRealmScoreInfo"}}}
  ],

"SkillReplaceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BeforeSkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "AfterSkillCuid", type: {:struct, "FTzCuid"}}
  ],

"SquadSharedAttackTargetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}}
  ],

"CovenantDiplomacyInfos" => [
    %{name: "RequestInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantDiplomacyInfo"}}},
    %{name: "ResponseInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantDiplomacyInfo"}}}
  ],

"CheatCastVeilRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatFinishFollowerWorkResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"InventoryOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InventoryOptionInfo", type: {:nullable, {:struct, "FTzInventoryOptionInfo"}}}
  ],

"ChatServerLoginResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ChatServerIp", type: :FString},
    %{name: "ChatServerPort", type: {:int, 4}},
    %{name: "ChatServerAuthenticateKey", type: {:int, 4}}
  ],

"NgsNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Data", type: {:list, {:struct, "unsigned_char"}}}
  ],

"PartyTargetLocationSetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "FTzTargetLocationInfo"}}}
  ],

"OccupiableNpcRandomBuffStateUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "IsRandomBuffNpc", type: :unknown},
    %{name: "NxLogBaseParameterInfo", type: {:nullable, :message}}
  ],

"CheatChangeStrongholdTaxRateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "TaxInfo", type: {:nullable, {:struct, "FTzTaxInfo"}}}
  ],

"CheatApplyCovenantResearchSetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"QuestCinePlayingSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "IsQuestCinePlaying", type: :unknown}
  ],

"CovenantCurrencyInfo" => [
    %{name: "PointCurrencyContainerInfo", type: {:map, :cuid, {:uint, 8}}}
  ],

"FollowerMovePathInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuids", type: {:list, {:uint, 8}}}
  ],

"CheatStrongholdBattleCarriageLivingTotemTeleportToPlayerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FavorBossQuestAllAcceptRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RedrawableItemInventoryUpdateInfo" => [
    %{name: "AddedRedrawableItemInfoList", type: {:list, {:struct, "RedrawableItemInfo"}}},
    %{name: "RemovedRedrawableItemGuidList", type: {:list, {:uint, 8}}}
  ],

"StrongholdBattleAttackSpireStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackPhaseStartNotify"}}
  ],

"StrongholdBattleTeleportToSpireRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpireWarpNpcGuid", type: {:uint, 8}},
    %{name: "RequestSpireCuid", type: {:struct, "FTzCuid"}}
  ],

"BossSpawnInfoUpdatedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "BossSpawnInfo", type: {:nullable, :message}}
  ],

"CheatChangeServerTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Time", type: :FString}
  ],

"BattalionInviteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"CheatSetEnvironmentVariableRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Name", type: :FString},
    %{name: "Value", type: :FString}
  ],

"CheatMonsterBookSetNodeLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "NodeStateInfo", type: {:nullable, {:struct, "FTzMonsterBookNodeAcquiredStateInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "FTzMonsterBookCollectionInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"ServerDrivenPlayStartResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ServerDrivenPlayInfo", type: {:nullable, {:struct, "FTzServerDrivenPlayInfo"}}},
    %{name: "LastPlayerInteractionDateTime", type: :FDateTime}
  ],

"StrongholdReserveProtectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "Hour", type: {:int, 4}},
    %{name: "Minute", type: {:int, 4}}
  ],

"ChatRoomRecordsInitializationInfo" => [
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChannelIndex", type: {:int, 2}},
    %{name: "ChatRecordsMetaData", type: {:nullable, {:struct, "FTzChatRecordsMetaData"}}},
    %{name: "FirstRecordIndex", type: {:uint, 8}},
    %{name: "LastRecordIndex", type: {:uint, 8}},
    %{name: "ChatMessageInfos", type: {:list, {:struct, "ChatMessageInfo"}}}
  ],

"CheatClearCollectionByCollectionCategoryCuidFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantTradeSalesListQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatStartOccupiableNpcBossBattleResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveSetFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerDeleteConditionCheckResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsPlayerDeleteBlockingLevel", type: :unknown},
    %{name: "IsInCovenant", type: :unknown},
    %{name: "HasSaleGoodsInMarket", type: :unknown}
  ],

"ExpeditionNpcSummonWaveStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Info", type: {:nullable, {:struct, "FTzExpeditionNpcSummonWaveInfo"}}}
  ],

"SharedTargetPlayerInfo" => [
    %{name: "__base__", type: {:struct, "FTzSharedTargetCharacterInfo"}},
    %{name: "Name", type: :FString},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"SeekHidingAttackTargetStateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "IsSeekHidingAttackTargetState", type: :unknown}
  ],

"CovenantDiplomacyWithdrawAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ExpeditionJoinedBattalionsAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "CovenantBattalionPublicSummaryInfo", type: {:nullable, :message}}
  ],

"PartyAppointLeaderFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"ProtocolCheckHandshakeResult" => [
    %{name: "__base__", type: {:struct, "HandshakeResult"}},
    %{name: "ClientHash", type: :unknown}
  ],

"CovenantUpdateNoticeFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"NameTagHealthBarDisplayOptionInfo" => [
    %{name: "IsOwnUniformDisplayedInStrongholdBattle", type: :unknown},
    %{name: "IsDisplayModeAutoSelect", type: :unknown},
    %{name: "DisplayMode", type: {:enum, "ETzNameTagHealthBarDisplayModeType"}},
    %{name: "DetailInfos", type: {:map, {:enum, "NameTagHealthBarDisplayModeType"}, {:struct, "TSharedPtr<FTzNameTagHealthBarDisplayOptionDetailInfo"}}},
    %{name: "NpcHealthBarDisplayScope", type: {:enum, "ETzNpcHealthBarDisplayScopeType"}},
    %{name: "IsAllNpcNamesDisplayed", type: :unknown},
    %{name: "IsDisplayedFissionStatusFriendlyOrBetter", type: :unknown}
  ],

"CovenantUpdateCovenantPermissionsInfosRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantPermissionsInfos", type: {:map, :string, {:struct, "TSharedPtr<FTzCovenantPermissionsInfo"}}}
  ],

"PlayerDeleteReserveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "ReservedDeleteDateTime", type: {:nullable, :FDateTime}}
  ],

"StrongholdBuildingUpdateBuildingAccessPermissionsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingAccessPermissionKinds", type: {:map, :cuid, {:enum, "BuildingAccessPermissionKindType"}}}
  ],

"PowerSavingModeEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"TeaseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatClearEquippedSpellstonesResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"TutorialCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"TimeTriggerWorldActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"ServerDrivenPlayAppCloseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatAcquireCovenantLeaderResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantDiplomacyConfirmAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeRecommendedResourceKindNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}}
  ],

"CovenantUpdateCovenantMemberRoleNameFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ReinforcementInfo" => [
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "IsInBattle", type: :unknown},
    %{name: "RewardCurrencies", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CreateDateTime", type: :FDateTime}
  ],

"PlayerBattalionOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "PurposeTexts", type: {:map, {:int, 4}, :string}}
  ],

"CheatUpdatePlayerMissionRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CovenantCampBuildingCraftCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingCraftCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantDiplomacyWithdrawHostilityNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"DestroyerEnterDistrictNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
  ],

"NpcOccupationScoreCovenantInfo" => [
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "MemberCounts", type: {:int, 4}},
    %{name: "OccupationScore", type: {:int, 4}},
    %{name: "FirstGainedScoreDateTime", type: :FDateTime}
  ],

"LimitedCountingInfo" => [
    %{name: "CountingValue", type: {:uint, 8}},
    %{name: "LastCountingDateTime", type: :FDateTime}
  ],

"CheatSpawnDoodadRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DoodadSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:int, 4}}
  ],

"CovenantGiftReceiveRewardInfo" => [
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"CovenantTradeGoodsGuidWithItemCuidInfo" => [
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CharacterMoveToInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveInfo"}},
    %{name: "CurrentFacingDirectionYaw_rad", type: :float},
    %{name: "MoveKind", type: {:enum, "ETzMoveKindType"}}
  ],

"CovenantTradeGoodsInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "ItemIndexWithCount", type: {:nullable, :message}},
    %{name: "SalesPrice", type: {:uint, 8}},
    %{name: "SellerInfo", type: {:nullable, :message}},
    %{name: "RegistrationDateTime", type: :FDateTime}
  ],

"CovenantOccupyStrongholdNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdInfo", type: {:nullable, {:struct, "FTzStrongholdInfo"}}}
  ],

"MailDeleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "ETzMailBoxKindType"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}}
  ],

"CheatSetArquiAttunementLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiAttunementCuid", type: {:struct, "FTzCuid"}},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"BoundAndErodedInheritanceBatchCraftResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}},
    %{name: "CraftResultInfos", type: {:list, {:struct, "CraftResultInfo"}}},
    %{name: "CraftCountInfo", type: {:nullable, {:struct, "FTzCraftCountInfo"}}}
  ],

"InstanceEventNpcActionStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzInstanceEventActionStartNotify"}},
    %{name: "NpcGuid", type: {:uint, 8}}
  ],

"ErLoginServerReauthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErLoginServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"BattalionConfirmInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}},
    %{name: "BattalionInvitationInfo", type: {:nullable, {:struct, "FTzBattalionInvitationInfo"}}},
    %{name: "BattalionInvitationAdditionalInfo", type: {:nullable, {:struct, "FTzBattalionInvitationAdditionalInfo"}}}
  ],

"CheatSetRealmAccountPresentRegisterBlockRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Block", type: :unknown}
  ],

"VolatileInGameNotificationInfo" => [
    %{name: "__base__", type: {:struct, "FTzInGameNotificationInfo"}}
  ],

"AutoBuyInfo" => [
    %{name: "GoodsCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:int, 4}}
  ],

"SeasonPassQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SeasonPassInfo", type: {:nullable, {:struct, "FTzSeasonPassInfo"}}},
    %{name: "SeasonPassAchievementInfos", type: {:list, {:struct, "SeasonPassAchievementInfo"}}}
  ],

"PvpRecordPlayerInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpRecordCharacterInfo"}},
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpScore", type: {:uint, 8}},
    %{name: "PvpScoreDelta", type: {:uint, 8}}
  ],

"BuildingCraftRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}},
    %{name: "BuildingCraftCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCraftCount", type: {:uint, 8}}
  ],

"CheatChangeCovenantLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"StrongholdBattleAttackStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "AttackEndDateTime", type: :FDateTime}
  ],

"CheatAttachBuffRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuffCuid", type: {:struct, "FTzCuid"}},
    %{name: "StackCount", type: {:int, 4}}
  ],

"CheatAcquireFollowerSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerSetCuid", type: {:struct, "FTzCuid"}},
    %{name: "CountPerEach", type: {:uint, 8}}
  ],

"QuestCancelRecordInfo" => [
    %{name: "Count", type: {:int, 4}},
    %{name: "LastCancelDateTime", type: :FDateTime}
  ],

"OccupiableNpcOccupationCovenantInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "NxLogBaseParameterInfo", type: {:nullable, :message}}
  ],

"CovenantRecommendResourceKindRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}}
  ],

"RedrawableItemSelectResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"RealmIntegrationSelectRealmAccountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "RealmAccountInfo", type: {:nullable, {:struct, "FTzRealmAccountInfo"}}},
    %{name: "PlayerSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerSummaryInfo"}}},
    %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
    %{name: "CanCheatCommand", type: :unknown},
    %{name: "RealmIntegrationRealmAccountInfos", type: {:list, {:struct, "RealmIntegrationRealmAccountInfo"}}}
  ],

"CheatMonsterBookSetFreeAnalysisCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "FreeAnalysisCount", type: {:uint, 8}}
  ],

"FindClosestLocationOnNavMeshRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CheatCastVeilResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantJoinedStrongholdBattleInfoAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "JoinedStrongholdBattleInfos", type: {:list, {:struct, "CovenantJoinedStrongholdBattleInfo"}}}
  ],

"CheatAcquireAllCovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ZlibCompressHandshakeMessage" => [
    %{name: "Level", type: {:int, 4}},
    %{name: "MinimumCompressibleLength", type: {:int, 4}}
  ],

"WarpReturnRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WarpHelperGuid", type: {:uint, 8}}
  ],

"CheatAddCovenantGiftLevelExperiencePointsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AddCovenantGiftLevelExperiencePoints", type: {:uint, 8}}
  ],

"CovenantDiplomacyRejectAllianceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatApplyCollectionSetFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PvpBattleCovenantInfo" => [
    %{name: "PvpBattleCovenantId", type: {:struct, "FTzPvpBattleCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"CheatChangeSeasonPassLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}}
  ],

"StrongholdBattleGroupInfo" => [
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantCreateDateTime", type: :FDateTime},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "AetherBoxCount", type: {:int, 4}},
    %{name: "MaxAetherBoxCount", type: {:int, 4}},
    %{name: "TacticalSkillBadgeCount", type: {:int, 4}},
    %{name: "MaxTacticalSkillBadgeCount", type: {:int, 4}},
    %{name: "NextResurrectTime", type: :FDateTime},
    %{name: "MemberCount", type: {:int, 4}},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "LivingTotemCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantUpdateNameNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantName", type: :FString},
    %{name: "NeedChangeName", type: :unknown}
  ],

"SkillShieldWallAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillAffectInfo"}},
    %{name: "AffectTargetGuid", type: {:uint, 8}},
    %{name: "AffectSourceGuid", type: {:uint, 8}},
    %{name: "ShieldWallGuid", type: {:uint, 8}},
    %{name: "OriginalAffectTargetGuid", type: {:uint, 8}},
    %{name: "IsHit", type: :unknown},
    %{name: "IsAffectingTargetStats", type: :unknown}
  ],

"CheatAddRegionContentBasePlayTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantItemDeleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}}
  ],

"CheatRankingBuffApplySwitchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsApplied", type: :unknown}
  ],

"HavenEventRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "HavenEventCuid", type: {:struct, "FTzCuid"}}
  ],

"RankingQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}},
    %{name: "RoundNumber", type: {:nullable, {:int, 4}}},
    %{name: "RankingUpperBound", type: {:int, 4}},
    %{name: "RankingLowerBound", type: {:int, 4}}
  ],

"CovenantJoinAtFrontNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleInfo", type: {:nullable, :message}}
  ],

"CovenantDiplomacyDeclareHostilityFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FinishableSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "FinishableExpireDateTime", type: {:nullable, :FDateTime}}
  ],

"CovenantDiplomacyCancelAllianceApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CovenantWorldMapMarkerAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "WorldMapMarkerInfo", type: {:nullable, {:struct, "FTzWorldMapMarkerInfo"}}}
  ],

"StrongholdBattleSiegeWeaponLocationInfo" => [
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"ClanSelectionQuestAcceptRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestCuid", type: {:struct, "FTzCuid"}}
  ],

"BattalionMemberInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "FTzBattalionMemberCoreInfo"}}},
    %{name: "AdditionalInfo", type: {:nullable, {:struct, "FTzBattalionMemberAdditionalInfo"}}}
  ],

"NpcOccupationViewInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcOccupationViewInfo", type: {:nullable, {:struct, "FTzNpcOccupationViewInfo"}}}
  ],

"CombinedInventoryUpdateInfo" => [
    %{name: "InventoryUpdateInfosByInventoryKind", type: {:map, {:enum, "UserInventoryKindType"}, {:struct, "TSharedPtr<FTzInventoryUpdateInfo"}}},
    %{name: "RedrawableInventoryUpdateInfosByItemCategory", type: {:map, {:enum, "ItemCategoryType"}, {:struct, "TSharedPtr<FTzRedrawableItemInventoryUpdateInfo"}}}
  ],

"RealmAccountLoginResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FrontServerConnectionInfo", type: {:nullable, {:struct, "FTzConnectionInfo"}}}
  ],

"CovenantUpdateOutLinkFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CrossRealmRankingQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}},
    %{name: "DateTime", type: {:nullable, :FDateTime}},
    %{name: "RankingInfos", type: {:list, {:struct, "RankingInfo"}}}
  ],

"CovenantCancelInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuids", type: {:list, {:uint, 8}}}
  ],

"FollowerExperiencePointsItemConsumeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MonsterBookNodeAcquirableStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzMonsterBookNodeStateInfo"}},
    %{name: "NpcCuidToKillCount", type: {:map, :cuid, {:int, 4}}}
  ],

"BattalionCreateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}}
  ],

"PlayerInterServerMigrationInfo" => [
    %{name: "SourceServerKey", type: {:int, 2}},
    %{name: "DestinationServerKey", type: {:int, 2}},
    %{name: "GameServerAuthenticateKey", type: {:int, 4}}
  ],

"CovenantTradeCustomerInfo" => [
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "LeadPlayerName", type: :FString}
  ],

"CheatDespawnBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmIntegrationQueryRealmAccountInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatSpawnStrongholdBuildingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdOccupancyInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantLevel", type: {:int, 4}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"CovenantSynchronizeJoinAppliedPlayerLevelChangedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Level", type: {:int, 4}}
  ],

"CheatChangeLastLevelForLevelUpNotifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerMissionRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "MissionRewardInfos", type: {:list, {:struct, "MissionRewardInfo"}}}
  ],

"CheatRemoveVeilResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"StrongholdBattleCombatLogNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CombatLogInfo", type: {:nullable, {:struct, "FTzCombatLogInfo"}}}
  ],

"CheatClearUserInventoryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UserInventoryKind", type: {:enum, "ETzUserInventoryKindType"}}
  ],

"EntitySpawnNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "EntityInfo", type: {:nullable, :message}},
    %{name: "EntitySpawnReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
  ],

"CovenantDiplomacyApplyAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"BattalionSwapFormationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SquadOrderA", type: {:int, 4}},
    %{name: "SquadMemberOrderA", type: {:int, 4}},
    %{name: "SquadOrderB", type: {:int, 4}},
    %{name: "SquadMemberOrderB", type: {:int, 4}}
  ],

"CheatUnlockAllContentsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"StrongholdBuildingCraftRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCraftCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCraftCount", type: {:uint, 8}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"CovenantLivingTotemInfo" => [
    %{name: "LivingTotemCuid", type: {:struct, "FTzCuid"}},
    %{name: "LivingTotemTier", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"CovenantCompleteCampaignNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CampaignGuid", type: {:uint, 8}},
    %{name: "CampaignCuid", type: {:struct, "FTzCuid"}},
    %{name: "CampaignStageCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsSuccess", type: :unknown},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}},
    %{name: "CampaignProgressDuration_sec", type: {:int, 4}}
  ],

"MarketManagementKey" => [
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "MarketKey", type: {:uint, 8}}
  ],

"CovenantGiftQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGiftInfo", type: {:nullable, {:struct, "FTzCovenantGiftInfo"}}},
    %{name: "LastCovenantGiftInfo", type: {:nullable, {:struct, "FTzCovenantGiftInfo"}}}
  ],

"CheatClearEquippedSpellstonesRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SystemCastAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzCastAffectSourceInfo"}},
    %{name: "AffectSourceSystemCastKind", type: {:enum, "ETzAffectSourceSystemCastKindType"}}
  ],

"CovenantQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"RankingSourceInfo" => [
    %{name: "Key", type: {:uint, 8}},
    %{name: "Score", type: {:uint, 8}},
    %{name: "AdditionalInfo", type: {:nullable, :message}},
    %{name: "UpdateTime", type: :FDateTime}
  ],

"StrongholdBattleBuildingCombatStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingKind", type: {:enum, "ETzBuildingKindType"}},
    %{name: "IsInCombatInProgressState", type: :unknown}
  ],

"CheatClearAllStanceAndSkillResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatCreateAndEquipGearRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "BoundAndEroded", type: {:enum, "ETzBoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "GearSlot", type: {:enum, "ETzGearSlotType"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "ETzEquipmentPresetIndexType"}}
  ],

"MarketGoodsInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketGoodsQueryInfo", type: {:nullable, {:struct, "FTzMarketGoodsQueryInfo"}}},
    %{name: "DateTime", type: {:nullable, :FDateTime}},
    %{name: "MarketGoodsInfos", type: {:list, {:struct, "MarketGoodsInfo"}}}
  ],

"ServerDrivenPlayRecordsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"StrongholdBattleCampaignFieldDisposingNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FieldDisposingDateTime", type: :FDateTime}
  ],

"CheatSummonPlayerNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "Location_cm", type: :FVector}
  ],

"EntitySynchronizeMessage" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"MonsterBookNodeAcquiredStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzMonsterBookNodeStateInfo"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "LastRewardedLevel", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "LastLevelUpDateTime", type: :FDateTime}
  ],

"BuildingWorkSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "FTzBuildingWorkInfo"}}}
  ],

"CheatUpdateAchievementMissionProgressCountsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FieldInitializeInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FieldInitializeInfo", type: {:nullable, {:struct, "FTzFieldInitializeInfo"}}}
  ],

"AnniversaryAchievementInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryAchievementInfos", type: {:list, {:struct, "AnniversaryAchievementInfo"}}}
  ],

"CharacterMoveToDirectionInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveToInfo"}},
    %{name: "DirectionYaw_rad", type: :float},
    %{name: "Destination_cm", type: :FVector}
  ],

"CovenantBattalionExpeditionJoinResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatRealmAccountRealmTransferInfoChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmTransferCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmTransferCount", type: {:int, 4}},
    %{name: "LastRealmTransferDateTime", type: {:nullable, :FDateTime}}
  ],

"RankingInfo" => [
    %{name: "PreviousRanking", type: {:nullable, {:int, 4}}},
    %{name: "CurrentRanking", type: {:nullable, {:int, 4}}},
    %{name: "ViewInfo", type: {:nullable, :message}}
  ],

"MailsDeleteInTabResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}}
  ],

"ProtocolConstants" => [
    %{name: "TozNetwork.Protocol.ProtocolConstants", type: :unknown}
  ],

"PlayerSlotExpandResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerSlotExpansionCostCurrencyAmount", type: {:uint, 8}},
    %{name: "AdditionalPlayerSlotCount", type: {:int, 4}}
  ],

"CheatSetHavenBuildingAndItemResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RegionContentPlayInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionPlayTimeInfos", type: {:map, {:enum, "RegionContentKindType"}, {:struct, "TSharedPtr<FTzRegionContentPlayInfo"}}}
  ],

"MarketBuyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ErChatServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerSessionInitializeInfo"}},
    %{name: "ChatEntityInfo", type: {:nullable, {:struct, "FTzChatEntityInfo"}}},
    %{name: "BlockedChatEntityInfos", type: {:list, {:struct, "BlockedChatEntityInfo"}}}
  ],

"CovenantSearchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Keyword", type: :FString}
  ],

"CheatStartCovenantCampaignRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CampaignStageCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsAllowVolunteerJoinApply", type: :unknown},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown}
  ],

"AlertPlayerRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeletedPlayerGuids", type: {:list, {:uint, 8}}}
  ],

"ItemUpdateInfo" => [
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "RemovedItemCuids", type: {:list, :cuid}}
  ],

"MountStateInfo" => [
    
  ],

"CrossRealmRankingQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}},
    %{name: "RankingUpperBound", type: {:int, 4}},
    %{name: "RankingLowerBound", type: {:int, 4}}
  ],

"StrongholdBattleActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"CheatInstallAllArquirunesResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "InstalledArquiruneCuids", type: {:list, :cuid}}
  ],

"DestroyerExpireNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CharacterRotateInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveInfo"}},
    %{name: "Duration_msec", type: {:int, 4}},
    %{name: "IsClockwise", type: :unknown},
    %{name: "MoveKind", type: {:enum, "ETzMoveKindType"}}
  ],

"CheatDeregisterCheatEnabledPlayerNameRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerName", type: :FString}
  ],

"StrongholdZoneAverageTaxInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyDeclareHostilityNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CovenantGiftBoxInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "MissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "MissionStep", type: {:int, 4}},
    %{name: "GiftBoxCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpireDateTime", type: :FDateTime},
    %{name: "SenderPlayerGuid", type: {:uint, 8}},
    %{name: "SenderPlayerName", type: :FString},
    %{name: "IsReceived", type: :unknown},
    %{name: "ReceiveRewardInfo", type: {:nullable, :message}}
  ],

"BuildingDemolishRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}}
  ],

"CheatClearDeathPenaltyRecordRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantWatchInfo" => [
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TotalKillCount", type: {:int, 4}},
    %{name: "CovenantWatchKillingInfos", type: {:list, {:struct, "CovenantWatchKillingInfo"}}},
    %{name: "CreateDateTime", type: :FDateTime}
  ],

"CovenantBattalionExpeditionDeployStopLivingTotemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatAttachBuffResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "BuffCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAnniversaryAchievementAccomplishRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}},
    %{name: "MissionProgressCounts", type: {:list, {:uint, 8}}}
  ],

"ErFrontServerSessionCancelWaitingQueueResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RectangleRange" => [
    %{name: "unknown_name", type: :FIntVector2D},
    %{name: "UpperIndex", type: :FIntVector2D}
  ],

"BattalionDismissRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"GearSlotPresetUnequipNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}}
  ],

"SpellstoneSlotPageInfo" => [
    %{name: "SpellstoneSlotInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzSpellstoneSlotInfo"}}}
  ],

"TutorialBeginRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantWatchDetailInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantWatchDetailInfos", type: {:list, {:struct, "CovenantWatchDetailInfo"}}}
  ],

"CheatChangeCashShopCheckBuyLimitOptionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsIgnoreToCheckBuyLimit", type: :unknown}
  ],

"CovenantCampChangeResultInfo" => [
    %{name: "SourceCovenantCampCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationCovenantCampCuid", type: {:struct, "FTzCuid"}},
    %{name: "MigratedHavenOperationInfo", type: {:nullable, {:struct, "FTzHavenOperationInfo"}}}
  ],

"AlertPlayerQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AlertPlayerInfos", type: {:list, {:struct, "AlertPlayerInfo"}}},
    %{name: "CrossRealmAlertPlayerInfos", type: {:list, {:struct, "AlertPlayerInfo"}}}
  ],

"CheatSetHavenBuildingAndItemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAddCovenantGiftSpecialGiftBoxPointsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AddSpecialGiftBoxPointsPoints", type: {:int, 4}}
  ],

"CheatDestroyPointsChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DestroyPoints", type: {:int, 4}},
    %{name: "PlayerName", type: :FString}
  ],

"CrossRealmCovenantSearchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSearchInfos", type: {:list, {:struct, "CovenantSearchInfo"}}}
  ],

"CheatSetIgnoreCovenantMarketUsableJoinElapsedTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "IgnoreCovenantMarketUsableJoinElapsedTime", type: :unknown}
  ],

"RealmAccountPresentCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PresentCode", type: :FString},
    %{name: "Password", type: :FString}
  ],

"CheatRealmIntegrationAddRealmAccountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatCovenantCreateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "FTzCovenantInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"PathNodeInfo" => [
    %{name: "PathNodeKind", type: {:enum, "ETzPathNodeKindType"}},
    %{name: "PolyFlag", type: {:int, 2}},
    %{name: "AreaKind", type: {:int, 2}},
    %{name: "Location_cm", type: :FVector}
  ],

"CheatOccupyStrongholdResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyWithdrawAllianceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"RealmAccountRealmTransferCheckInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmTransferInfo", type: {:nullable, :message}},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmTransferCheckInfo"}}},
    %{name: "CanOutboundRealmTransferable", type: {:enum, "ETzResultCodeType"}}
  ],

"WorldMapPvpBattlePlayerInfoAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "PvpBattlePlayerInfo", type: {:nullable, :message}}
  ],

"PlayerDeleteReserveCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"HavenEventApplyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "HavenEventInfo", type: {:nullable, :message}}
  ],

"FollowerSquadSlotExpandResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"CovenantRegisteredGoodsModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ModifiedGoodsInfo", type: {:nullable, {:struct, "FTzRegisteredGoodsInfo"}}}
  ],

"ThreadMailDeleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailKind", type: {:enum, "ETzMailKindType"}},
    %{name: "UpperBoundDateTime", type: :FDateTime}
  ],

"CovenantUpdateNoticeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Notice", type: :FString}
  ],

"StrongholdBattleSiegeWeaponDestroyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "EntityCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestroyerNameInfo", type: {:nullable, {:struct, "FTzCharacterNameInfo"}}},
    %{name: "DestroyerCovenantName", type: :FString}
  ],

"RoadLinkInfo" => [
    %{name: "DestinationRoadJunctionId", type: {:int, 4}},
    %{name: "IsOneShotSpecialMove", type: :unknown},
    %{name: "LinkedCuidHashCode", type: {:int, 4}}
  ],

"PlayerHarmfulTextOnChatViolationInfo" => [
    %{name: "ViolationCount", type: {:int, 4}},
    %{name: "BlockPostEndTime", type: {:nullable, :FDateTime}}
  ],

"PartyBanishMemberRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatServerDrivenPlayResupplyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BossSpawnInfo" => [
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpawnDateTime", type: {:nullable, :FDateTime}},
    %{name: "ForceDespawnDateTime", type: {:nullable, :FDateTime}}
  ],

"RealmAccountWarehouseInfo" => [
    %{name: "InventoryInfo", type: {:nullable, {:struct, "FTzInventoryInfo"}}},
    %{name: "AdditionalSlotCount", type: {:int, 4}}
  ],

"ManaPointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ManaPoints", type: {:uint, 8}}
  ],

"FindPathResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToStartLocationId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToDestinationId", type: {:int, 4}},
    %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "PathNotByRoad", type: {:list, :vector}},
    %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:int, 4}}}
  ],

"PlayerSkillSlotUpdateInfo" => [
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "SkillSlotIndex", type: {:enum, "ETzPlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "FTzPlayerSkillSlotInfo"}}}
  ],

"StrongholdBattleBuildingStateInfo" => [
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "MaxHealthPoints", type: {:uint, 8}},
    %{name: "HealthPoints", type: {:uint, 8}},
    %{name: "FieldUid", type: {:struct, "FTzFieldUid"}}
  ],

"SpecialMovePointsExhaustionAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAffectSourceInfo"}}
  ],

"CovenantUpdateMemberRoleNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :FString},
    %{name: "CovenantMemberRoleLastUpdatedDateTime", type: :FDateTime}
  ],

"CheatAcquireAndSetToSquadFollowerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"QuestTeleportToQuestWayPointRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestMissionCuid", type: {:struct, "FTzCuid"}}
  ],

"SpellstoneUnequipRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpellstoneGuid", type: {:uint, 8}}
  ],

"CovenantQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"CheatStartOccupiableNpcBossBattleRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "BossMatchGroup", type: {:int, 4}}
  ],

"PartyInviteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "FTzRealmPlayerId"}}
  ],

"CovenantSynchronizeForbiddenAetherBoxCountUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}}
  ],

"RealmAccountWarehouseAutoStoreSettingUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AutoStoreSettings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"RealmAccountPresentQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmAccountPresentInfos", type: {:list, {:struct, "RealmAccountPresentSummaryInfo"}}}
  ],

"PubSubChannelUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelDataNotify"}}
  ],

"CrossRealmPvpRankingAdditionalSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpRankingAdditionalSourceInfo"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatClearCovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ResourceHistoryInfo" => [
    %{name: "IncomeHistories", type: {:map, {:enum, "ResourceKindType"}, {:uint, 8}}},
    %{name: "ExpenseHistories", type: {:map, {:enum, "ResourceKindType"}, {:struct, "TMap<ETzResourceExpenseKindType"}}}
  ],

"FavoriteStatKindsResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StatView", type: {:enum, "ETzAdjustableStatViewType"}}
  ],

"CheatCreateCovenantWarehouseItemResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}}
  ],

"GoodsBuyCountsInfo" => [
    %{name: "GoodsBuyCounts", type: {:map, {:enum, "BuyOrCraftLimitLevelType"}, {:struct, "TMap<FTzCuid"}}},
    %{name: "RegisteredGoodsBuyCounts", type: {:map, {:enum, "BuyOrCraftLimitLevelType"}, {:struct, "TMap<FTzRegisteredGoodsBuyCountKey"}}}
  ],

"StrongholdReserveProtectionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CharacterMoveOrbitalToLocationParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveToLocationParameterInfo"}},
    %{name: "IsClockwise", type: :unknown}
  ],

"CheatAccountAffectAttachRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AccountAffectCuid", type: {:struct, "FTzCuid"}}
  ],

"FollowerTeleportToHeadquartersNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerReturnReason", type: {:enum, "ETzFollowerReturnReasonType"}},
    %{name: "LeaveToHeadquartersDateTime", type: :FDateTime},
    %{name: "ArrivedAtHeadquartersDateTime", type: :FDateTime}
  ],

"QuestAcceptFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}}
  ],

"RewardCurrencyInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Amount", type: {:uint, 8}}
  ],

"CovenantWatchKillingInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "LastUpdateDateTime", type: :FDateTime}
  ],

"WarehouseMigrationInfo" => [
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"UpdateLastViewedChatRecordsIndexRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatRecordsIndices", type: {:list, {:struct, "ChatRecordsIndex"}}}
  ],

"CheatClearSeasonPassLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"EnvironmentVariablesNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Variables", type: {:map, :string, :string}}
  ],

"ChatRecordsIndex" => [
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChannelIndex", type: {:int, 2}},
    %{name: "RecordsIndex", type: {:uint, 8}}
  ],

"TerritoryErosionItemConfigurationQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveResetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}}
  ],

"PaidAttendanceBuyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAddServerTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Time_msec", type: {:uint, 8}}
  ],

"NavMeshTileInfo" => [
    %{name: "RowIndex", type: {:int, 4}},
    %{name: "ColumnIndex", type: {:int, 4}},
    %{name: "LayerInfos", type: {:list, {:struct, "NavMeshTileLayerInfo"}}}
  ],

"CheatResetAllAetherOptionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"HandCustomizeInfo" => [
    %{name: "HandBase", type: :FVector},
    %{name: "Thumb", type: {:nullable, {:struct, "FTzFingerCustomizeInfo"}}},
    %{name: "IndexFinger", type: {:nullable, {:struct, "FTzFingerCustomizeInfo"}}},
    %{name: "MiddleFinger", type: {:nullable, {:struct, "FTzFingerCustomizeInfo"}}},
    %{name: "RingFinger", type: {:nullable, {:struct, "FTzFingerCustomizeInfo"}}},
    %{name: "PinkyFinger", type: {:nullable, {:struct, "FTzFingerCustomizeInfo"}}}
  ],

"StrongholdZoneAverageTaxInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AverageTaxInfo", type: {:nullable, {:struct, "FTzZoneTaxInfo"}}}
  ],

"MailQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "Mails", type: {:list, {:struct, "MailInfo"}}},
    %{name: "HasMore", type: :unknown}
  ],

"CheatClearSkillSlotQuickSlotAutoUseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatAcquireFollowerSetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleAttackResourceInfo" => [
    %{name: "BattleDuration_min", type: {:int, 4}},
    %{name: "AetherBoxCount", type: {:uint, 8}},
    %{name: "TacticalSkillBadgeCount", type: {:uint, 8}},
    %{name: "SiegeWeaponCounts", type: {:map, :cuid, {:uint, 8}}}
  ],

"AnniversaryAchievementPointRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AnniversaryAchievementPointInfo", type: {:nullable, {:struct, "FTzAnniversaryAchievementPointInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CovenantSynchronizeMemberRefreshedContributionInfosNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberContributionInfos", type: {:list, {:struct, "CovenantMemberContributionInfo"}}}
  ],

"CovenantAppointLeaderNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "OldCovenantLeaderGuid", type: {:uint, 8}},
    %{name: "NewCovenantLeaderGuid", type: {:uint, 8}}
  ],

"GameNotificationOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GameNotificationOptionInfo", type: {:nullable, {:struct, "FTzGameNotificationOptionInfo"}}}
  ],

"SeasonPassLevelRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CheatClearDeathPenaltyRecordResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleGroupMemberCountChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "MemberCount", type: {:int, 4}}
  ],

"CollectionPhaseProgressNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "RewardStatCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantWatchSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetPlayerGuidToCreateDateTimes", type: {:map, {:uint, 8}, :datetime}}
  ],

"FindShortestTravelPathToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :FVector},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"ShopSellRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"CovenantLeaderDividendResultInfo" => [
    %{name: "__base__", type: {:struct, "FTzDividendResultInfo"}}
  ],

"RedrawableItemRedrawResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "UpdatedRedrawableItemInfo", type: {:nullable, {:struct, "FTzRedrawableItemInfo"}}}
  ],

"CrossRealmAlertPlayerRegisterInfo" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "RegisteredDateTime", type: :FDateTime}
  ],

"CovenantSummaryInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfo", type: {:nullable, {:struct, "FTzCovenantSummaryInfo"}}}
  ],

"LastDeathRecordDeleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionCheckReadyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CharacterRotateTowardsLocationInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterRotateInfo"}},
    %{name: "TargetLocation_cm", type: :FVector}
  ],

"MailSendResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PersonalMailSendCount", type: {:int, 4}},
    %{name: "CovenantMailSendCount", type: {:int, 4}},
    %{name: "SendCountUpdateDateTime", type: :FDateTime},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CovenantSearchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSearchInfos", type: {:list, {:struct, "CovenantSearchInfo"}}}
  ],

"CheatOpenSeasonPassAchievementsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FavorMissionInfo" => [
    %{name: "Vuid", type: {:struct, "FTzVuid"}},
    %{name: "FavorVuid", type: {:struct, "FTzVuid"}},
    %{name: "HuntingSiteCuidList", type: {:list, :cuid}},
    %{name: "TargetCuidList", type: {:list, :cuid}},
    %{name: "LevelOfTargetNpc", type: {:int, 4}},
    %{name: "ClanCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatInstallArquiruneResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantRejectJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AnniversaryStrongholdOccupationRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AnniversaryStrongholdOccupationRecordInfo", type: {:nullable, {:struct, "FTzAnniversaryStrongholdOccupationRecordInfo"}}}
  ],

"DropParameter" => [
    %{name: "__base__", type: {:struct, "FTzAcquireSourceAdditionalParameter"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantReturnHavenChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantReturnHavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatCheckServerTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "NowServerTime", type: :FString}
  ],

"CovenantUpdateEmblemInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantEmblemSelectionInfo", type: {:nullable, {:struct, "FTzCovenantEmblemSelectionInfo"}}}
  ],

"FindRegionCrossablePathToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :FVector},
    %{name: "LocationRegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"ErGameServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerSessionInitializeInfo"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CovenantTradeSalesManageResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SalesManagementKind", type: {:enum, "ETzCovenantTradeSalesManagementKindType"}},
    %{name: "GoodsGuidsAndResultCodes", type: {:map, {:uint, 8}, {:enum, "ResultCodeType"}}}
  ],

"CheatChangeFocusTargetHealthPointsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"TozPing" => [
    %{name: "Nonce", type: {:int, 4}},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"StrongholdBuildingUpgradeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerEquipmentInfo" => [
    %{name: "SelectedEquipmentPresetIndex", type: {:enum, "ETzEquipmentPresetIndexType"}},
    %{name: "EquipmentPresetInfos", type: {:map, {:enum, "EquipmentPresetIndexType"}, {:struct, "TSharedPtr<FTzEquipmentPresetInfo"}}},
    %{name: "HasPreviouslyEquippedGuise", type: :unknown}
  ],

"BuffFaceCasterMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuffMoveAffectInfo"}},
    %{name: "FaceDirection", type: :FVector}
  ],

"CheatTeleportFollowerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RedrawableItemRedrawRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CostCurrencyCuid", type: {:struct, "FTzCuid"}}
  ],

"CharacterRotateTowardsEntityInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterRotateTowardsLocationInfo"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"MailStrongholdBattleEndRewardLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailStrongholdBattleLayoutInfo"}},
    %{name: "StrongholdBattleResult", type: {:enum, "ETzStrongholdBattleResultType"}},
    %{name: "Rank", type: {:int, 4}},
    %{name: "GainedCovenantExperiencePoints", type: {:uint, 8}}
  ],

"DeleteFromChatBlockListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ErosionInstalledWithoutPermissionAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ErosionInfos", type: {:list, {:struct, "ErosionInfo"}}}
  ],

"DeathPenaltyRecordInfoChangedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GuidToChangedRecordKinds", type: {:map, {:uint, 8}, {:enum, "DeathPenaltyRecordKindType"}}}
  ],

"RoadJunctionInfo" => [
    %{name: "Id", type: {:int, 4}},
    %{name: "Location_cm", type: :FVector},
    %{name: "Radius_cm", type: :float},
    %{name: "AreaCuidHashCode", type: {:int, 4}},
    %{name: "DistrictCuidHashCode", type: {:int, 4}}
  ],

"PushNotificationOptionInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "IsEnabled", type: :unknown},
    %{name: "IsNotifiedEvenWhenConnected", type: :unknown}
  ],

"OccupiableNpcInfoBulkUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "OccupiableNpcInfos", type: {:list, {:struct, "OccupiableNpcInfo"}}},
    %{name: "NxLogBaseParameterInfo", type: {:nullable, :message}}
  ],

"CheatRegisterCheatEnabledPlayerNameResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CheatEnabledPlayerNames", type: :unknown}
  ],

"CharacterThreatListAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ThreateningCharacterGuid", type: {:uint, 8}}
  ],

"TeaseMessageRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TeaseMessage", type: :FString}
  ],

"ItemInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemInfo", type: {:nullable, :message}}
  ],

"CheatDeleteChatCovenantRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CheatResetContentsUnlockRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RealmAccountOptionInfo" => [
    %{name: "PushNotificationOptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzPushNotificationOptionInfo"}}}
  ],

"QuestTeleportToReentryLocationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestMissionCuid", type: {:struct, "FTzCuid"}}
  ],

"DestroyerBecomeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"BattalionInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "BattalionInfo", type: {:nullable, {:struct, "FTzAffiliatedBattalionInfo"}}}
  ],

"CheatTeleportToSpawnerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Radius_cm", type: :float}
  ],

"PartyCreateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "FTzPartyOptionInfo"}}}
  ],

"CheatAccomplishAllFavorRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantInvitationInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "InviterGuid", type: {:uint, 8}},
    %{name: "InviterName", type: :FString},
    %{name: "InviteDateTime", type: :FDateTime}
  ],

"CheatUnOccupyOccupiableNpcRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"MailFollowerWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "GainedCovenantExperiencePoints", type: {:uint, 8}},
    %{name: "GainedFollowerExperiencePoints", type: {:uint, 8}}
  ],

"CheatChangeSpiritualBondPowerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"MarketGoodsInfo" => [
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "SellPlayerName", type: :FString},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsStorable", type: :unknown},
    %{name: "ItemAdditionalInfo", type: {:nullable, :message}},
    %{name: "ItemStackCount", type: {:int, 4}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyAmount", type: {:uint, 8}},
    %{name: "ExpireDateTime", type: :FDateTime},
    %{name: "Index", type: {:nullable, {:int, 4}}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"CovenantBattalionExpeditionLivingTotemDepartureRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"AnniversaryRecordHistoryQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryRecordCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantCampBuildingCraftCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BuildingCraftCountAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementSourceInfo"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"KickCovenantsFromDiplomacyChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CovenantGuids", type: {:list, {:uint, 8}}}
  ],

"CheatResetGoodsBuyCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PlayerSkillSlotUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "PlayerSkillSlotIndex", type: {:enum, "ETzPlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "FTzPlayerSkillSlotInfo"}}}
  ],

"TutorialStepForwardFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}},
    %{name: "PreviousStepNumber", type: {:int, 4}}
  ],

"CheatCreateAndEquipGearResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "EquipmentPresetIndex", type: {:enum, "ETzEquipmentPresetIndexType"}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "FTzPlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}}
  ],

"ArquiruneDeactivateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"ServerDrivenPlayEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RemainingDailyDuration_sec", type: {:int, 4}},
    %{name: "EndedState", type: {:enum, "ETzServerDrivenPlayState"}},
    %{name: "EndReason", type: {:enum, "ETzServerDrivenPlayEndReasonType"}}
  ],

"OccupiableNpcSummaryInfo" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :FDateTime}},
    %{name: "IsRandomBuffNpc", type: :unknown},
    %{name: "OccupationState", type: {:enum, "ETzNpcOccupationStateType"}}
  ],

"DeathPenaltyDeleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "DeletedDeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"CheatResurrectAllFollowerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantUpdateOutLinkNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantOutLinkInfo", type: {:nullable, {:struct, "FTzCovenantOutLinkInfo"}}}
  ],

"EquipmentPresetSelectRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "ETzEquipmentPresetIndexType"}}
  ],

"AnniversaryStrongholdOccupationCovenantInfo" => [
    %{name: "OccupyingCovenantInfo", type: {:nullable, :message}},
    %{name: "OccupationDateTime", type: :FDateTime},
    %{name: "IsOccupyAltarPhaseInProgress", type: :unknown},
    %{name: "AttackGroupInfos", type: {:list, {:struct, "CovenantDisplayInfo"}}}
  ],

"ThreadMailDeleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailKind", type: {:enum, "ETzMailKindType"}}
  ],

"QuestTeleportToReentryLocationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MountRendezvousInfo" => [
    %{name: "__base__", type: {:struct, "FTzMountStateInfo"}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "MountSpawnLocation_cm", type: :FVector},
    %{name: "IsLeftBoarding", type: :unknown},
    %{name: "MountBoardingLocation_cm", type: :FVector},
    %{name: "PlayerBoardingLocation_cm", type: :FVector},
    %{name: "RendezvousLocation_cm", type: :FVector},
    %{name: "RendezvousStartDateTime", type: :FDateTime},
    %{name: "BoardingDateTime", type: :FDateTime},
    %{name: "PlayerRunSpeedBeforeBoarded_cmpmsec", type: :float},
    %{name: "IsImmediateBoarding", type: :unknown},
    %{name: "IsMovingBoarding", type: :unknown}
  ],

"CheatDistributeStrongholdMarketTaxRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyRejectAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CovenantSupportInfoChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HasCovenantSupportableFollower", type: :unknown}
  ],

"StrongholdBattleStatisticsDeadEventInfo" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleStatisticsEventInfo"}},
    %{name: "KillerGuid", type: {:uint, 8}}
  ],

"StanceSwitchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}}
  ],

"CheatTeleportToPlayerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString},
    %{name: "Radius_cm", type: :float}
  ],

"CheatStartCovenantCampaignResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatResetAetherOptionByCategoryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}}
  ],

"SeasonPassAchievementRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}}
  ],

"SessionKickNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "BanInfo", type: {:nullable, :message}}
  ],

"TutorialCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"FollowerDispatchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"QueryChatRecordsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "RecordsBeginIndex", type: {:uint, 8}},
    %{name: "RecordsEndIndex", type: {:uint, 8}},
    %{name: "FirstRecordIndex", type: {:uint, 8}},
    %{name: "LastRecordIndex", type: {:uint, 8}},
    %{name: "ChatMessageInfos", type: {:list, {:struct, "ChatMessageInfo"}}}
  ],

"StrongholdBattleStatisticsEventInfo" => [
    %{name: "EventInvokerCharacterGuid", type: {:uint, 8}}
  ],

"MailDeleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailGuid", type: {:uint, 8}}
  ],

"SeasonPassQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MapFogOpenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FogCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBattleJoinedCovenantHistoryInfo" => [
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "CovenantName", type: :FString},
    %{name: "JoinedDateTime", type: :FDateTime},
    %{name: "IsDismissed", type: :unknown},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"ItemTransmuteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "ItemGuids", type: {:list, {:uint, 8}}}
  ],

"BattalionLeaderChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BaseGameOptionInfo" => [
    
  ],

"MarketSellReregisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegistrationFeeCurrencyInfoByGoodsGuid", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCuidAndCountInfo"}}}
  ],

"CspSupporterInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdBuildingDemolishRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"CheatOccupyOccupiableNpcRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmAccountWarehouseUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmAccountWarehouseInventoryUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}}
  ],

"CheatSummonPlayerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString}
  ],

"MailCovenantDiaDividendLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "DividendAmount", type: {:uint, 8}}
  ],

"FieldMigrationReadyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatCloseAllFogRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RealmAccountIntegrationInfo" => [
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "PreviousRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrentRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmTransferDateTime", type: :FDateTime},
    %{name: "HidePopup", type: :unknown},
    %{name: "Deleted", type: :unknown}
  ],

"QuestMissionCompletableLocationCheckResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestMissionCuid", type: {:struct, "FTzCuid"}}
  ],

"CspSupporterInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Code", type: {:int, 4}},
    %{name: "Message", type: :FString},
    %{name: "CspSupporterInfo", type: {:nullable, {:struct, "FTzCspSupporterInfo"}}}
  ],

"CheatClearRealmIntegrationBattleAllScoreRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SummonedNpcExpireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatOpenFogResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FogCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatFinishFollowerWorkRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AdditionalWorkAmount_w", type: {:int, 4}},
    %{name: "PlayerName", type: :FString}
  ],

"BuildingSubscriptionInfo" => [
    %{name: "BuildingGuid", type: {:uint, 8}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "HealthPoints", type: {:uint, 8}},
    %{name: "MaxHealthPoints", type: {:uint, 8}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "FTzBuildingWorkInfo"}}},
    %{name: "BuildingAccessPermissionKind", type: {:enum, "ETzBuildingAccessPermissionKindType"}},
    %{name: "LastChangeDateTime", type: :FDateTime}
  ],

"StrongholdBattleAttackEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}}
  ],

"CovenantMarkerNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarkerKind", type: {:enum, "ETzCovenantMarkerKindType"}}
  ],

"BattalionSwapFormationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrderA", type: {:int, 4}},
    %{name: "SquadMemberOrderA", type: {:int, 4}},
    %{name: "SquadOrderB", type: {:int, 4}},
    %{name: "SquadMemberOrderB", type: {:int, 4}}
  ],

"StackableItemMultipleUseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "FTzItemGuidSelector"}}},
    %{name: "ParameterInfo", type: {:nullable, :message}}
  ],

"BattalionConfirmJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "IsConfirmJoinApplication", type: :unknown}
  ],

"CheatUnlockAllContentsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "UnusedContentsUnlockKinds", type: :unknown}
  ],

"CovenantDiplomacyWithdrawHostilityResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"AlertPlayerUnregisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "FTzRealmPlayerId"}}
  ],

"ErTozMessageWithResultCode" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ResultCode", type: {:enum, "ETzResultCodeType"}}
  ],

"CashShopRefundableMerchandiseStorageBoxInfo" => [
    %{name: "SlotInfos", type: {:list, {:struct, "CashShopRefundableMerchandiseStorageBoxSlotInfo"}}}
  ],

"PowerSavingModeEndRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"StrongholdBattleAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdBattleSummaryInfo", type: {:nullable, {:struct, "FTzStrongholdBattleSummaryInfo"}}}
  ],

"RankingQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}},
    %{name: "DateTime", type: {:nullable, :FDateTime}},
    %{name: "RankingInfos", type: {:list, {:struct, "RankingInfo"}}},
    %{name: "SelfRankingInfo", type: {:nullable, :message}}
  ],

"RsaPublicKeyNotify" => [
    %{name: "PublicKeyXmlString", type: :unknown}
  ],

"AnniversaryQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "AnniversaryInfos", type: {:list, {:struct, "AnniversaryInfo"}}},
    %{name: "AnniversaryPointAndRankingInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryPointAndRankingInfo"}}},
    %{name: "AnniversaryAchievementPointInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryAchievementPointInfo"}}}
  ],

"CovenantUpdateLastPlunderDeclaredDateTimeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LastPlunderDeclaredDateTime", type: :FDateTime}
  ],

"OccupiableNpcOccupationScoreUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "OccupationScore", type: {:int, 4}},
    %{name: "NpcOccupationScoreCovenantViewInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzNpcOccupationScoreCovenantViewInfo"}}}
  ],

"AnniversaryPointRankingRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryBeginDateTime", type: :FDateTime},
    %{name: "RankingUpperBound", type: {:int, 4}},
    %{name: "RankingLowerBound", type: {:int, 4}}
  ],

"OccupiableNpcInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "NpcOccupationViewInfo", type: {:nullable, {:struct, "FTzNpcOccupationViewInfo"}}}
  ],

"CheatCovenantRealmTransferBlockRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ApplyAll", type: :unknown},
    %{name: "CovenantRealmTransferStepString", type: :FString}
  ],

"FollowerSquadUpdateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"CovenantTradeCategoryQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "CategoryItemInfos", type: {:list, {:struct, "CovenantTradeCategoryItemInfo"}}}
  ],

"MarketSellSettleRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsGuids", type: :unknown}
  ],

"CheatUnsetStatResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatResetDiscoveredSelfieDoodadSpawnersRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SpawnLayerInfo" => [
    %{name: "SpawnLayerCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsActivated", type: :unknown},
    %{name: "LastActivatedDateTime", type: {:nullable, :FDateTime}},
    %{name: "LastDeactivatedDateTime", type: {:nullable, :FDateTime}}
  ],

"TerritoryBossActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"BattalionConfirmCheckReadyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MemberReadyKind", type: {:enum, "ETzBattalionMemberReadyKindType"}}
  ],

"ProtocolCheckRequest" => [
    %{name: "Hash", type: :unknown}
  ],

"CovenantBattalionExpeditionQueryNearestHavenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
  ],

"PartyTargetLocationSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CheatClearFollowerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CollectionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzFollowerCollectionInfo"}}}
  ],

"CheatCreateAndEquipGearSetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}}
  ],

"PartyInvitationInfo" => [
    %{name: "PartyName", type: :FString},
    %{name: "Purpose", type: {:enum, "ETzPartyPurposeType"}},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "InvitePlayerName", type: :FString},
    %{name: "PartyItemDistributionInfo", type: {:nullable, {:struct, "FTzPartyOrBattalionItemDistributionInfo"}}}
  ],

"MovePathInfo" => [
    %{name: "StartLocation", type: :FVector},
    %{name: "DestinationLocation", type: :FVector},
    %{name: "RoadJunctionIds", type: {:list, {:int, 4}}},
    %{name: "PathToFirstRoadJunction", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}}
  ],

"CovenantSupportQueryInfo" => [
    %{name: "BuildingWorkOrderInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzBuildingWorkOrderInfo"}}},
    %{name: "CovenantSupportInfos", type: {:list, {:struct, "CovenantSupportInfo"}}}
  ],

"CheatTeleportToHavenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAddRegionContentBasePlayTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionContentKind", type: {:enum, "ETzRegionContentKindType"}},
    %{name: "AddPlayTime_sec", type: {:int, 4}}
  ],

"ErFrontServerSessionInitializeInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmAccountInfo", type: {:nullable, {:struct, "FTzRealmAccountInfo"}}},
    %{name: "PlayerSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerSummaryInfo"}}},
    %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
    %{name: "CanCheatCommand", type: :unknown},
    %{name: "RealmIntegrationRealmAccountInfos", type: {:list, {:struct, "RealmIntegrationRealmAccountInfo"}}}
  ],

"CheatChangeActivationSpawnLayerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ConvenienceOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "HealthPointsPotionAutoUsageOptionInfo", type: {:nullable, {:struct, "FTzPotionAutoUsageOptionInfo"}}},
    %{name: "ManaPointsPotionAutoUsageOptionInfo", type: {:nullable, {:struct, "FTzPotionAutoUsageOptionInfo"}}},
    %{name: "AutoUseReplaceSpentItemPolicyOption", type: {:enum, "ETzAutoUseReplaceSpentItemPolicyType"}},
    %{name: "SkillAutoUseManaPointsRestrictOptionInfo", type: {:nullable, {:struct, "FTzSkillAutoUseManaPointsRestrictOptionInfo"}}},
    %{name: "PartyAutoCreationOnlyCovenantMemberOrFriend", type: :unknown},
    %{name: "PartyAutoCreationAutoApprovalJoinApplication", type: :unknown},
    %{name: "PartyInvitationAllowKind", type: {:enum, "ETzPartyInvitationAllowKindType"}},
    %{name: "CovenantInvitable", type: :unknown},
    %{name: "IsChatCurrencySpendWarned", type: :unknown},
    %{name: "SomaItemUsePopupDisplayOption", type: :unknown},
    %{name: "DeathPenaltyAutoRecoveryOption", type: :unknown},
    %{name: "PowerSavingModeAutoSwitchMinutes", type: {:int, 4}},
    %{name: "GearEnhancementErodeNotifyDisplayOption", type: :unknown},
    %{name: "GearEnhancementDestroyNotifyDisplayOption", type: :unknown},
    %{name: "ErodedRestoreScrollUseNotifyDisplayOption", type: :unknown},
    %{name: "NpcListAutoExpandAndCollapse", type: :unknown}
  ],

"MountItemChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBattleUpdateSiegeWeaponSlotNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "StrongholdBattleAttackSiegeWeaponSlotInfo", type: {:nullable, :message}}
  ],

"CheatUpdateAchievementMissionProgressCountsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}},
    %{name: "MissionProgressCounts", type: {:list, {:uint, 8}}}
  ],

"CovenantLivingTotemCraftRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "LivingTotemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpectedLivingTotemTier", type: {:int, 4}}
  ],

"QuickSlotPageUpdateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PartyQueryMemberCandidateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmPlayerName", type: {:nullable, {:struct, "FTzRealmPlayerName"}}},
    %{name: "PartyMemberCoreInfo", type: {:nullable, {:struct, "FTzPartyMemberCoreInfo"}}}
  ],

"CovenantSynchronizeLevelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"CovenantBattalionExpeditionLivingTotemArrivalNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DepartureHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "ArrivalSealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"AnniversaryInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryEndDateTime", type: :FDateTime},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryAchievementCycleEndDateTime", type: :FDateTime},
    %{name: "AnniversaryStrongholdOccupationCovenantInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryStrongholdOccupationCovenantInfo"}}}
  ],

"CovenantWarehouseSummaryUpdateInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "UpdatedItemInfos", type: {:map, :cuid, {:uint, 8}}},
    %{name: "RemovedItemCuids", type: {:list, :cuid}}
  ],

"CheatCovenantPayDividendRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DividendInfo", type: {:nullable, :message}}
  ],

"PartyJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "FTzPartyMemberInfo"}}}
  ],

"EqualDistributionDividendResultInfo" => [
    %{name: "__base__", type: {:struct, "FTzDividendResultInfo"}},
    %{name: "AmountPerMember", type: {:uint, 8}}
  ],

"CovenantMemberAnniversaryPointContributionInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantMemberAnniversaryPointInfo"}},
    %{name: "AnniversaryPointContribution", type: {:uint, 8}}
  ],

"CharacterPrivateStatsInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterStatsInfo"}},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "HealthPointsRegenerationOutOfCombatUnit", type: {:uint, 8}},
    %{name: "HealthPointsRegenerationInCombatUnit", type: {:uint, 8}},
    %{name: "ManaPoints", type: {:uint, 8}},
    %{name: "MaxManaPoints", type: {:uint, 8}},
    %{name: "ManaPointsRegenerationOutOfCombatUnit", type: {:uint, 8}},
    %{name: "ManaPointsRegenerationInCombatUnit", type: {:uint, 8}},
    %{name: "Potential", type: {:int, 4}},
    %{name: "OffensivePower", type: {:int, 4}},
    %{name: "AdditionalMeleeOffensivePower", type: {:int, 4}},
    %{name: "AdditionalRangedOffensivePower", type: {:int, 4}},
    %{name: "AdditionalMagicOffensivePower", type: {:int, 4}},
    %{name: "WeaponMinDamage", type: {:int, 4}},
    %{name: "WeaponMaxDamage", type: {:int, 4}},
    %{name: "Hit", type: {:int, 4}},
    %{name: "MeleeHit", type: {:int, 4}},
    %{name: "RangedHit", type: {:int, 4}},
    %{name: "MagicHit", type: {:int, 4}},
    %{name: "SkillHit", type: {:int, 4}},
    %{name: "StunHitRatio_pe4", type: {:int, 4}},
    %{name: "SilenceHitRatio_pe4", type: {:int, 4}},
    %{name: "BlindHitRatio_pe4", type: {:int, 4}},
    %{name: "OverlayDebuffHitRatio_pe4", type: {:int, 4}},
    %{name: "PierceRatio_pe4", type: {:int, 4}},
    %{name: "CriticalRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalWeaponDamageAmount", type: {:int, 4}},
    %{name: "AdditionalWeaponDamageRatio_pe4", type: {:int, 4}},
    %{name: "CriticalDamageIncreaseRatio_pe4", type: {:int, 4}},
    %{name: "SkillDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalMeleeDamageAmount", type: {:int, 4}},
    %{name: "AdditionalMeleeOffensivePowerRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalRangedDamageAmount", type: {:int, 4}},
    %{name: "AdditionalRangedOffensivePowerRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalMagicDamageAmount", type: {:int, 4}},
    %{name: "AdditionalMagicOffensivePowerRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalFireDamageAmount", type: {:int, 4}},
    %{name: "AdditionalFireDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalWaterDamageAmount", type: {:int, 4}},
    %{name: "AdditionalWaterDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalEarthDamageAmount", type: {:int, 4}},
    %{name: "AdditionalEarthDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalWindDamageAmount", type: {:int, 4}},
    %{name: "AdditionalWindDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalHolyDamageAmount", type: {:int, 4}},
    %{name: "AdditionalHolyDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalDarkDamageAmount", type: {:int, 4}},
    %{name: "AdditionalDarkDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalDivineDamageAmount", type: {:int, 4}},
    %{name: "AdditionalDivineDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalHumanoidDamageAmount", type: {:int, 4}},
    %{name: "AdditionalHumanoidDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalElvenDamageAmount", type: {:int, 4}},
    %{name: "AdditionalElvenDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalEntangledDamageAmount", type: {:int, 4}},
    %{name: "AdditionalEntangledDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalBeastDamageAmount", type: {:int, 4}},
    %{name: "AdditionalBeastDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalAbyssalDamageAmount", type: {:int, 4}},
    %{name: "AdditionalAbyssalDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalSiegeWeaponDamageAmount", type: {:int, 4}},
    %{name: "AdditionalSiegeWeaponDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalBossDamageAmount", type: {:int, 4}},
    %{name: "AdditionalBossDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalCriticalDamageAmount", type: {:int, 4}},
    %{name: "AdditionalDamageAmount", type: {:int, 4}},
    %{name: "PierceDamageAmount", type: {:int, 4}},
    %{name: "DefensivePower", type: {:int, 4}},
    %{name: "SkillDefensivePower", type: {:int, 4}},
    %{name: "Dodge", type: {:int, 4}},
    %{name: "MeleeDodge", type: {:int, 4}},
    %{name: "RangedDodge", type: {:int, 4}},
    %{name: "MagicDodge", type: {:int, 4}},
    %{name: "SkillDodge", type: {:int, 4}},
    %{name: "StunResistRatio_pe4", type: {:int, 4}},
    %{name: "SilenceResistRatio_pe4", type: {:int, 4}},
    %{name: "BlindResistRatio_pe4", type: {:int, 4}},
    %{name: "UniversalDebuffResistAmount", type: {:int, 4}},
    %{name: "OverlayDebuffResistRatio_pe4", type: {:int, 4}},
    %{name: "OverlayDebuffDecreaseRatio_pe4", type: {:int, 4}},
    %{name: "BlockRatio_pe4", type: {:int, 4}},
    %{name: "CriticalResistRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalWeaponDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalWeaponDamageRatio_pe4", type: {:int, 4}},
    %{name: "CriticalDamageReduceRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbSkillDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalMeleeDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalMeleeDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalRangedDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalRangedDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalMagicDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalMagicDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalFireDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalFireDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalWaterDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalWaterDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalEarthDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalEarthDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalWindDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalWindDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalHolyDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalHolyDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalDarkDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalDarkDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalCriticalDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAllKindOfDamageAmount", type: {:int, 4}},
    %{name: "IgnoreAbsorbAllKindOfDamageAmount", type: {:int, 4}},
    %{name: "BasicAttackSpeedIncrease", type: {:int, 4}},
    %{name: "NonBasicAttackSpeedIncrease", type: {:int, 4}},
    %{name: "SkillCooldownDurationDecreaseRatio_pe4", type: {:int, 4}},
    %{name: "SomaHit", type: {:int, 4}},
    %{name: "SomaSkillHit", type: {:int, 4}},
    %{name: "SomaMeleeHit", type: {:int, 4}},
    %{name: "SomaRangedHit", type: {:int, 4}},
    %{name: "SomaMagicHit", type: {:int, 4}},
    %{name: "SomaSkillDamageRatio_pe4", type: {:int, 4}},
    %{name: "SomaAdditionalCriticalDamageAmount", type: {:int, 4}},
    %{name: "SomaCriticalDamageIncreaseRatio_pe4", type: {:int, 4}},
    %{name: "SomaAdditionalBossDamageAmount", type: {:int, 4}},
    %{name: "SomaAdditionalBossDamageRatio_pe4", type: {:int, 4}},
    %{name: "SomaAdditionalMeleeDamageAmount", type: {:int, 4}},
    %{name: "SomaAdditionalMeleeOffensivePowerRatio_pe4", type: {:int, 4}},
    %{name: "SomaAdditionalRangedDamageAmount", type: {:int, 4}},
    %{name: "SomaAdditionalRangedOffensivePowerRatio_pe4", type: {:int, 4}},
    %{name: "SomaAdditionalMagicDamageAmount", type: {:int, 4}},
    %{name: "SomaAdditionalMagicOffensivePowerRatio_pe4", type: {:int, 4}},
    %{name: "SomaWeaponDamageAmount", type: {:int, 4}},
    %{name: "SomaWeaponDamageRatio_pe4", type: {:int, 4}},
    %{name: "SomaAdditionalDamageAmount", type: {:int, 4}},
    %{name: "SomaPvpDamageAmount", type: {:int, 4}},
    %{name: "SomaAdditionalPvpDamageRatio_pe4", type: {:int, 4}},
    %{name: "ExpeditionDamageRatio_pe4", type: {:int, 4}},
    %{name: "ExpeditionNormalHitIncreaseRatio_pe4", type: {:int, 4}},
    %{name: "ExpeditionSkillHitIncreaseRatio_pe4", type: {:int, 4}},
    %{name: "ExpeditionAbsorbAllKindOfDamageAmount", type: {:int, 4}},
    %{name: "ImmobilizeHitRatio_pe4", type: {:int, 4}},
    %{name: "ImmobilizeResistRatio_pe4", type: {:int, 4}},
    %{name: "DownHitRatio_pe4", type: {:int, 4}},
    %{name: "DownResistRatio_pe4", type: {:int, 4}},
    %{name: "SleepHitRatio_pe4", type: {:int, 4}},
    %{name: "SleepResistRatio_pe4", type: {:int, 4}},
    %{name: "FreezingHitRatio_pe4", type: {:int, 4}},
    %{name: "FreezingResistRatio_pe4", type: {:int, 4}},
    %{name: "DisengageHitRatio_pe4", type: {:int, 4}},
    %{name: "TauntResistRatio_pe4", type: {:int, 4}},
    %{name: "TauntHitRatio_pe4", type: {:int, 4}},
    %{name: "DisengageResistRatio_pe4", type: {:int, 4}},
    %{name: "CrowdControlDurationIncreaseAmount", type: {:int, 4}},
    %{name: "CrowdControlDurationDecreaseAmount", type: {:int, 4}},
    %{name: "DebuffDurationIncreaseAmount", type: {:int, 4}},
    %{name: "DebuffDurationDecreaseAmount", type: {:int, 4}},
    %{name: "AdditionalStunDamageAmount", type: {:int, 4}},
    %{name: "AdditionalSilenceDamageAmount", type: {:int, 4}},
    %{name: "AdditionalImmobilizeDamageAmount", type: {:int, 4}},
    %{name: "AdditionalDownDamageAmount", type: {:int, 4}},
    %{name: "AdditionalDamagePeriodicDamageAmount", type: {:int, 4}},
    %{name: "AdditionalBlindDamageAmount", type: {:int, 4}},
    %{name: "AdditionalFreezingDamageAmount", type: {:int, 4}},
    %{name: "AdditionalBuildingDamageAmount", type: {:int, 4}},
    %{name: "TotalNormalHitRatio_pe4", type: {:int, 4}},
    %{name: "TotalNormalDodgeRatio_pe4", type: {:int, 4}},
    %{name: "TotalSkillHitRatio_pe4", type: {:int, 4}},
    %{name: "TotalSkillDodgeRatio_pe4", type: {:int, 4}},
    %{name: "TotalAdditionalDamageRatio_pe4", type: {:int, 4}},
    %{name: "TotalAbsorbDamageRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalNonBossNpcDamageAmount", type: {:int, 4}},
    %{name: "AdditionalNonBossNpcDamageRatio_pe4", type: {:int, 4}},
    %{name: "NonBossNpcHit", type: {:int, 4}},
    %{name: "NonBossNpcDodge", type: {:int, 4}},
    %{name: "KnockbackHitRatio_pe4", type: {:int, 4}},
    %{name: "KnockbackResistRatio_pe4", type: {:int, 4}},
    %{name: "PullHitRatio_pe4", type: {:int, 4}},
    %{name: "PullResistRatio_pe4", type: {:int, 4}},
    %{name: "HitImmobilizeHitRatio_pe4", type: {:int, 4}},
    %{name: "HitImmobilizeResistRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbPeriodicLossRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalPvpDamageAmount", type: {:int, 4}},
    %{name: "AdditionalPvpDamageRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbAdditionalPvpDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalPvpDamageRatio_pe4", type: {:int, 4}},
    %{name: "PvpHit", type: {:int, 4}},
    %{name: "PvpDodge", type: {:int, 4}},
    %{name: "AdditionalNonBossNpcOffensivePower", type: {:int, 4}},
    %{name: "AdditionalBossOffensivePower", type: {:int, 4}},
    %{name: "AdditionalNonBossNpcDefensivePower", type: {:int, 4}},
    %{name: "AdditionalBossDefensivePower", type: {:int, 4}},
    %{name: "AbsorbAdditionalNonBossNpcDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalBossDamageAmount", type: {:int, 4}},
    %{name: "AbsorbAdditionalMeleeOffensivePower", type: {:int, 4}},
    %{name: "AbsorbAdditionalRangedOffensivePower", type: {:int, 4}},
    %{name: "AbsorbAdditionalMagicOffensivePower", type: {:int, 4}},
    %{name: "AdditionalMeleeDefensivePower", type: {:int, 4}},
    %{name: "AdditionalRangedDefensivePower", type: {:int, 4}},
    %{name: "AdditionalMagicDefensivePower", type: {:int, 4}},
    %{name: "AdditionalHealTargetPowerRatio_pe4", type: {:int, 4}},
    %{name: "AbsorbBlockDamageAmount", type: {:int, 4}},
    %{name: "AdditionalMeleeTargetOffensivePower", type: {:int, 4}},
    %{name: "AdditionalRangedTargetOffensivePower", type: {:int, 4}},
    %{name: "AdditionalMagicTargetOffensivePower", type: {:int, 4}},
    %{name: "GlancingBlowHit", type: {:int, 4}},
    %{name: "GlancingBlowDamageRatio_pe2", type: {:int, 4}}
  ],

"CovenantDiplomacySynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantDiplomacyInfos", type: {:nullable, {:struct, "FTzCovenantDiplomacyInfos"}}}
  ],

"TlsLikeEncryptPremasterSecret" => [
    %{name: "PremasterSecret", type: :unknown}
  ],

"CombatLootOptionInfo" => [
    %{name: "MaxWeightPercentage", type: {:int, 2}},
    %{name: "MinCoreMaterialItemGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "IncludePotion", type: :unknown},
    %{name: "IncludeBuffItem", type: :unknown},
    %{name: "MinArquiruneGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "MinSpellstoneGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "DefaultDisplayDropItemName", type: :unknown}
  ],

"PaidAttendanceBuyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "FTzPaidAttendanceInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CashShopMerchandisePaymentInfo" => [
    %{name: "__base__", type: {:struct, "FTzMerchandisePaymentInfo"}},
    %{name: "SubCategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "CuidAndCountInfo", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}},
    %{name: "ItemUseParameterInfo", type: {:nullable, :message}}
  ],

"ServerDrivenPlayEndRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatFavorDailyCheckDateTimeResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatAnniversaryAchievementAccomplishAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfo", type: {:nullable, {:struct, "FTzCovenantSummaryInfo"}}},
    %{name: "IsJoinApplied", type: :unknown},
    %{name: "IsInvited", type: :unknown},
    %{name: "LeaderCustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "LeaderCostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}},
    %{name: "LeaderLevel", type: {:int, 4}},
    %{name: "LeaderGender", type: {:enum, "ETzGenderType"}},
    %{name: "LeaderClasse", type: {:enum, "ETzClasseType"}}
  ],

"InventoryExpandResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "UserInventoryKind", type: {:enum, "ETzUserInventoryKindType"}},
    %{name: "MaxInventorySlotCount", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatResetCovenantCampaignTicketCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"GracefulShutdownMessage" => [
    %{name: "TozNetwork.ServerGroup.GracefulShutdownMessage", type: :unknown}
  ],

"TrustedDeviceRegisterNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FissionedStateUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsFissioned", type: :unknown}
  ],

"CrossRealmChatRoomRecordsInitializationInfo" => [
    %{name: "__base__", type: {:struct, "FTzChatRoomRecordsInitializationInfo"}},
    %{name: "CountForFree", type: {:int, 4}}
  ],

"ItemTransmutationResultInfo" => [
    %{name: "IsSuccess", type: :unknown},
    %{name: "ResultLevel", type: {:int, 2}},
    %{name: "PreviousLevel", type: {:int, 2}},
    %{name: "RewardItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "FailRewardPointCurrencies", type: {:map, :cuid, {:uint, 8}}}
  ],

"SeasonPassLevelRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SeasonPassRewardKind", type: {:enum, "ETzSeasonPassRewardKindType"}}
  ],

"CheatDeleteChatCovenantResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PvpRecordInfo" => [
    %{name: "CharacterInfos", type: {:list, {:struct, "PvpRecordCharacterInfo"}}},
    %{name: "RecordDateTime", type: :FDateTime}
  ],

"ItemAdditionalInfo" => [
    
  ],

"BattalionCheckReadyResultNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CheckReadyResult", type: {:map, {:enum, "BattalionMemberReadyKindType"}, {:int, 4}}}
  ],

"CovenantUpdateIntroductionFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatReleaseOccupiableNpcInactivityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"LootNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SourceEntityGuid", type: {:uint, 8}},
    %{name: "GainedExperiencePoints", type: {:uint, 8}},
    %{name: "GainedExperiencePointsFromFinisher", type: {:uint, 8}},
    %{name: "GainedSpiritualBondPower", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "AcquiredCovenantRewardInfo", type: {:nullable, {:struct, "FTzCovenantRewardInfo"}}},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "IsErosionInstallerReward", type: :unknown}
  ],

"CovenantSynchronizeRankingNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}}
  ],

"OccupiableNpcBossBattleRewardNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}},
    %{name: "ReceivedRewardInfos", type: {:list, {:struct, "ReceivedRewardInfo"}}}
  ],

"CheatAnniversaryAchievementResetAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatRankingBuffApplySwitchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "IsApplied", type: :unknown}
  ],

"MessageCacheElement" => [
    %{name: "CacheTicks", type: {:int, 4}}
  ],

"NpcSpeechBalloonInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcSpeechBalloonTextFormatInfo", type: {:nullable, :message}}
  ],

"CheatRemoveRankingDummyDataResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdCancelProtectionReservationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"MailBuildingResearchLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailBuildingWorkLayoutInfo"}},
    %{name: "ResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"OccupiableNpcBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "FTzBossSpawnInfo"}},
    %{name: "DespawnDateTime", type: {:nullable, :FDateTime}}
  ],

"BuffMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuffAffectInfo"}},
    %{name: "Destination_cm", type: :FVector}
  ],

"VersionNameInfo" => [
    %{name: "__base__", type: {:struct, "BaseInfo"}},
    %{name: "ProjectName", type: :unknown},
    %{name: "BranchName", type: :unknown},
    %{name: "LastToken", type: :unknown}
  ],

"CheatCommandPresetEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatPlayerLocationChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CheatServerDrivenPlayResupplyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PartyCancelJoinApplicationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatUnlockContentsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ETzContentsUnlockKindType"}}
  ],

"PlayerFavorInfo" => [
    %{name: "DistrictFavorDatabaseInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzDistrictFavorDatabaseInfo"}}},
    %{name: "ActiveFavorDatabaseInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzFavorDatabaseInfo"}}}
  ],

"CovenantBattalionSummaryInfo" => [
    %{name: "__base__", type: {:struct, "FTzBattalionSummaryInfo"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, :message}}
  ],

"StrongholdBattleDefenseGunBulletAmountChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "DefenseGunBulletCount", type: {:uint, 8}}
  ],

"CovenantRealmTransferCheckInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmTransferInfo", type: {:nullable, :message}},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmTransferCheckInfo"}}},
    %{name: "CovenantRealmTransferCheckInfo", type: {:nullable, {:struct, "FTzCovenantRealmTransferCheckInfo"}}},
    %{name: "CanOutboundRealmTransferable", type: {:enum, "ETzResultCodeType"}},
    %{name: "DestinationRealmPlayerCount", type: {:int, 4}},
    %{name: "IsAppliedRealmAccountPresentToRealm", type: :unknown}
  ],

"FollowerImmediateResurrectionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"MarketGoodsSummaryInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketGoodsSummaryQueryInfo", type: {:nullable, :message}}
  ],

"AutoSellSettingsInfo" => [
    %{name: "Settings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"TozTimeAdjustment" => [
    %{name: "Adjustment", type: :unknown}
  ],

"CheatTestGearEnchantRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"CheatChangeActivationSpawnLayerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnLayerCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsActivated", type: :unknown}
  ],

"SkillAffectTargetAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillAffectInfo"}},
    %{name: "AffectTargetGuid", type: {:uint, 8}},
    %{name: "AffectSourceGuid", type: {:uint, 8}},
    %{name: "IsHit", type: :unknown},
    %{name: "SkillAffectTargetStatsAffectInfo", type: {:nullable, {:struct, "FTzSkillAffectTargetStatsAffectInfo"}}},
    %{name: "SkillAffectTargetMoveAffectInfo", type: {:nullable, {:struct, "FTzSkillAffectTargetMoveAffectInfo"}}},
    %{name: "SkillAffectTargetStateAffectInfo", type: {:nullable, :message}}
  ],

"InstanceEventActionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ActionCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsSuccess", type: :unknown}
  ],

"CovenantGiftReceiveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "UpdateCovenantGiftInfo", type: {:nullable, {:struct, "FTzCovenantGiftInfo"}}},
    %{name: "ReceiveGiftInfos", type: {:list, {:struct, "CovenantGiftReceiveInfo"}}}
  ],

"CharacterMoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CharacterGuid", type: {:uint, 8}},
    %{name: "CharacterMoveInfo", type: {:nullable, :message}}
  ],

"RealmAccountWarehouseExpandRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "SlotCount", type: {:int, 4}}
  ],

"CheatResetTerritoryBossResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"InteractionCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"CheatResetTerritoryBossRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MarketStrongholdTaxInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SlayingGradeSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "SlayingGrade", type: {:int, 2}}
  ],

"CheatClearRealmIntegrationBattleDeathCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SessionLogoutResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"UnlockedContentsNewMarkCheckResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ETzContentsUnlockKindType"}}
  ],

"StrongholdBattleOccupyAltarStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackPhaseStartNotify"}}
  ],

"PartyJoinFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"PrivateChannelKeepaliveFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ChannelKind", type: {:enum, "ETzPrivateChannelKindType"}}
  ],

"CrossRealmSeasonEntryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}}
  ],

"MountDeboardingInfo" => [
    %{name: "__base__", type: {:struct, "FTzMountStateInfo"}},
    %{name: "MountDeboardReason", type: {:enum, "ETzMountDeboardReasonType"}},
    %{name: "IsImmediateMountDespawn", type: :unknown},
    %{name: "MountDespawnLocation_cm", type: :FVector}
  ],

"FindRoadPathResultInfo" => [
    %{name: "Destination_cm", type: :FVector},
    %{name: "RoadPathInfos", type: {:list, {:struct, "RoadPathInfo"}}},
    %{name: "PathNodeInfosToFirstRoadJunctionInfo", type: {:list, {:struct, "PathNodeInfo"}}},
    %{name: "TravelDistance_cm", type: :float}
  ],

"CheatCreateAndEquipGuiseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GuiseCuid", type: {:struct, "FTzCuid"}}
  ],

"MiniTalkCompleteCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MiniTalkCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantCancelInvitationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CancelFailedPlayerGuids", type: {:list, {:uint, 8}}}
  ],

"StrongholdStrongholdBattleNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "ETzStrongholdBattleAttackPhaseType"}}
  ],

"ResurrectorSelectionExpiredNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BattalionSetAssemblyLocationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"ItemUseParameterInfo" => [
    
  ],

"StrongholdWorldMapFirstOccupationRewardEarliestReceivableDateTimeNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}}
  ],

"CheatInstallStanceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StanceKind", type: {:enum, "ETzStanceKindType"}}
  ],

"RegionContentPlayTimeInfoByDateTime" => [
    %{name: "BaseRemainingDuration_datetime", type: :FDateTime},
    %{name: "RechargedRemainingDuration_datetime", type: :FDateTime}
  ],

"RealmAccountPresentCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatAcquireFollowerPieceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatSetInvulnerableResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsInvulnerable", type: :unknown}
  ],

"SendChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "InfoToShare", type: :FString},
    %{name: "Text", type: :FString}
  ],

"ArquiAttunementInfo" => [
    %{name: "LevelByArquiAttunementCuid", type: {:map, :cuid, {:int, 4}}},
    %{name: "AetherOptionLevelByCategoryCuidAndOptionCuid", type: {:map, :cuid, {:struct, "TMap<FTzCuid"}}}
  ],

"CrossRealmCovenantDiplomacyCancelAllianceApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"MarketSettlementInfo" => [
    %{name: "PlayerSettledCurrencyAmount", type: {:uint, 8}},
    %{name: "BaseSettlementInfo", type: {:nullable, {:struct, "FTzSettlementInfo"}}},
    %{name: "StrongholdSettlementInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSettlementInfo"}}}
  ],

"MarketGoodsSummaryInfoQueryNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketGoodsSummaryQueryInfo", type: {:nullable, :message}},
    %{name: "MarketGoodsSummaryInfos", type: {:list, {:struct, "MarketGoodsSummaryInfo"}}}
  ],

"CheatAcquireAndSetToSquadFollowerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "Count", type: {:uint, 8}},
    %{name: "SlotNumber", type: {:int, 2}}
  ],

"CovenantHistoryCheckCompleteArchitectureResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantHistoryInfos", type: {:list, {:struct, "CovenantHistoryInfo"}}}
  ],

"SeamlessEntityInfo" => [
    %{name: "EntityInfo", type: {:nullable, :message}},
    %{name: "PlacedDistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlacedZoneCuid", type: {:struct, "FTzCuid"}}
  ],

"ErFrontServerSessionCancelWaitingQueueRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PlayerLocationMonitoringSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CovenantParticipationInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantParticipationInfos", type: {:list, {:struct, "CovenantParticipationInfo"}}}
  ],

"LocationInfo" => [
    %{name: "FieldUid", type: {:struct, "FTzFieldUid"}},
    %{name: "Location_cm", type: :FVector},
    %{name: "FacingDirection", type: :FRotator}
  ],

"WorldMapMarkerEditSettingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "WorldMapMarkerInfo", type: {:nullable, {:struct, "FTzWorldMapMarkerInfo"}}}
  ],

"CheatBatchBossSpawnTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGrade", type: {:enum, "ETzNpcGradeType"}},
    %{name: "RetainDuration_sec", type: {:int, 4}},
    %{name: "NextSpawnDuration_sec", type: {:int, 4}}
  ],

"ExpeditionNpcSummonWaveSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Info", type: {:nullable, {:struct, "FTzExpeditionNpcSummonWaveInfo"}}}
  ],

"CovenantQueryInvitedCovenantSummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CashShopMerchandiseInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "TextCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "ToyProductId", type: :FString},
    %{name: "CurrencyAmount", type: {:int, 4}},
    %{name: "RewardMileagePoint", type: {:int, 4}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "RewardReceiveKind", type: {:enum, "ETzShopMerchandiseReceiveKindType"}},
    %{name: "IsAutoUsing", type: :unknown},
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

"SkillAutoUseRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}}
  ],

"MarketGoodsSummaryInfo" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearAdditionalInfo", type: {:nullable, {:struct, "FTzGearAdditionalInfo"}}},
    %{name: "LowestUnitListPrice_pe2", type: {:uint, 8}},
    %{name: "GoodsCount", type: {:int, 4}}
  ],

"TerritoryErosionItemConfigurationModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FavorQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}}
  ],

"FavoriteCollectionRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsRegistered", type: :unknown}
  ],

"RealmIntegrationReserveRealmAccountDeletionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "DeleteDateTime", type: :FDateTime}
  ],

"CovenantMemberAnniversaryPointRankingInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantMemberAnniversaryPointInfo"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "AnniversaryPoint", type: {:uint, 8}}
  ],

"RealmInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatResetCashShopMerchandiseTotalBuyLimitCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MerchandiseCuid", type: {:struct, "FTzCuid"}}
  ],

"PartyMemberInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "FTzPartyMemberCoreInfo"}}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "State", type: {:enum, "ETzCharacterStateType"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}},
    %{name: "CustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "FTzErosionInfo"}}}
  ],

"TutorialHoldResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TutorialFilterKind", type: {:enum, "ETzTutorialFilterKindType"}},
    %{name: "FilterValue", type: :FString}
  ],

"TutorialStepForwardNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}},
    %{name: "PreviousStepNumber", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"BattalionConfirmCheckReadyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CheckReadyExpireDateTime", type: :FDateTime}
  ],

"ContaminationActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"TerritoryNoticeModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "Notice", type: :FString}
  ],

"LevelSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NewLevel", type: {:int, 4}},
    %{name: "LastLevelUpDateTime", type: :FDateTime}
  ],

"TerritoryErosionInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "ErosionInfos", type: :unknown}
  ],

"PlayedCutSceneAddResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CutSceneCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatResetAllCooldownRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SpellstoneAdditionalStatsInfo" => [
    %{name: "SpellstoneAdditionalSkillStatsInfo", type: {:nullable, {:struct, "FTzSpellstoneAdditionalSkillStatsInfo"}}}
  ],

"HeadPieceDisplayOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsHeadPieceDisplayed", type: :unknown}
  ],

"CovenantOrganizationStatsDetailInfo" => [
    %{name: "Stats", type: {:map, {:enum, "CovenantOrganizationStatSourceType"}, {:struct, "TMap<FTzCuid"}}}
  ],

"StrongholdTaxUpdateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatDistrictBlockResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantUpdateStrongholdInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdInfo", type: {:nullable, {:struct, "FTzStrongholdInfo"}}}
  ],

"ExpeditionBossNpcLocationInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BossNpcGuid", type: {:uint, 8}},
    %{name: "BossNpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsAlive", type: :unknown},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CovenantBattalionCreateNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionCreateNotify"}},
    %{name: "CovenantBattalionInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantBattalionNotifyInfo"}}}
  ],

"MarketGoodsSummaryQueryInfo" => [
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "MainGroupCuid", type: {:struct, "FTzCuid"}},
    %{name: "SubGroupCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CharacterMoveToLocationParameterInfo" => [
    %{name: "Destination_cm", type: :FVector}
  ],

"CheatExpeditionCloseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"SkillCasterLocationProxyInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Location_cm", type: :FVector}
  ],

"BuildingDowngradeRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}},
    %{name: "BuildingLevelToDowngrade", type: {:int, 4}}
  ],

"CheatSetLoggingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ErLogTag", type: :FString},
    %{name: "IsLogging", type: :unknown}
  ],

"SpellstoneAdditionalBuffStatsInfo" => [
    %{name: "DurationIncreaseAmount_msec", type: {:int, 4}},
    %{name: "DurationIncreaseRatio", type: :float},
    %{name: "IntervalDecreaseAmount_msec", type: {:int, 4}},
    %{name: "IntervalDecreaseRatio", type: :float},
    %{name: "IsImmuneToHealthPointsLoss", type: :unknown},
    %{name: "IsImmuneToHealthPointsGain", type: :unknown},
    %{name: "IsImmuneToManaPointsLoss", type: :unknown},
    %{name: "IsImmuneToManaPointsGain", type: :unknown},
    %{name: "CharacterStatChangesByStatKind", type: {:map, {:enum, "AdjustableStatKindType"}, {:struct, "TSharedPtr<FTzCharacterStatChangeInfo"}}},
    %{name: "MaxReflectCountIncreaseAmount", type: :float},
    %{name: "HealthPointsGainAdjustRatioIncreaseAmount", type: :float},
    %{name: "HealthPointsLossAdjustRatioIncreaseAmount", type: :float},
    %{name: "StatChangeIncreaseRatiosByStatKind", type: {:map, {:enum, "AdjustableStatKindType"}, :float}},
    %{name: "StatChangeIncreaseRatio", type: :float},
    %{name: "ProtectHealthPointsSettingStatKindByStatKind", type: {:map, {:enum, "AdjustableStatKindType"}, :float}},
    %{name: "ProtectHealthPointsSettingAmount", type: {:int, 4}}
  ],

"ServerDrivenPlayLootNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RewardInfo", type: {:nullable, :message}}
  ],

"TutorialsInfo" => [
    %{name: "CompletedTutorialCuids", type: {:list, :cuid}},
    %{name: "CurrentTutorialCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrentTutorialStepNo", type: {:int, 4}}
  ],

"GearEnchantPreserveItemInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemInfo"}},
    %{name: "GearEnchantPreserveItemAdditionalInfo", type: {:nullable, {:struct, "FTzGearEnchantPreserveItemAdditionalInfo"}}}
  ],

"CheatTutorialBeginRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatSetArquiAttunementLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiAttunementCuid", type: {:struct, "FTzCuid"}},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CrossRealmCovenantDiplomacyDeclareHostilityFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzPlayerBattalionOptionInfo"}}}
  ],

"CovenantAcquireCovenantMemberRoleRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :unknown},
    %{name: "LastAcquiredDateTime", type: :FDateTime}
  ],

"PartyQuickJoinRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheckIsInCovenantResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"ChatNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatInfo", type: {:nullable, :message}}
  ],

"AttackTargetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AttackTargetGuid", type: {:uint, 8}}
  ],

"ZoneTaxInfo" => [
    %{name: "AverageShopValueAddedTaxRate", type: :float},
    %{name: "AverageCraftedItemValueAddedTaxRate", type: :float},
    %{name: "AverageGatheringSiteEntranceFee", type: {:int, 4}}
  ],

"ChatEntityInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "PlayerInfo", type: {:nullable, {:struct, "FTzChatEntityPlayerInfo"}}},
    %{name: "CovenantGuid", type: {:nullable, {:uint, 8}}},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}}
  ],

"CheatAnniversaryAchievementAccomplishAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ArquiAttunementLevelUpRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiAttunementCuid", type: {:struct, "FTzCuid"}},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CovenantSupportApplyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSupportedFollowerGuids", type: {:list, {:uint, 8}}}
  ],

"CrossRealmSeasonRealmIntegrationBattleEntryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzCrossRealmSeasonEntryInitialDataNotify"}},
    %{name: "PlayerCount", type: {:int, 4}}
  ],

"DiplomacyChatCovenantSummaryInfo" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "LeaderChatEntityGuid", type: {:uint, 8}},
    %{name: "JoiningStatus", type: {:enum, "ETzJoiningStatusType"}}
  ],

"CovenantMarketHistoryInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantHistoryInfo"}},
    %{name: "PlayerName", type: :FString},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemCount", type: {:uint, 8}},
    %{name: "GearQuality", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x41));uVar10=local_198&0xff;}uVar2=local_190;pcVar11=local_188;if((uVar10&1)==0){uVar2=uVar10>>1;pcVar11=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "EnhancementGrade", type: {:nullable, {:int, 2}}},
    %{name: "IsRegister", type: :unknown},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyCount", type: {:uint, 8}}
  ],

"MarketFavoriteItemUnregisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CashShopRefundableMerchandiseStorageBoxUpdateInfo" => [
    %{name: "AddSlotInfoList", type: {:list, {:struct, "CashShopRefundableMerchandiseStorageBoxSlotInfo"}}},
    %{name: "DeleteSlotGuidList", type: {:list, {:uint, 8}}}
  ],

"WorldMapMarkerInstallResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "InstalledWorldMapMarkerInfo", type: {:nullable, {:struct, "FTzWorldMapMarkerInfo"}}}
  ],

"AutoDonateSettingOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "ItemFilterCuidToItemGrade", type: {:map, :cuid, {:enum, "ItemGradeType"}}},
    %{name: "IsContainEnhancedItem", type: :unknown},
    %{name: "IsContainEnchantedItem", type: :unknown},
    %{name: "IsContainBasicCollectableItem", type: :unknown}
  ],

"FollowerAcquireRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyApplyAllianceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatClearSeasonPassAchievementsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"GatheredResourceItemAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementSourceInfo"}},
    %{name: "ResourceKind", type: {:enum, "ETzResourceKindType"}}
  ],

"CheatSetStatResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBuildingPurificationCompleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "PurificationAmount", type: {:int, 4}},
    %{name: "FullContamination", type: {:int, 4}},
    %{name: "BeforeContaminationAmount", type: {:int, 4}}
  ],

"LZ4CompressHandshakeMessage" => [
    %{name: "Level", type: {:int, 4}},
    %{name: "MinimumCompressibleLength", type: {:int, 4}}
  ],

"BattalionInvitationInfo" => [
    %{name: "RequestPlayerGuid", type: {:uint, 8}},
    %{name: "BattalionMemberCoreInfo", type: {:nullable, {:struct, "FTzBattalionMemberCoreInfo"}}}
  ],

"CovenantTradeGoodsListQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "FTzCovenantTradeGoodsQueryInfo"}}}
  ],

"CheatAddServerTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"GameNotificationOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GameNotificationOptionInfo", type: {:nullable, {:struct, "FTzGameNotificationOptionInfo"}}}
  ],

"CovenantAppointCovenantMemberRoleRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantMemberRoleName", type: :FString}
  ],

"MailCovenantGoldDividendLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "TotalAmount", type: {:uint, 8}},
    %{name: "DividendAmount", type: {:uint, 8}}
  ],

"WarpNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SourceWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationWarpPointCuid", type: {:struct, "FTzCuid"}}
  ],

"MailStrongholdBattleDeclarationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailStrongholdBattleLayoutInfo"}},
    %{name: "DefenseCovenantName", type: :FString},
    %{name: "DefenseCovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "AttackCovenantName", type: :FString},
    %{name: "AttackCovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"StrongholdBattleTeleportToSpireResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SkillCooldownSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CooldownSkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "CooldownDateTimeRangeInfo", type: {:nullable, {:struct, "FTzDateTimeRangeInfo"}}},
    %{name: "CooldownUpdatedReason", type: {:enum, "ETzCooldownUpdatedReasonType"}}
  ],

"CovenantGoodsRegistrationInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "RegisteredGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzRegisteredGoodsInfo"}}},
    %{name: "ServiceState", type: {:enum, "ETzCovenantRegisteredGoodsServiceStateType"}}
  ],

"CheatRealmAccountRealmTransferInfoChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmTransferCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmTransferCount", type: {:int, 4}},
    %{name: "LastRealmTransferDateTime", type: {:nullable, :FDateTime}}
  ],

"UnlockedContentsNewMarkCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ETzContentsUnlockKindType"}}
  ],

"CovenantDiplomacyInviteReinforcementResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"TlsLikeEncryptHandshakeResult" => [
    %{name: "__base__", type: {:struct, "HandshakeResult"}},
    %{name: "TozNetwork.Handshake.TlsLikeEncryptor.TlsLikeEncryptHandshakeResult", type: :unknown}
  ],

"OccupiableNpcSummaryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "OccupiableNpcSummaryInfo", type: {:nullable, :message}}
  ],

"SpellstoneEquipRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpellstoneGuid", type: {:uint, 8}},
    %{name: "SpellstoneSlotInfo", type: {:nullable, {:struct, "FTzSpellstoneSlotInfo"}}}
  ],

"RealmIntegrationReserveRealmAccountDeletionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"DestroyPointsUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "OldPoints", type: {:int, 4}},
    %{name: "NewPoints", type: {:int, 4}}
  ],

"CovenantDiplomacyConfirmAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"BlockBuildingNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "IsBlock", type: :unknown},
    %{name: "BuildingBlockKind", type: {:enum, "ETzBuildingBlockKindType"}}
  ],

"CheatClearRealmIntegrationBattleDeathCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RedrawableItemConfirmRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"CheatSpawnBuildingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatChangeCrossRealmSeasonMaxEnterablePlayerCapacityResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MountDeboardingByBuffInfo" => [
    %{name: "__base__", type: {:struct, "FTzMountDeboardingInfo"}},
    %{name: "BuffCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatChangeFocusTargetHealthPointsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantTradeDealRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "FTzCovenantTradeDealRecordQueryInfo"}}}
  ],

"CharacterNameInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Name", type: :FString}
  ],

"StrongholdRewardStatNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsOccupiedByNpcCovenant", type: :unknown}
  ],

"DeleteDiplomacyChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"StrongholdBattleCovenantBattalionSummaryInfo" => [
    %{name: "__base__", type: {:struct, "FTzBattalionSummaryInfo"}},
    %{name: "CampaignStageCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}}
  ],

"MailsMarkAsReadInTabNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "UpperBoundDateTime", type: :FDateTime}
  ],

"NpcOccupationCovenantViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzNpcOccupationCovenantInfo"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"CheatMonsterBookSetNodeLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"GearErodedRestoreRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "MaterialItemGuid", type: {:uint, 8}}
  ],

"CheatCommandPresetRelayFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PresetTitle", type: :FString}
  ],

"StrongholdBattleAttackInfo" => [
    %{name: "DeclareHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackGroupInfo", type: {:nullable, {:struct, "FTzStrongholdBattleAttackGroupInfo"}}},
    %{name: "Phase", type: {:enum, "ETzStrongholdBattleAttackPhaseType"}},
    %{name: "DeclareDateTime", type: :FDateTime},
    %{name: "StandByEndDateTime", type: :FDateTime},
    %{name: "EndDateTime", type: :FDateTime},
    %{name: "CarriageLivingTotemNpcGuid", type: {:uint, 8}},
    %{name: "StrongholdBattleStartLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "TargetBuildingSpawnerCuids", type: {:map, {:enum, "StrongholdBattleAttackPhaseType"}, :cuid}},
    %{name: "OccupyAltarCurrentScore", type: {:int, 4}}
  ],

"EqualDistributionDividendInfo" => [
    %{name: "__base__", type: {:struct, "FTzDividendInfo"}}
  ],

"CheatDespawnBuildingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SkillComboResetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsExpired", type: :unknown},
    %{name: "ComboSeedSkillCuid", type: {:struct, "FTzCuid"}}
  ],

"MissionProgressCountChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ProgressCount", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"CheatExpeditionOpenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatInstallArquiruneRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBuildingPurifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "PurificationLevel", type: {:int, 4}}
  ],

"AllRealmInfoPubSubChannelUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "RealmStateInfos", type: {:list, {:struct, "RealmStateInfo"}}}
  ],

"StrongholdSummonWaveDefenseInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}}
  ],

"CovenantMemberAnniversaryPointInfo" => [
    %{name: "CovenantMemberGuid", type: {:uint, 8}},
    %{name: "CovenantMemberName", type: :FString},
    %{name: "UpdateTime", type: :FDateTime}
  ],

"PartyConfirmInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "PartyInvitationInfo", type: {:nullable, {:struct, "FTzPartyInvitationInfo"}}}
  ],

"PlayerCurrencyContainerUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatRemoveRankingDummyDataRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}}
  ],

"MarketFavoriteItemRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatOverwriteCrossRealmRankingBoardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FollowerWorkAmountAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementSourceInfo"}},
    %{name: "FollowerWorkKind", type: {:enum, "ETzFollowerWorkKindType"}}
  ],

"InfoAuthenticateComplete" => [
    %{name: "Success", type: :unknown},
    %{name: "SessionKey", type: :unknown},
    %{name: "SessionInitializeInfo", type: {:nullable, :message}},
    %{name: "FailureReason", type: {:int, 4}},
    %{name: "FailureReasonData", type: {:nullable, :message}}
  ],

"CovenantGiftReceiveInfo" => [
    %{name: "CovenantGiftBoxGuid", type: {:uint, 8}},
    %{name: "ReceiveRewardInfo", type: {:nullable, :message}}
  ],

"PvpRankingAdditionalSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzRankingAdditionalSourceInfo"}},
    %{name: "DeadCount", type: {:int, 4}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "AssistCount", type: {:int, 4}}
  ],

"PartySynchronizeMemberCoreInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPartySynchronizeMemberNotify"}},
    %{name: "CoreInfo", type: {:nullable, {:struct, "FTzPartyMemberCoreInfo"}}}
  ],

"CheatResetCashShopMerchandiseBuyLimitCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "UpdatedMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"CheatTeleportByOffsetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PreviousLocation_cm", type: :FVector},
    %{name: "Offset_cm", type: :FVector}
  ],

"CovenantHistoryCheckCompleteArchitectureRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"PlayerSlotExpansionCostCurrencyAmountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantRealmTransferExecuteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UseItem", type: :unknown},
    %{name: "UseCurrency", type: :unknown},
    %{name: "CovenantName", type: :FString}
  ],

"CheatDistributeStrongholdMarketTaxResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"MailCustomerServiceReplyLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}}
  ],

"CheatAllStancesAcquireResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "InstalledStance", type: {:enum, "ETzStanceType"}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :unknown},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "FTzQuestsInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CheatPromoteFollowerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MarketBuyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "BuyCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuyCurrencyAmount", type: {:uint, 8}},
    %{name: "CovenantMarketFixedFeeCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantMarketFixedFeeCurrencyAmount", type: {:uint, 8}}
  ],

"PartyAppointLeaderRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MountUpdateSkillSlotInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MountSkillSlotIndex", type: {:enum, "ETzMountSkillSlotIndexType"}},
    %{name: "IsUsedForContinuousCombat", type: :unknown}
  ],

"CheatGetEnvironmentVariablesResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "Variables", type: {:map, :string, :string}}
  ],

"CheatDetachAllBuffsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmAccountWarehouseItemStoreResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseInventoryUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}}
  ],

"CheatTutorialCompleteAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyAdditionalInfo" => [
    
  ],

"DatatoolHandshakeResponse" => [
    %{name: "ClientData", type: {:nullable, :message}}
  ],

"CovenantHistoryInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CreateDateTime", type: :FDateTime}
  ],

"CrossRegionPathResultInfo" => [
    %{name: "InterRegionStartWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "InterRegionDestinationWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "ReturnItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantReturnHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "StartFindPathResult", type: {:nullable, {:struct, "FTzIntraRegionPathResultInfo"}}},
    %{name: "DestinationFindPathResult", type: {:nullable, {:struct, "FTzIntraRegionPathResultInfo"}}}
  ],

"PvpBattlePlayerId" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"StrongholdBattleCovenantBattalionMemberDisplayInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Gender", type: {:enum, "ETzGenderType"}},
    %{name: "CustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}},
    %{name: "IsHeadPieceDisplayed", type: :unknown}
  ],

"CheatRemoveVeilRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}}
  ],

"ItemDestroyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"BuildingUpgradeRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}},
    %{name: "BuildingLevelToUpgrade", type: {:int, 4}}
  ],

"PlayerSummaryInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Gender", type: {:enum, "ETzGenderType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "Level", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}},
    %{name: "CovenantInvitable", type: :unknown},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :FString},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}},
    %{name: "LastLoginDateTime", type: {:nullable, :FDateTime}},
    %{name: "LastLogoutDateTime", type: {:nullable, :FDateTime}},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsInServerDrivenPlay", type: :unknown},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}},
    %{name: "ReservedDeleteDateTime", type: {:nullable, :FDateTime}},
    %{name: "IsHeadPieceDisplayed", type: :unknown}
  ],

"ContaminationInfo" => [
    %{name: "Stage", type: {:enum, "ETzContaminationStageType"}},
    %{name: "UpdatedValue", type: {:int, 4}},
    %{name: "UpdatedDateTime", type: :FDateTime},
    %{name: "TotalDecrement_psec", type: {:int, 4}},
    %{name: "ContaminationNaturalDecreaseInfos", type: {:map, {:enum, "ContaminationNaturalDecreaseType"}, {:int, 4}}},
    %{name: "CastVeilDateTime", type: {:nullable, :FDateTime}},
    %{name: "RemoveVeilDateTime", type: {:nullable, :FDateTime}},
    %{name: "FullContamination", type: {:int, 4}}
  ],

"CovenantCampInitialInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "BuildingWorkInfoByWorkplaceCuid", type: {:map, :cuid, {:struct, "TSharedPtr<FTzBuildingWorkInfo"}}},
    %{name: "CovenantShopInfo", type: {:nullable, {:struct, "FTzShopInfo"}}}
  ],

"ErLoginServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerSessionInitializeInfo"}},
    %{name: "UniverseAccountInfo", type: {:nullable, {:struct, "FTzUniverseAccountInfo"}}},
    %{name: "LatestLoggedInRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmInfo", type: {:nullable, {:struct, "FTzRealmInfo"}}},
    %{name: "PreregistrationInfo", type: {:nullable, {:struct, "FTzPreregistrationInfo"}}},
    %{name: "Gsid", type: :FString},
    %{name: "RealmIntegrationRealmInfos", type: {:list, {:struct, "RealmIntegrationRealmInfo"}}}
  ],

"SessionLogoutRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatClearCollectionFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StackableItemMultipleUseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "FTzCovenantRewardInfo"}}},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "ExperiencePointsDelta", type: {:uint, 8}},
    %{name: "IsUpgradeSlayingGrade", type: :unknown},
    %{name: "AmityDelta", type: {:map, :cuid, {:uint, 8}}},
    %{name: "SpiritualBondPowerDelta", type: {:uint, 8}},
    %{name: "CooldownExpireDateTimeRangeInfo", type: {:nullable, {:struct, "FTzDateTimeRangeInfo"}}}
  ],

"CovenantQueryInvitedCovenantSummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfoAndInviteDateTimes", type: {:map, {:struct, "TSharedPtr<FTzCovenantSummaryInfo"}, {:struct, "(ESPMode)1"}}}
  ],

"MailStrongholdCannotPayMaintenanceCostLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "DebtAmount", type: {:uint, 8}}
  ],

"CheatApplyCovenantResearchSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ResearchSetCuid", type: {:struct, "FTzCuid"}}
  ],

"InventoryInfo" => [
    %{name: "ItemInfos", type: {:list, {:struct, "ItemInfo"}}},
    %{name: "MaxSlotCount", type: {:int, 4}}
  ],

"CheatClearCovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatChangeLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "ShowAllLevelUpEffect", type: :unknown}
  ],

"SeasonPassLevelBuyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}}
  ],

"CheatTestRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "RewardItemIndexWithCounts", type: {:list, {:struct, "RewardItemIndexWithCount"}}}
  ],

"CovenantRecommendBuildingWorkRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsRecommended", type: :unknown}
  ],

"CheatSwitchStanceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StanceKind", type: {:enum, "ETzStanceKindType"}}
  ],

"PlayerSkillInfo" => [
    %{name: "RootSkillCuids", type: :unknown},
    %{name: "SkillCuids", type: :unknown},
    %{name: "PlayerSkillSlotSetInfos", type: {:map, {:enum, "StanceType"}, {:struct, "TSharedPtr<FTzPlayerSkillSlotSetInfo"}}},
    %{name: "PlayerSkillCooldownExpireDateTimeRangeInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzDateTimeRangeInfo"}}},
    %{name: "InstalledArquiruneInfos", type: {:map, :cuid, {:struct, "TMap<FTzCuid"}}},
    %{name: "SpellstoneSlotPageInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSpellstoneSlotPageInfo"}}},
    %{name: "ReplacementSkillCuidsByRootSkillCuid", type: {:map, :cuid, :cuid}}
  ],

"BattalionMemberSummaryInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "FTzBattalionMemberCoreInfo"}}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleName", type: :FString},
    %{name: "SlayingGrade", type: {:int, 4}}
  ],

"CheatAcquireAllFollowerPieceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatStartStrongholdSummonWaveDefenseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantAddJoinApplicationsNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantJoinApplicationInfos", type: {:list, {:struct, "CovenantJoinApplicationInfo"}}}
  ],

"SelfieModeLeaveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"RegionContentPlayTimeInfo" => [
    %{name: "RegionContentKind", type: {:enum, "ETzRegionContentKindType"}},
    %{name: "RegionContentPlayTimeInfo_sec", type: {:nullable, :message}},
    %{name: "RegionContentPlayTimeInfo_datetime", type: {:nullable, :message}},
    %{name: "RemainRechargePlayTimeLimit_sec", type: {:int, 4}}
  ],

"NonstackableItemQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemQuickSlotDetailInfo"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"PlayerMarketTransactionHistoryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SpellstoneEquipResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpellstoneGuid", type: {:uint, 8}},
    %{name: "SpellstoneSlotInfo", type: {:nullable, {:struct, "FTzSpellstoneSlotInfo"}}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"ItemAutoUseDeregisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"NormalDoodadInfo" => [
    %{name: "__base__", type: {:struct, "FTzInteractableDoodadInfo"}},
    %{name: "NormalDoodadState", type: {:enum, "ETzNormalDoodadStateType"}}
  ],

"BattalionInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "AllianceCovenantGuids", type: :unknown},
    %{name: "CovenantGrantedSkillCuids", type: :unknown},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzBattalionOptionInfo"}}},
    %{name: "SquadInfos", type: {:list, {:struct, "SquadInfo"}}},
    %{name: "MemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzBattalionMemberInfo"}}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "CheckReadyExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "IsJoinable", type: :unknown},
    %{name: "BattalionWarpCooldownExpireTime", type: {:nullable, :FDateTime}}
  ],

"CheatTerritoryContaminationDecrementChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "ContaminationDecrement_psec", type: {:int, 4}}
  ],

"RealmAccountPresentCheckResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmAccountPresentRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayersInfo", type: {:map, :string, {:struct, "TTuple<ETzClasseType"}}}
  ],

"CheatResetCashShopMerchandiseBuyLimitCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MerchandiseCuid", type: {:struct, "FTzCuid"}}
  ],

"OneShotSpecialMoveInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveToInfo"}},
    %{name: "Destination_cm", type: :FVector},
    %{name: "DoodadCuid", type: {:struct, "FTzCuid"}}
  ],

"QuickSlotInfo" => [
    %{name: "SlotKind", type: {:enum, "ETzQuickSlotKindType"}},
    %{name: "QuickSlotDetailInfo", type: {:nullable, :message}}
  ],

"SendCrossRealmChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "FTzSendChatMessageRequest"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CovenantDiplomacyCancelReinforcementInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"NpcKillCountActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"CheatSetIgnoreCovenantMarketUsableJoinElapsedTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IgnoreCovenantMarketUsableJoinElapsedTime", type: :unknown}
  ],

"CovenantBattalionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBattalionInfo"}},
    %{name: "ExpeditionInfo", type: {:nullable, :message}}
  ],

"OccupiableNpcOccupationStateUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "OccupationState", type: {:enum, "ETzNpcOccupationStateType"}}
  ],

"QueryChatRoomRecordsInitializationInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}}
  ],

"SeasonPassAchievementUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonPassAchievementInfo", type: {:nullable, :message}}
  ],

"CheatAddDeathPenaltyRecordRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RecordCount", type: {:int, 4}},
    %{name: "Level", type: {:nullable, {:int, 4}}},
    %{name: "DeathDateTime", type: {:nullable, :FDateTime}}
  ],

"CovenantEmblemSelectionInfo" => [
    %{name: "EmblemPresetCuid", type: {:struct, "FTzCuid"}},
    %{name: "EmblemCustomizeInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"TargetScanShareRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ScannedTargetGuids", type: {:map, {:int, 4}, {:uint, 8}}}
  ],

"CheatCloseFogResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FogCuid", type: {:struct, "FTzCuid"}}
  ],

"AccelerationUseHavenWorkResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "AccelerationActionKind", type: {:enum, "ETzAccelerationActionKindType"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}},
    %{name: "PointCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPointCurrencyContainerUpdateInfo"}}}
  ],

"BattalionBattalionWarpConfirmRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ChatFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatCovenantRubyShopResetUseResetCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BuffRenewNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffInfo", type: {:nullable, {:struct, "FTzBuffInfo"}}}
  ],

"CheatAccomplishQuestRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "QuestMissionSequence", type: {:int, 4}},
    %{name: "ReceiveReward", type: :unknown}
  ],

"AttackTargetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AttackTargetGuid", type: {:uint, 8}}
  ],

"CovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"ErLoginServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerAuthenticateInfo"}}
  ],

"FavorInfo" => [
    %{name: "Vuid", type: {:struct, "FTzVuid"}},
    %{name: "FavorTemplateCuid", type: {:struct, "FTzCuid"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "FavorAcceptedStrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "FavorRandomRewardCuidCandidates", type: {:list, :cuid}}
  ],

"AlertPlayerUnregisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"BuildingResearchRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}},
    %{name: "ResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResearchLevel", type: {:int, 4}},
    %{name: "ResearchResumeGauge_mw", type: {:uint, 8}},
    %{name: "ResearchStartedDateTimeOnResume", type: {:nullable, :FDateTime}}
  ],

"PartyOrBattalionItemDistributionInfo" => [
    %{name: "PartyOrBattalionItemDistributionRule", type: {:enum, "ETzPartyOrBattalionItemDistributionRuleType"}},
    %{name: "MinItemGradeToPrioritizeLeader", type: {:enum, "ETzItemGradeType"}}
  ],

"CheatKillFocusedCharacterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsSkipDyingAndFinishable", type: :unknown}
  ],

"GearInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemInfo"}},
    %{name: "GearAdditionalInfo", type: {:nullable, {:struct, "FTzGearAdditionalInfo"}}}
  ],

"SelfieModeEnterNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"StrongholdProtectRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"MailToCovenantLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "ToCovenantName", type: :FString}
  ],

"StrongholdBuildingDemolishResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"WarpRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WarpHelperGuid", type: {:uint, 8}},
    %{name: "WarpPointCuid", type: {:struct, "FTzCuid"}}
  ],

"ChatEntityCovenantInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :FString},
    %{name: "EmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "ETzStrongholdGradeType"}}
  ],

"StrongholdBattleAttackPhaseStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "BattalionMemberStatisticsInfos", type: {:list, {:struct, "StrongholdBattleCovenantBattalionMemberStatisticsInfo"}}}
  ],

"CovenantCancelJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"FollowerDispatchAutomationInfo" => [
    %{name: "DispatchAutomationState", type: {:enum, "ETzFollowerDispatchAutomationStateType"}},
    %{name: "ProceedingDispatchAutomationCount", type: {:int, 4}},
    %{name: "MaxDispatchAutomationCount", type: {:int, 4}}
  ],

"RegisteredGoodsBuyCountInfo" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "Count", type: {:uint, 8}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"FindWarpPointsForAutoMoveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "StartWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "Destination_cm", type: :FVector}
  ],

"StrongholdBuildingPurifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleOccupyAltarChangeScoreNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "OccupyAltarCurrentScore", type: {:int, 4}}
  ],

"BattalionLeaveMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "BattalionLeaveReason", type: {:enum, "ETzBattalionLeaveReasonType"}}
  ],

"GearMultipleEnhanceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearGuids", type: {:list, {:uint, 8}}},
    %{name: "MaterialItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "MaterialItemGuids", type: {:list, {:uint, 8}}},
    %{name: "RequestEnhancementGrade", type: {:int, 2}}
  ],

"RedrawableItemConfirmResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ServerDrivenPlayFleeingStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}}
  ],

"FollowerKillingInfo" => [
    %{name: "KillerEntityName", type: :FString},
    %{name: "KillerCovenantName", type: :FString},
    %{name: "KillingLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CheatSetUrfModeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsUrfMode", type: :unknown}
  ],

"CheatResetGoodsBuyCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatChangeCrossRealmSeasonMaxEnterablePlayerCapacityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonCuid", type: {:struct, "FTzCuid"}},
    %{name: "MaxEnterablePlayerCapacity", type: {:int, 4}}
  ],

"CovenantRubyShopOpenNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyJoinAllianceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatUserInventorySlotCountChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "UserInventoryKind", type: {:enum, "ETzUserInventoryKindType"}},
    %{name: "MaxInventorySlotCount", type: {:int, 4}}
  ],

"StrongholdBattleRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CashShopWindowDressingInfo" => [
    %{name: "SubCategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "MerchandiseCuid", type: {:struct, "FTzCuid"}},
    %{name: "MerchandiseGroup", type: {:int, 4}},
    %{name: "Step", type: {:int, 4}},
    %{name: "DisplayDateTime", type: :FDateTime},
    %{name: "StartDateTime", type: :FDateTime},
    %{name: "EndDateTime", type: :FDateTime},
    %{name: "IsShowDateTime", type: :unknown},
    %{name: "ExtensionDescriptionCuid", type: {:struct, "FTzCuid"}},
    %{name: "TagKind", type: {:enum, "ETzCashShopTagKindType"}},
    %{name: "RecommendSubCategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "RecommendSubCategorySortOrder", type: {:int, 4}},
    %{name: "IsHideAfterBuyCompleted", type: :unknown},
    %{name: "IsHideMerchandise", type: :unknown},
    %{name: "BackgroundColorKind", type: {:enum, "ETzCashShopColorKindType"}},
    %{name: "FxKind", type: {:enum, "ETzCashShopFxKindType"}},
    %{name: "FxColorKind", type: {:enum, "ETzCashShopColorKindType"}},
    %{name: "BackgroundFxColorKind", type: {:enum, "ETzCashShopColorKindType"}},
    %{name: "TagDisplayDuration_day", type: {:int, 4}}
  ],

"CovenantPayDividendResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "DividendResultInfo", type: {:nullable, :message}}
  ],

"RealmAccountRealmTransferExecuteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DestinationRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "UseItem", type: :unknown},
    %{name: "UseCurrency", type: :unknown}
  ],

"CheatAddRankingDummyDataRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}}
  ],

"CharacterThreatListRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ThreateningCharacterGuid", type: {:uint, 8}}
  ],

"PlayerLocationMonitoringRegisterNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerLocationMonitoringInfo", type: {:nullable, :message}}
  ],

"QuestCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}}
  ],

"DefaultPreprocessResult" => [
    %{name: "Success", type: :unknown}
  ],

"PlayerSkillSlotUpdateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "PlayerSkillSlotIndex", type: {:enum, "ETzPlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "FTzPlayerSkillSlotInfo"}}}
  ],

"ClanSponsorResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ClanCuid", type: {:struct, "FTzCuid"}},
    %{name: "Amity", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"SkillAutoUseDeregisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatCreateCovenantWarehouseItemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCuidAndCountInfo", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}}
  ],

"CheatGetCheatEnabledPlayerNamesRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"PartyMemberCoreInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerName", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}}
  ],

"FollowerDispatchAutomationCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantTradeCategoryItemInfo" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "LowestPrice", type: {:uint, 8}},
    %{name: "LowestPricePerEach_pe3", type: {:uint, 8}},
    %{name: "GoodsCount", type: {:int, 4}}
  ],

"ShopAutoSellSettingUpdateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleAttackAltarStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackPhaseStartNotify"}}
  ],

"InGameNotificationDeleteCategoryNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InGameNotificationCategory", type: {:enum, "ETzInGameNotificationCategoryType"}},
    %{name: "DeletedGuids", type: {:list, {:uint, 8}}}
  ],

"PartyJoinApplicationInfo" => [
    %{name: "PartyLeaderGuid", type: {:uint, 8}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "FTzPartyMemberInfo"}}}
  ],

"CovenantRegisteredGoodsRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "RegisteredGoodsInfo", type: {:nullable, {:struct, "FTzRegisteredGoodsInfo"}}}
  ],

"StanceInstallResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "InstallRequestedStance", type: {:enum, "ETzStanceType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "InstalledStance", type: {:enum, "ETzStanceType"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :unknown}
  ],

"CheatDestroyPointsChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatAnniversaryAchievementResetAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AnniversaryAchievementPointInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryAchievementPointInfo"}}}
  ],

"InteractionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"CheatGetCrossRealmSeasonMaxEnterablePlayerCapacityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAcceptQuestRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "TeleportToQuestMissionLocation", type: :unknown},
    %{name: "ReceivePrecedingQuestReward", type: :unknown}
  ],

"CheatDowngradeBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmTransferredPlayerNameChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Name", type: :FString}
  ],

"MountBoardingInfo" => [
    %{name: "__base__", type: {:struct, "FTzMountStateInfo"}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsLeftBoarding", type: :unknown},
    %{name: "PlayerFacingDirection", type: :FRotator},
    %{name: "BoardingLocation_cm", type: :FVector},
    %{name: "IsImmediateBoarding", type: :unknown},
    %{name: "IsMovingBoarding", type: :unknown}
  ],

"CheatApplySkillSlotQuickSlotAutoUsePresetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PresetCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAdjustLocationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LocationDelta_cm", type: :FVector}
  ],

"TozMessageCacheElement" => [
    %{name: "__base__", type: {:struct, "MessageCacheElement"}},
    %{name: "message", type: {:nullable, :message}}
  ],

"FavorRefreshRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantWatchDeregisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString}
  ],

"ItemAutoUseRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"BuildingWorkInfo" => [
    %{name: "OrderInfo", type: {:nullable, {:struct, "FTzBuildingWorkOrderInfo"}}},
    %{name: "MaxWorkerCount", type: {:int, 4}},
    %{name: "CurrentWorkerCount", type: {:int, 4}},
    %{name: "ProgressInfo", type: {:nullable, {:struct, "FTzProgressInfo"}}}
  ],

"ItemTransmutationCurrencyRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TransmutationCurrencyRewardCuid", type: {:struct, "FTzCuid"}}
  ],

"OccupiableNpcSummaryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "OccupiableNpcSummaryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzOccupiableNpcSummaryInfo"}}}
  ],

"BattalionDismissFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MarketSellCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"FocusNotify" => [
    %{name: "__base__", type: {:struct, "FTzFocusRequest"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"ExperiencePointsCovenantRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantRankingViewInfo"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"CheatEnabledModificationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CheatEnabled", type: :unknown}
  ],

"StrongholdBattleCarriageLivingTotemDestroyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "DestroyerNameInfo", type: {:nullable, {:struct, "FTzCharacterNameInfo"}}},
    %{name: "DestroyerCovenantName", type: :FString}
  ],

"AlertPlayerRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RegisteredPlayerInfo", type: {:nullable, :message}}
  ],

"AccelerationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString},
    %{name: "AccelerationResultInfo", type: {:nullable, {:struct, "FTzAccelerationResultInfo"}}}
  ],

"RealmIntegrationBattleWarpReturnResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MailErosionWithoutPermissionInstalledLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "InstallerGuid", type: {:uint, 8}},
    %{name: "InstalledLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "ErosionItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpectedContaminationAmount", type: {:int, 4}}
  ],

"BattalionRejectInvitationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"StrongholdBattleJoinedCovenantInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"ErFrontServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerAuthenticateInfo"}}
  ],

"CovenantSynchronizeMemberBattalionGuidNotify" => [
    %{name: "__base__", type: {:struct, "FTzCovenantSynchronizeMemberNotify"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"StrongholdWorldMapGeneralShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "UpdatedGeneralShopInfo", type: {:nullable, {:struct, "FTzStrongholdWorldMapGeneralShopInfo"}}}
  ],

"FollowerResurrectionNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"CheatAccomplishQuestResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "FTzQuestsInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CheatCreateAndEquipGearSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "BoundAndEroded", type: {:enum, "ETzBoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}}
  ],

"FollowerDispatchOverallInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "FTzFollowerCoreInfo"}}},
    %{name: "DispatchInfo", type: {:nullable, {:struct, "FTzFollowerDispatchInfo"}}},
    %{name: "DispatchAutomationInfo", type: {:nullable, {:struct, "FTzFollowerDispatchAutomationInfo"}}},
    %{name: "WorkInfo", type: {:nullable, {:struct, "FTzFollowerWorkInfo"}}},
    %{name: "DeathInfo", type: {:nullable, {:struct, "FTzFollowerDeathInfo"}}}
  ],

"PlayerLocationMonitoringRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "PlayerLocationMonitoringInfo", type: {:nullable, :message}}
  ],

"RealmIntegrationBattleScoreUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ScoreInfo", type: {:nullable, :message}}
  ],

"CovenantLoseStrongholdNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"SkillUseOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatOpenAllFogRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FollowerDispatchAutomationCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmAccountLogoutRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatRealmIntegrationConvertToIntegratedRealmAccountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PreviousRealmCuid", type: {:struct, "FTzCuid"}}
  ],

"PlayerRealmIntegrationBattleSeasonInfo" => [
    %{name: "DeathCount", type: {:int, 4}}
  ],

"GenerateVivoxTokenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "VivoxActionKind", type: {:enum, "ETzErVivoxActionKindType"}},
    %{name: "Subject", type: :FString}
  ],

"HavenOperationInfo" => [
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}},
    %{name: "DeployedLivingTotemCuid", type: {:struct, "FTzCuid"}}
  ],

"SpecialGearEnhancementUseInfo" => [
    %{name: "LastUseSpecialGearEnhancementScheduleCuid", type: {:struct, "FTzCuid"}},
    %{name: "UseCount", type: {:int, 4}}
  ],

"StrongholdBattleBuildingDestroyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "BuildingKind", type: {:enum, "ETzBuildingKindType"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestroyerNameInfo", type: {:nullable, {:struct, "FTzCharacterNameInfo"}}},
    %{name: "DestroyerCovenantName", type: :FString}
  ],

"ErFrontServerInitialAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErFrontServerAuthenticateInfo"}},
    %{name: "UniverseAccountGuid", type: {:uint, 8}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"CovenantSynchronizeHighestUpgradedBuildingLevelInfosNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantHighestUpgradedBuildingLevelInfos", type: {:map, :cuid, {:int, 4}}}
  ],

"FollowerItemAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemAdditionalInfo"}},
    %{name: "Tier", type: {:int, 4}},
    %{name: "Level", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "LastLevelUpDateTime", type: :FDateTime}
  ],

"DeathPenaltyDeleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"PartySynchronizeMemberLocationInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPartySynchronizeMemberNotify"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"MonsterBookCollectionInfo" => [
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "AccomplishedRewardPhase", type: {:int, 2}}
  ],

"CheatDiscoverAllSelfieDoodadSpawnersResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantInfo" => [
    %{name: "CrossRealmCovenantDiplomacyInfos", type: {:nullable, {:struct, "FTzCovenantDiplomacyInfos"}}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "Name", type: :FString},
    %{name: "Level", type: {:int, 4}},
    %{name: "LevelUpLastUpdatedDateTime", type: :FDateTime},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "CovenantJoinKind", type: {:enum, "ETzCovenantJoinKindType"}},
    %{name: "CovenantMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantMemberInfo"}}},
    %{name: "MaxCovenantMemberCount", type: {:int, 2}},
    %{name: "Notice", type: :FString},
    %{name: "NoticeHarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "NoticeLastUpdatedDateTime", type: :FDateTime},
    %{name: "Introduction", type: :FString},
    %{name: "IntroductionHarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "CovenantCampOccupancyInfo", type: {:nullable, {:struct, "FTzCovenantCampOccupancyInfo"}}},
    %{name: "OccupiedStrongholdInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdInfo"}}},
    %{name: "HavenOrganizationStatsDetailInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzHavenOrganizationStatsDetailInfo"}}},
    %{name: "MainHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleInfos", type: {:list, {:struct, "CovenantMemberRoleInfo"}}},
    %{name: "CovenantHighestUpgradedBuildingLevelInfos", type: {:map, :cuid, {:int, 4}}},
    %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}},
    %{name: "CovenantLivingTotemInfos", type: {:list, {:struct, "CovenantLivingTotemInfo"}}},
    %{name: "CovenantResearchInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantResearchInfo"}}},
    %{name: "CovenantDiplomacyInfos", type: {:nullable, {:struct, "FTzCovenantDiplomacyInfos"}}},
    %{name: "PlayerLocationMonitoringInfos", type: {:list, {:struct, "PlayerLocationMonitoringInfo"}}},
    %{name: "CovenantOutLinkInfos", type: {:map, {:enum, "CovenantOutLinkKindType"}, {:struct, "TSharedPtr<FTzCovenantOutLinkInfo"}}},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "CovenantCampaignInfo", type: {:nullable, :message}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "ETzStrongholdGradeType"}},
    %{name: "CovenantRealmTransferInfo", type: {:nullable, {:struct, "FTzCovenantRealmTransferInfo"}}},
    %{name: "LastCovenantRealmTransferDateTime", type: {:nullable, :FDateTime}},
    %{name: "LastPlunderDeclaredDateTime", type: {:nullable, :FDateTime}},
    %{name: "LastRealmIntegratedDateTime", type: {:nullable, :FDateTime}},
    %{name: "NeedChangeName", type: :unknown}
  ],

"OccupiableNpcOccupationUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "OccupationDateTime", type: :FDateTime},
    %{name: "OccupationScore", type: {:int, 4}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :FDateTime}}
  ],

"BasicAchievementPrivateChannelKeepaliveFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatChangeStrongholdBuildingLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmIntegrationBattleWarpReturnRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RealmAccountWarehouseItemStoreRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"BattalionBanishMemberFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantRecommendResourceKindFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}}
  ],

"CheatOverwriteCrossRealmRankingBoardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}}
  ],

"PartyJoinRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"WorldMapPvpBattleKillDeathInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "VictimPvpBattleKillDeathCountInfo", type: {:nullable, :message}},
    %{name: "KillerPvpBattleKillDeathCountInfo", type: {:nullable, :message}}
  ],

"ErFrontServerReauthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErFrontServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"ArquiruneInstallResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CspChannelInfo" => [
    %{name: "Name", type: :FString},
    %{name: "Url", type: :FString},
    %{name: "ChannelId", type: :FString}
  ],

"PartyOptionInfo" => [
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "Name", type: :FString},
    %{name: "Purpose", type: {:enum, "ETzPartyPurposeType"}},
    %{name: "PartyJoiningLimitKind", type: {:enum, "ETzPartyJoiningLimitKindType"}},
    %{name: "MinLevelLimit", type: {:int, 4}},
    %{name: "MinSlayingGradeLimit", type: {:int, 2}},
    %{name: "CanInviteOrJoinApplyOnlyFriendOrSameCovenant", type: :unknown},
    %{name: "IsAutomatedNewComerApproval", type: :unknown},
    %{name: "PartyItemDistributionInfo", type: {:nullable, {:struct, "FTzPartyOrBattalionItemDistributionInfo"}}}
  ],

"CheatClearFollowerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SkillItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "SkillTargetingInfo", type: {:nullable, :message}}
  ],

"GearErodedRestorationResultInfo" => [
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "IsEroded", type: :unknown},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: :unknown},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"BattalionChangePurposeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}}
  ],

"MarketStrongholdTaxInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketStrongholdTaxInfos", type: {:list, {:struct, "MarketStrongholdTaxInfo"}}}
  ],

"CheatRespawnNpcResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"TargetScanShareNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ScannedTargetInfos", type: {:map, {:int, 4}, {:struct, "TSharedPtr<FTzSharedTargetCharacterInfo"}}}
  ],

"CovenantCampaignSectorLeaveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpireTime", type: :FDateTime}
  ],

"CashShopRefundableMerchandiseStorageBoxSlotInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "ToyProductId", type: :FString},
    %{name: "RefundExpirationDateTime", type: :FDateTime},
    %{name: "TargetCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatResetDiscoveredSelfieDoodadSpawnersResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatPaidAttendanceResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "FTzPaidAttendanceInfo"}}}
  ],

"FollowerDispatchAbortRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"CovenantWarehouseUpdateInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}}
  ],

"ThreatPointsNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetGuid", type: {:uint, 8}},
    %{name: "ThreatPoints", type: {:map, {:uint, 8}, {:uint, 8}}}
  ],

"RandomBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "FTzBossSpawnInfo"}},
    %{name: "BossRandomSpawnDataCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcGuid", type: {:uint, 8}}
  ],

"CovenantGoodsRegistrationManagementModeCommandRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "Command", type: {:enum, "ETzShopManagementModeCommandType"}}
  ],

"AnniversaryAchievementPrivateChannelOpenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PrivateChannelKeepaliveInterval_sec", type: {:int, 4}}
  ],

"NoticeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Message", type: :FString}
  ],

"MailStrongholdOccupiedLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "HeadquartersNpcCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantConfirmJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"BuildingWorkObjectiveInfo" => [
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}},
    %{name: "CuidValue01", type: {:struct, "FTzCuid"}},
    %{name: "IntegerValue01", type: {:uint, 8}},
    %{name: "IntegerValue02", type: {:uint, 8}}
  ],

"CharacterRecordInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "CharacterNameInfo", type: {:nullable, {:struct, "FTzCharacterNameInfo"}}},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}},
    %{name: "IsPvpStatsAffectedCharacter", type: :unknown}
  ],

"RPCCancellingMessage" => [
    %{name: "__base__", type: {:struct, "RPCMessage"}},
    %{name: "TozRPC.RPCCancellingMessage", type: :unknown}
  ],

"SkillAffectDamageDistributionInfo" => [
    %{name: "TargetGuid", type: {:uint, 8}},
    %{name: "HealthPointsDelta", type: {:int, 4}},
    %{name: "ProtectedDamage", type: {:int, 4}}
  ],

"CovenantCampInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantCount", type: {:int, 4}},
    %{name: "TotalCovenantMemberCount", type: {:int, 4}},
    %{name: "UsingCapacity", type: {:int, 4}},
    %{name: "LimitCapacity", type: {:int, 4}}
  ],

"CheatPlayerLocationChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FindClosestLocationOnNavMeshResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ClosestLocationOnNavMeshRegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ClosestLocationOnNavMesh_cm", type: :FVector}
  ],

"CovenantBattalionExpeditionFailNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"ErTozMessage" => [
    %{name: "__base__", type: :unknown}
  ],

"StrongholdPlayerCancelTeleportNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"GoldHistoryInfo" => [
    %{name: "IncomeHistories", type: {:map, {:enum, "GoldIncomeKindType"}, {:uint, 8}}},
    %{name: "ExpenseHistories", type: {:map, {:enum, "GoldExpenseKindType"}, {:uint, 8}}}
  ],

"CheatCreateAndSelectMountItemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}}
  ],

"BuildingInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterInfo"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "FTzBuildingWorkInfo"}}},
    %{name: "BuildingAccessPermissionKind", type: {:enum, "ETzBuildingAccessPermissionKindType"}},
    %{name: "IsBaseBuildingExist", type: :unknown},
    %{name: "IsBlocked", type: :unknown},
    %{name: "LastChangeDateTime", type: :FDateTime}
  ],

"BattalionSummaryInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzBattalionOptionInfo"}}},
    %{name: "BattalionLeaderInfo", type: {:nullable, {:struct, "FTzBattalionMemberInfo"}}},
    %{name: "AverageMemberLevel", type: {:int, 4}},
    %{name: "MemberCount", type: {:int, 4}},
    %{name: "BattalionLeaderLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "IsJoinable", type: :unknown}
  ],

"RealmIntegrationBattleResultUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "RealmResults", type: {:list, {:struct, "RealmIntegrationBattleRealmResult"}}}
  ],

"DeathPenaltyRecordInfoAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeathPenaltyRecordInfo", type: {:nullable, :message}}
  ],

"CovenantSupportBuildingWorkInfo" => [
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "OrderInfo", type: {:nullable, {:struct, "FTzBuildingWorkOrderInfo"}}}
  ],

"PvpRecordAttackerPlayerInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpRecordPlayerInfo"}},
    %{name: "Damage", type: {:uint, 8}},
    %{name: "AttackerKind", type: {:enum, "ETzPvpRecordAttackerKindType"}},
    %{name: "LastAttackDateTime", type: :FDateTime}
  ],

"PartyDismissNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyDismissReason", type: {:enum, "ETzPartyLeaveOrDismissReasonType"}}
  ],

"ErLoginServerInitialAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErLoginServerAuthenticateInfo"}},
    %{name: "Market", type: {:enum, "ETzMarketType"}},
    %{name: "AuthenticationKind", type: {:enum, "ETzAuthenticationKindType"}},
    %{name: "OsKind", type: {:enum, "ETzOsKindType"}},
    %{name: "OsVersion", type: :FString},
    %{name: "DeviceModel", type: :FString},
    %{name: "Adid", type: :FString},
    %{name: "Idfv", type: :FString},
    %{name: "CountryCode", type: :FString},
    %{name: "Language", type: :FString},
    %{name: "AppVersion", type: :FString},
    %{name: "OsType", type: {:enum, "ETzNxLogOsType"}},
    %{name: "OsName", type: :FString}
  ],

"MonsterBookNodeReceiveLevelUpRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}}
  ],

"DateTimeRangeInfo" => [
    %{name: "FromDateTime", type: :FDateTime},
    %{name: "ToDateTime", type: :FDateTime}
  ],

"RegisterReturnPlaceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegisteredReturnPlaceDoodadSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"TalkNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "TalkCuid", type: {:struct, "FTzCuid"}}
  ],

"BattalionSetAssemblyLocationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"FavoriteCraftRecipeInfo" => [
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "RegisterDateTime", type: :FDateTime}
  ],

"SeamlessDoodadInfo" => [
    %{name: "__base__", type: {:struct, "FTzSeamlessEntityInfo"}}
  ],

"BattalionConfirmJoinApplicationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}}
  ],

"CheatUninstallAllArquirunesResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveSetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "StrategicObjectiveTargetGuidList", type: {:list, {:uint, 8}}}
  ],

"StrongholdWorldMapGeneralShopInfo" => [
    %{name: "GeneralShopLevel", type: {:int, 4}},
    %{name: "ServiceState", type: {:enum, "ETzShopServiceStateType"}},
    %{name: "RegisteredGoodsInfos", type: {:list, {:struct, "RegisteredGoodsInfo"}}}
  ],

"ServerDrivenPlayRecordsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Infos", type: {:list, {:struct, "ServerDrivenPlayRecordsInfo"}}}
  ],

"PlayerInitializeInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozInitializeMessage"}},
    %{name: "PlayerInitializeInfo", type: {:nullable, {:struct, "FTzPlayerInitializeInfo"}}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "FTzCovenantInfo"}}},
    %{name: "CovenantBattalionInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantBattalionNotifyInfo"}}},
    %{name: "FirstLoginAsPlayerDateTime", type: {:nullable, :FDateTime}},
    %{name: "ReturningUserReturnedDateTime", type: {:nullable, :FDateTime}},
    %{name: "ContentsActivationFlags", type: {:list, :bool}}
  ],

"MultipleItemSelector" => [
    %{name: "__base__", type: {:struct, "FTzItemSelector"}}
  ],

"RealmAccountDeleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"PartyOptionUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "FTzPartyOptionInfo"}}}
  ],

"SettlementInfo" => [
    %{name: "TaxRate_pe2", type: {:int, 4}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "SettledCurrencyAmount_pe2", type: {:uint, 8}}
  ],

"CheatStrongholdBattlePhaseTransitionEventResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"DeleteFromChatBlockListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatEntityGuid", type: {:uint, 8}}
  ],

"StrongholdBattleStatisticsUpdateInfo" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleStatisticsEventInfo"}},
    %{name: "StrongholdBattleStatisticsInfo", type: {:nullable, :message}}
  ],

"CovenantBattalionExpeditionDeployStopLivingTotemFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"GoodsBuyCountInfo" => [
    %{name: "GoodsCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:uint, 8}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"CheatDeleteChatEntityResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"DeathPenaltyAutoRecoveryInfo" => [
    %{name: "IsFreeRecovery", type: :unknown},
    %{name: "RemainingCount", type: {:int, 4}}
  ],

"TlsLikeEncryptClientHello" => [
    %{name: "unknown_name", type: :unknown}
  ],

"CheatCraftCovenantLivingTotemResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StanceAcquireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InstallAndSwitchResultCode", type: {:enum, "ETzResultCodeType"}},
    %{name: "AcquiredStance", type: {:enum, "ETzStanceType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "InstalledStance", type: {:enum, "ETzStanceType"}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :unknown}
  ],

"MarketFavoriteItemInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}}
  ],

"PlayerAutoUseInfo" => [
    %{name: "ItemCuids", type: {:list, :cuid}},
    %{name: "RootSkillCuids", type: {:list, :cuid}}
  ],

"CovenantCampBuildingCraftRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingCraftCuidAndCountInfo", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"TimeCrevicePlayerPvpScoreRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpScoreRankingViewInfo"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantDiplomacyInfo"}},
    %{name: "SeasonCuid", type: {:struct, "FTzCuid"}},
    %{name: "MatchingGroupCuid", type: {:struct, "FTzCuid"}},
    %{name: "RequestCovenantRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResponseCovenantRealmCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantCampOfficeInfo" => [
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "HavenOperationInfo", type: {:nullable, {:struct, "FTzHavenOperationInfo"}}},
    %{name: "CovenantCampOfficeScaleInfo", type: {:nullable, {:struct, "FTzCovenantCampOfficeScaleInfo"}}},
    %{name: "CovenantCampChangeCooldownExpireDateTime", type: :FDateTime},
    %{name: "CovenantCampOccupancyDateTime", type: :FDateTime}
  ],

"TutorialCompleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"ReturnPlaceDoodadInfo" => [
    %{name: "__base__", type: {:struct, "FTzInteractableDoodadInfo"}}
  ],

"ServerDrivenPlayHuntingSiteChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HuntingSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "StartLocation_cm", type: :FVector},
    %{name: "Reason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
  ],

"RedrawableItemAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemAdditionalInfo"}},
    %{name: "ExcludedItemCuidsWhenRedrawing", type: {:list, :cuid}}
  ],

"MailSendCountQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatEnchantItemResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingAccessPermissionNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSubscriptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzBuildingSubscriptionInfo"}}}
  ],

"SummonedNpcDeathNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}}
  ],

"PartyRejectInvitationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"CovenantCurrencyInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "CurrencyUpdateInfo", type: {:nullable, {:struct, "FTzPointCurrencyContainerUpdateInfo"}}},
    %{name: "CovenantTaxAcquireInfo", type: {:nullable, {:struct, "FTzCovenantTaxAcquireInfo"}}}
  ],

"CovenantGoodsRegistrationManagementModeKickoutNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}}
  ],

"CovenantTradeGoodsSalesInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantTradeGoodsInfo"}},
    %{name: "SalesState", type: {:enum, "ETzCovenantTradeSalesStateType"}},
    %{name: "NetProfit", type: {:uint, 8}}
  ],

"ShopSettingsInfo" => [
    %{name: "AutoBuySettingsInfo", type: {:nullable, {:struct, "FTzAutoBuySettingsInfo"}}},
    %{name: "AutoSellSettingsInfo", type: {:nullable, {:struct, "FTzAutoSellSettingsInfo"}}}
  ],

"EntanglementTriggerWorldActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"SkillResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsExecutingBegun", type: :unknown}
  ],

"RealmAccountWarehouseExpandResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MaxRealmAccountWarehouseSlotCount", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"MailCovenantPlunderLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantAssetMigrationInfo", type: {:nullable, {:struct, "FTzCovenantAssetMigrationInfo"}}}
  ],

"CheatSpawnTerritoryBossRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
  ],

"SeasonPassLevelRewardAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantParticipationInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "LivingTotemLocation", type: :FVector},
    %{name: "LivingTotemMovePathInfo", type: {:nullable, {:struct, "FTzMovePathInfo"}}},
    %{name: "StoppedLivingTotemDeployTime", type: {:nullable, :FDateTime}}
  ],

"InstanceEventActionStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ActionCuid", type: {:struct, "FTzCuid"}}
  ],

"PartyConfirmJoinApplicationFailNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmPlayerId", type: {:struct, "FTzRealmPlayerId"}}
  ],

"CharacterPublicStatsInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterStatsInfo"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "HealthPoints", type: {:uint, 8}},
    %{name: "MaxHealthPoints", type: {:uint, 8}},
    %{name: "WalkSpeed_cmpsec", type: {:int, 2}},
    %{name: "WalkAngularSpeed_radpsec", type: :float},
    %{name: "RunSpeed_cmpsec", type: {:int, 2}},
    %{name: "RunAngularSpeed_radpsec", type: :float}
  ],

"CovenantDiplomacySummaryInfo" => [
    %{name: "AllianceCovenantGuids", type: :unknown},
    %{name: "HostilityCovenantGuids", type: :unknown}
  ],

"CheatChangeFocusTargetManaPointsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ExpeditionOpenNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatNpcCombatLogNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Message", type: :FString}
  ],

"CheatAcquireStanceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StanceKind", type: {:enum, "ETzStanceKindType"}}
  ],

"QuestMissionCompletableLocationCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestMissionCuid", type: {:struct, "FTzCuid"}}
  ],

"CollectionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "RewardStatCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemAddInfo", type: {:nullable, {:struct, "FTzItemAddInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :unknown}
  ],

"PlayerEmergencyEscapeInfo" => [
    %{name: "LastEscapeDateTime", type: :FDateTime},
    %{name: "DailyUseCount", type: {:int, 4}}
  ],

"WorldEventInfo" => [
    
  ],

"InGameNotificationDeleteCategoryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InGameNotificationCategory", type: {:enum, "ETzInGameNotificationCategoryType"}}
  ],

"DistrictFavorBossInfo" => [
    %{name: "BossChaseGauge", type: {:int, 4}},
    %{name: "IsFavorBossActivated", type: :unknown}
  ],

"ItemCreateAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemAdditionalInfo"}},
    %{name: "GearEnhancementGrade", type: {:int, 2}}
  ],

"StrongholdProtectionInfo" => [
    %{name: "ProtectionStartDateTime", type: {:nullable, :FDateTime}},
    %{name: "ProtectionEndDateTime", type: {:nullable, :FDateTime}},
    %{name: "ProtectionRestrictionEndDateTime", type: {:nullable, :FDateTime}},
    %{name: "ReservationDateTime", type: {:nullable, :FDateTime}}
  ],

"CovenantUpdateNoticeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Notice", type: :FString},
    %{name: "HarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"HealthPointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"OccupiableNpcInactivityExpirationDateTimeUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "InactivityExpirationDateTime", type: {:nullable, :FDateTime}}
  ],

"CheatOverwriteRankingBoardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "ETzStrongholdBattleAttackPhaseType"}},
    %{name: "BuildingSubscriptionInfos", type: {:list, {:struct, "BuildingSubscriptionInfo"}}},
    %{name: "GeneralShopInfo", type: {:nullable, {:struct, "FTzShopInfo"}}},
    %{name: "CovenantShopInfo", type: {:nullable, {:struct, "FTzShopInfo"}}}
  ],

"CovenantShopHistoryInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantHistoryInfo"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"ConvenienceOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ConvenienceOptionInfo", type: {:nullable, {:struct, "FTzConvenienceOptionInfo"}}}
  ],

"CovenantQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfo", type: {:nullable, {:struct, "FTzCovenantSummaryInfo"}}},
    %{name: "IsJoinApplied", type: :unknown},
    %{name: "IsInvited", type: :unknown},
    %{name: "LeaderCustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "LeaderCostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}},
    %{name: "LeaderLevel", type: {:int, 4}},
    %{name: "LeaderGender", type: {:enum, "ETzGenderType"}},
    %{name: "LeaderClasse", type: {:enum, "ETzClasseType"}}
  ],

"StrongholdBattleTotalHealDoneStatisticsInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TotalHealDone", type: {:uint, 8}}
  ],

"PlayerPrivateStatsInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}}
  ],

"GearBatchCraftResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}},
    %{name: "CraftResultInfos", type: {:list, {:struct, "CraftResultInfo"}}},
    %{name: "CraftCountInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCraftCountInfo"}}}
  ],

"BuffInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "StackCount", type: {:int, 4}},
    %{name: "CreatedTime", type: :FDateTime},
    %{name: "ExpireTime", type: :FDateTime},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "HealthPoints", type: {:uint, 8}},
    %{name: "SpellstoneAdditionalStatsInfo", type: {:nullable, {:struct, "FTzSpellstoneAdditionalStatsInfo"}}}
  ],

"RealmIntegrationCancelRealmAccountDeletionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"StrongholdBattleCovenantBattalionMemberConveneNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "ExpireTime", type: :FDateTime}
  ],

"TutorialHoldRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialFilterKind", type: {:enum, "ETzTutorialFilterKindType"}},
    %{name: "FilterValue", type: :FString}
  ],

"QuestsInfo" => [
    %{name: "RewardedQuests", type: {:map, :cuid, :datetime}},
    %{name: "ActiveQuestProgressInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzQuestProgressInfo"}}},
    %{name: "RepeatQuestCancelRecordInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzQuestCancelRecordInfo"}}},
    %{name: "ActiveFavorInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzFavorInfo"}}},
    %{name: "ActiveFavorMissionInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzFavorMissionInfo"}}},
    %{name: "FavorRefreshCostIndex", type: {:int, 4}},
    %{name: "DailyAcceptableFavorRemainingCount", type: {:int, 4}},
    %{name: "LastProceedEpisodeCuidsByEpisodeGroup", type: {:map, {:enum, "EpisodeGroupType"}, :cuid}}
  ],

"InstanceFieldDisallowedInPvpNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CausedAutomaticallyProceedingQuestVuid", type: {:struct, "FTzVuid"}}
  ],

"CheatMonsterBookResetCategoryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "MonsterBookInfo", type: {:nullable, {:struct, "FTzMonsterBookInfo"}}}
  ],

"CovenantRubyShopBuyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"WarpReturnResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatChangeCrossRealmMaintenanceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionContentKind", type: {:enum, "ETzRegionContentKindType"}},
    %{name: "IsUnderMaintenance", type: :unknown}
  ],

"CovenantSynchronizeMemberLevelNotify" => [
    %{name: "__base__", type: {:struct, "FTzCovenantSynchronizeMemberNotify"}},
    %{name: "Level", type: {:int, 4}}
  ],

"MailSendConfirmRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatTeleportToSpawnerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"RegionContentPlayTimeInfoBySec" => [
    %{name: "BaseRemainingDuration_sec", type: {:int, 4}},
    %{name: "RechargedRemainingDuration_sec", type: {:int, 4}}
  ],

"CheatOpenFogRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FogCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatCreateAndEquipGearsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "FTzPlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}}
  ],

"PubSubChannelInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelDataNotify"}}
  ],

"CovenantBattalionExpeditionLivingTotemDepartureFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatOverwriteRankingBoardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantBattalionNotifyInfo" => [
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "IsNotExposeToBattalionList", type: :unknown}
  ],

"ItemTransmutationCurrencyRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TransmutationCurrencyRewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ShowLevelUpEffectNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LastLevelForLevelUpNotify", type: {:int, 4}}
  ],

"BattalionSetAssemblyLocationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PvpBattleCovenantId" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"DiplomacyChatCovenantSummaryInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "DiplomacyChatCovenantSummaryInfos", type: {:list, {:struct, "DiplomacyChatCovenantSummaryInfo"}}}
  ],

"PlayerRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzRankingViewInfo"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "Name", type: :FString},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantName", type: :FString}
  ],

"ShopAutoBuySettingUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}},
    %{name: "AutoBuyInfos", type: {:list, {:struct, "AutoBuyInfo"}}}
  ],

"CostumeInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}}
  ],

"QuickSlotModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuickSlotIndex", type: {:enum, "ETzQuickSlotIndexType"}},
    %{name: "QuickSlotInfo", type: {:nullable, {:struct, "FTzQuickSlotInfo"}}}
  ],

"CrossRealmSeasonTimeCreviceEntryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzCrossRealmSeasonEntryInitialDataNotify"}},
    %{name: "IsFull", type: :unknown}
  ],

"ItemCuidSelector" => [
    %{name: "__base__", type: {:struct, "FTzMultipleItemSelector"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"CheatRemoveAllWorldMapMarkerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}}
  ],

"CheatSetStrongholdOccupyingCovenantRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantVuid", type: {:nullable, {:struct, "FTzVuid"}}}
  ],

"ItemExpireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpiredItemCuids", type: :unknown}
  ],

"RealmTransferInfo" => [
    %{name: "RealmTransferCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmTransferCount", type: {:int, 4}},
    %{name: "LastRealmTransferDateTime", type: {:nullable, :FDateTime}}
  ],

"CovenantTradeSalesListQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GoodsSalesInfos", type: {:list, {:struct, "CovenantTradeGoodsSalesInfo"}}}
  ],

"NavMeshTileLayerInfo" => [
    %{name: "LayerNumber", type: {:int, 4}},
    %{name: "CrcChecksum", type: {:uint, 4}},
    %{name: "TileData", type: :FString}
  ],

"CheatAcquireAllFollowerPieceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"ShopSellResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ClientDrivenQuestMissionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestMissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "TargetGuidList", type: {:list, {:uint, 8}}}
  ],

"BattalionDismissNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "BattalionPurposeKind", type: {:enum, "ETzBattalionPurposeKindType"}}
  ],

"StackableItemUpdateInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "StackCountDelta", type: {:uint, 8}},
    %{name: "AcquiredDateTime", type: :FDateTime}
  ],

"CheatPaidAttendanceResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatStrongholdBattleCompleteAttackPhaseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantGoodsRegistrationManagementModeCommandResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "RegisteredGoodsList", type: {:list, {:struct, "RegisteredGoodsInfo"}}},
    %{name: "ManagementModeKeepaliveInterval_sec", type: {:int, 4}}
  ],

"CheatSetRealmAccountPresentRegisterBlockResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleLivingTotemDeathNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "DestroyerName", type: :FString},
    %{name: "DestroyerCovenantName", type: :FString}
  ],

"FindPathRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :FVector},
    %{name: "Destination_cm", type: :FVector},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"CovenantSynchronizeMemberInfosResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantMemberInfo"}}}
  ],

"CovenantBattalionExpeditionLivingTotemDepartureNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DepartureHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "ArrivalSealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatRealmIntegrationConvertToIntegratedRealmAccountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleDeclarePrerequisitesQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "HavenCuidToTotalTravelDistances", type: {:map, :cuid, :float}}
  ],

"CheatExpeditionCloseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"ArquiAttunementLevelUpResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiAttunementCuid", type: {:struct, "FTzCuid"}},
    %{name: "NewLevel", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"GearSlotInfo" => [
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "GearSlot", type: {:enum, "ETzGearSlotType"}}
  ],

"CraftQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SkillCancelChargingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CreateDiplomacyChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Name", type: :FString}
  ],

"AetherOptionLevelUpResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AetherOptionCuid", type: {:struct, "FTzCuid"}},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"RegionContentTimeRechargingItemUseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "FTzItemGuidSelector"}}}
  ],

"PlayerGameOptionInfo" => [
    %{name: "CombatOptionInfo", type: {:nullable, {:struct, "FTzCombatOptionInfo"}}},
    %{name: "ConvenienceOptionInfo", type: {:nullable, {:struct, "FTzConvenienceOptionInfo"}}},
    %{name: "DisplayOptionInfo", type: {:nullable, {:struct, "FTzDisplayOptionInfo"}}},
    %{name: "GameNotificationOptionInfo", type: {:nullable, {:struct, "FTzGameNotificationOptionInfo"}}},
    %{name: "ChatOptionInfo", type: {:nullable, {:struct, "FTzChatOptionInfo"}}},
    %{name: "InventoryOptionInfo", type: {:nullable, {:struct, "FTzInventoryOptionInfo"}}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzPlayerBattalionOptionInfo"}}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "FTzServerDrivenPlayOptionInfo"}}},
    %{name: "AutoDonateSettingOptionInfo", type: {:nullable, {:struct, "FTzAutoDonateSettingOptionInfo"}}},
    %{name: "ControlOptionInfo", type: {:nullable, {:struct, "FTzControlOptionInfo"}}},
    %{name: "MonsterBookConsumeItemOptionInfo", type: {:nullable, {:struct, "FTzMonsterBookConsumeItemOptionInfo"}}}
  ],

"PlayerSkillAcquireResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "AutoUseRootSkillCuids", type: {:list, :cuid}}
  ],

"AnniversaryPointAndRankingInfo" => [
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryEndDateTime", type: :FDateTime},
    %{name: "AnniversaryPoint", type: {:uint, 8}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}}
  ],

"CraftResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "CraftResultInfos", type: {:list, {:struct, "CraftResultInfo"}}},
    %{name: "CraftCountInfo", type: {:nullable, {:struct, "FTzCraftCountInfo"}}}
  ],

"SingleItemSelector" => [
    %{name: "__base__", type: {:struct, "FTzItemSelector"}}
  ],

"SpellstoneAdditionalSkillStatsInfo" => [
    %{name: "ManaPointsCostDecreaseAmount", type: {:int, 4}},
    %{name: "ManaPointsCostDecreaseRatio_pe4", type: {:int, 4}},
    %{name: "CooldownDurationDecreaseAmount_msec", type: {:int, 4}},
    %{name: "CooldownDurationDecreaseRatio_pe4", type: {:int, 4}},
    %{name: "FeedbackHealthPointsAffectRatioIncreaseRatio", type: :float},
    %{name: "CharacterStatChangesDuringSkillProgress", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"RegisteredGoodsUpdateInfo" => [
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCount", type: {:uint, 8}}
  ],

"StrongholdBattleAttackDeclareNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackInfo", type: {:nullable, {:struct, "FTzStrongholdBattleAttackInfo"}}}
  ],

"CheatForceSynchronizeBuildingWorkResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MailFollowerGatheringWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailFollowerWorkLayoutInfo"}},
    %{name: "GatheringSiteSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "GainedRewardItemIndexWithCount", type: {:nullable, :message}}
  ],

"DividendResultInfo" => [
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "TotalDistributionAmount", type: {:uint, 8}}
  ],

"MailsReceiveAttachmentsInTabRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "UpperBoundDateTime", type: :FDateTime}
  ],

"ChatServerReadyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatPaidAttendanceAddAttendanceCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "FTzPaidAttendanceInfo"}}}
  ],

"CovenantSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}}
  ],

"PartySynchronizeMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatTeleportToHavenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "Radius_cm", type: :float}
  ],

"PlayerCovenantWatchAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatAnniversaryAchievementResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"PartySummaryInfo" => [
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "IsEnabled", type: :unknown},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "FTzPartyOptionInfo"}}},
    %{name: "PartyLeaderGuid", type: {:uint, 8}},
    %{name: "PartyMemberCoreInfos", type: {:list, {:struct, "PartyMemberCoreInfo"}}},
    %{name: "TargetLocationInfos", type: {:list, {:struct, "TargetLocationInfo"}}}
  ],

"RealmIntegrationBattleBossKillNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "BossCuid", type: {:struct, "FTzCuid"}},
    %{name: "Score", type: {:uint, 8}}
  ],

"PvpBattlePlayerInfo" => [
    %{name: "PvpBattlePlayerId", type: {:struct, "FTzPvpBattlePlayerId"}},
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "PvpBattleCovenantId", type: {:struct, "FTzPvpBattleCovenantId"}}
  ],

"DeathPenaltyLastAutoRecoveryNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeathPenaltyAutoRecoveryInfo", type: {:nullable, :message}}
  ],

"SelfieDoodadInfo" => [
    %{name: "__base__", type: {:struct, "FTzInteractableDoodadInfo"}}
  ],

"PlayerCampaignInfo" => [
    %{name: "ActiveCampaignProgressInfos", type: {:list, :cuid}},
    %{name: "CampaignTicketInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCampaignTicketInfo"}}}
  ],

"ServerDrivenPlayInfo" => [
    %{name: "HuntingSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "StartLocation_cm", type: :FVector},
    %{name: "StartTime", type: :FDateTime},
    %{name: "StartUsingDailyDurationTime", type: :FDateTime},
    %{name: "RewardInfo", type: {:nullable, :message}},
    %{name: "AutoResupplyUsedCount", type: {:int, 4}},
    %{name: "CurrentStateInfo", type: {:nullable, :message}}
  ],

"CheatClearGearRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"TozPong" => [
    %{name: "Nonce", type: {:int, 4}},
    %{name: "ServerUtcNow", type: :unknown},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"PvpRecordNpcInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpRecordCharacterInfo"}},
    %{name: "Cuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantTextHistoryInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantHistoryInfo"}},
    %{name: "Text", type: :FString}
  ],

"CheatUpdatePlayerCampaignTicketCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CampaignTicketCuid", type: {:struct, "FTzCuid"}},
    %{name: "UpdateCount", type: {:int, 4}}
  ],

"ExpeditionJoinBattalionNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"CheatSpawnOccupiableNpcBossResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantGiftSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AddedGiftBoxInfos", type: {:list, {:struct, "CovenantGiftBoxInfo"}}},
    %{name: "RemovedGiftBoxInfos", type: {:list, {:uint, 8}}},
    %{name: "UpdateGiftBoxInfos", type: {:list, {:struct, "CovenantGiftBoxInfo"}}}
  ],

"CheatTestRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"CheatEnterCovenantCampaignResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionQueryMemberCandidateListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatInstanceEventRunActionsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EventCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantReinforcementInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ReinforcementInfos", type: {:list, {:struct, "ReinforcementInfo"}}},
    %{name: "ReceivedReinforcementInfos", type: {:list, {:struct, "ReinforcementInfo"}}}
  ],

"CheatChangeSkillCooldownDurationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "Duration_msec", type: {:int, 4}}
  ],

"ExpeditionSummaryInfo" => [
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "EndDateTime", type: {:nullable, :FDateTime}},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"BanInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "BanKind", type: {:enum, "ETzBanKindType"}},
    %{name: "BanReasonKind", type: {:enum, "ETzBanReasonKindType"}},
    %{name: "StartDateTime", type: :FDateTime},
    %{name: "EndDateTime", type: :FDateTime},
    %{name: "Reason", type: :FString}
  ],

"BattalionLeaveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SpawnLayerActivateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsPermanentSpawnLayer", type: :unknown},
    %{name: "SpawnLayerCuid", type: {:struct, "FTzCuid"}}
  ],

"CspSupporterInfo" => [
    %{name: "CreatorCode", type: :FString},
    %{name: "CreatorStatus", type: {:int, 4}},
    %{name: "SupportExpireTime", type: :FDateTime},
    %{name: "SupporterStatus", type: {:int, 4}},
    %{name: "MemberSn", type: :FString},
    %{name: "ChannelInfos", type: {:list, {:struct, "CspChannelInfo"}}},
    %{name: "CreatorGrade", type: :FString},
    %{name: "SupporterCount", type: {:int, 4}},
    %{name: "AboutMe", type: :FString}
  ],

"CheatFavorBossChaseGaugeChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "BossChaseGauge", type: {:int, 4}}
  ],

"CovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FavorRefreshResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "FavorList", type: {:list, {:struct, "FavorInfo"}}},
    %{name: "FavorMissionList", type: {:list, {:struct, "FavorMissionInfo"}}},
    %{name: "RefreshCostIndex", type: {:int, 4}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantWatchRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :FString}
  ],

"BasicAchievementPrivateChannelOpenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SynchronizeStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatChangeCovenantNameResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatKillFocusedCharacterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantUpdateJoinKindFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantCreateCovenantMemberRoleResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :FString}
  ],

"SkillUseOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillUseOptionInfo", type: {:nullable, {:struct, "FTzSkillUseOptionInfo"}}}
  ],

"CheatTestGearEnchantOptionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CostItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "GearEnchantOptionGrades", type: {:map, {:int, 2}, {:enum, "GearEnchantGradeType"}}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"RealmAccountPresentItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "Password", type: :FString}
  ],

"ThreadMailHeadInfo" => [
    %{name: "LatestCreateDateTime", type: :FDateTime},
    %{name: "From", type: :FString},
    %{name: "Title", type: :FString}
  ],

"CheatInitializeQuestDataRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MailStrongholdMigrationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DiscardStrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantRealmTransferRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MailFollowerBuildingWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailFollowerWorkLayoutInfo"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}}
  ],

"MarketGoodsSoldNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "SettlementInfo", type: {:nullable, {:struct, "FTzMarketSettlementInfo"}}},
    %{name: "TransactionDateTime", type: :FDateTime}
  ],

"WarpResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatPlayerDeleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AttackTargetNotify" => [
    %{name: "__base__", type: {:struct, "FTzAttackTargetRequest"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"CovenantDisplayInfo" => [
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"QuestTeleportToReentryLocationCastNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"StrategicObjectiveInfo" => [
    %{name: "StrategicObjectiveTargetInfo", type: {:nullable, {:struct, "FTzStrategicObjectiveTargetInfo"}}},
    %{name: "SquadOrderList", type: {:list, {:int, 4}}}
  ],

"StrongholdTeleportToAltarRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantCampaignGuid", type: {:uint, 8}}
  ],

"BattalionOptionInfo" => [
    %{name: "PurposeKind", type: {:enum, "ETzBattalionPurposeKindType"}},
    %{name: "PurposeText", type: :FString},
    %{name: "IsAllowVolunteer", type: :unknown},
    %{name: "BattalionVolunteerAllowKind", type: {:enum, "ETzBattalionVolunteerAllowKindType"}},
    %{name: "IsAllowVolunteerJoinApply", type: :unknown},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown},
    %{name: "IsNotExposeToBattalionList", type: :unknown},
    %{name: "BattalionItemDistributionInfo", type: {:nullable, {:struct, "FTzPartyOrBattalionItemDistributionInfo"}}}
  ],

"RankingViewInfo" => [
    
  ],

"PartyBanishMemberFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"BattalionConfirmCheckReadyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MemberGuid", type: {:uint, 8}},
    %{name: "MemberReadyKind", type: {:enum, "ETzBattalionMemberReadyKindType"}}
  ],

"PartyQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "Purpose", type: {:enum, "ETzPartyPurposeType"}}
  ],

"BuildingWorkRequestBaseInfo" => [
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "RequestPlayerGuid", type: {:uint, 8}},
    %{name: "RequestPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "IsRecommended", type: :unknown},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"CovenantTradeDealRecordQueryInfo" => [
    %{name: "DealRecordKind", type: {:enum, "ETzCovenantTradeDealRecordKindType"}},
    %{name: "SkipTopRowCount", type: {:int, 4}}
  ],

"AnniversaryPointCovenantRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantRankingViewInfo"}},
    %{name: "AnniversaryPoint", type: {:uint, 8}}
  ],

"QuickSlotPageInfo" => [
    %{name: "PageOfRightQuickSlot", type: {:int, 4}},
    %{name: "PageOfMiddleQuickSlot", type: {:int, 4}}
  ],

"RedrawableItemInventoryInfo" => [
    %{name: "RedrawableItemInfos", type: {:list, {:struct, "RedrawableItemInfo"}}}
  ],

"MonsterBookNodeAnalysisLockSwitchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsAnalysisLocked", type: {:nullable, "bVar8=*(char*)(in_x0+0x21)=='\\0';lVar1=4;if(bVar8){lVar1=5;}puVar2=&DAT_0901b5c8;if(bVar8){puVar2=(undefined8*)\"false\";}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar1<<1);__memcpy_chk((ulong)&local_198|1,puVar2,lVar1,0x17);uVar10=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar1)=0;}uVar3=local_190;pcVar5=local_188;if((uVar10&1)==0){uVar3=uVar10>>1;pcVar5=(char*)((long)&local_198+1);}std::__ndk1::__put_character_"}}
  ],

"TerritoryInfo" => [
    %{name: "__base__", type: {:struct, "FTzDistrictInfo"}},
    %{name: "OccupyingCovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "OccupyingCovenantName", type: :FString},
    %{name: "OccupyingCovenantLevel", type: {:int, 4}},
    %{name: "TerritoryEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "DeployedLivingTotemCuid", type: {:struct, "FTzCuid"}},
    %{name: "LeadingCovenantCampEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "EntanglementGauge", type: {:int, 4}},
    %{name: "BuildingLevels", type: {:map, {:enum, "BuildingKindType"}, {:int, 4}}},
    %{name: "AddNpcCraftGreatSuccessRatio_pe4", type: {:int, 4}},
    %{name: "StrongholdProtectionExpirationDateTime", type: :FDateTime},
    %{name: "ErosionItemConfigurationInfo", type: {:nullable, {:struct, "FTzTerritoryErosionItemConfigurationInfo"}}},
    %{name: "NoticeInfo", type: {:nullable, {:struct, "FTzTerritoryNoticeInfo"}}},
    %{name: "ContaminationInfo", type: {:nullable, {:struct, "FTzContaminationInfo"}}},
    %{name: "TaxInfo", type: {:nullable, {:struct, "FTzTaxInfo"}}},
    %{name: "StrongholdBuildingAccessPermissionKinds", type: {:map, {:enum, "BuildingKindType"}, {:enum, "BuildingAccessPermissionKindType"}}},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "ETzStrongholdBattleAttackPhaseType"}},
    %{name: "HavenEventInfos", type: {:map, :cuid, {:struct, "TMap<FTzCuid"}}}
  ],

"CovenantJoinApplyInfoUpdatedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"AccelerationUseHavenWorkRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "AccelerationActionKind", type: {:enum, "ETzAccelerationActionKindType"}},
    %{name: "CuidAndCountInfo", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}}
  ],

"EntityInfo" => [
    %{name: "Entity", type: {:enum, "ETzEntityType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "Faction", type: {:enum, "ETzFactionType"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "AffiliatedStrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantUpdateOutLinkRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantOutLinkKind", type: {:enum, "ETzCovenantOutLinkKindType"}},
    %{name: "Uri", type: :FString}
  ],

"CrossRealmCovenantDiplomacyCancelAllianceApplicationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"ClanSelectionQuestAcceptResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestCuid", type: {:struct, "FTzCuid"}}
  ],

"ServerDrivenPlayAppCloseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"QuestTeleportToReentryLocationCastCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"TozTimeReconcile" => [
    %{name: "TozNetwork.Protocol.TozTimeReconcile", type: :unknown}
  ],

"BattalionMemberCharacterStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionMemberInfoSynchronizeNotify"}},
    %{name: "State", type: {:enum, "ETzCharacterStateType"}}
  ],

"StrongholdBuildingWorkInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkInfoChangeReason", type: {:enum, "ETzBuildingWorkInfoChangeReasonType"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "FTzBuildingWorkInfo"}}}
  ],

"MarketSellReregisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "IsSuccessByGoodsGuids", type: {:map, {:uint, 8}, :bool}},
    %{name: "FailedGoodsGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"FavoriteStatKindsResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "StatView", type: {:enum, "ETzAdjustableStatViewType"}}
  ],

"InteractionCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}},
    %{name: "Reason", type: {:enum, "ETzInteractionCancelReasonKindType"}}
  ],

"GameOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "GameOptionInfo", type: {:nullable, :message}}
  ],

"PartyConfirmJoinApplicationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "FTzRealmPlayerId"}},
    %{name: "IsApproved", type: :unknown}
  ],

"CheatCommandPresetRelayRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PresetTitle", type: :FString}
  ],

"CheatUninstallAllArquirunesRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MarketRecommendedItemQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "RecommendedGearCuidByGearKind", type: {:map, {:enum, "GearKindType"}, :cuid}},
    %{name: "RecommendedCoreMaterialCuidByGearKind", type: {:map, {:enum, "GearKindType"}, :cuid}}
  ],

"HonorableDieFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatClearUserInventoryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ItemGuidSelector" => [
    %{name: "__base__", type: {:struct, "FTzSingleItemSelector"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"CheatResetAchievementResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ShopCashMerchandiseBuyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MerchandisePaymentInfo", type: {:nullable, :message}}
  ],

"SkillCancelChargingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantWorldMapMarkerUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "WorldMapMarkerInfo", type: {:nullable, {:struct, "FTzWorldMapMarkerInfo"}}}
  ],

"CheatExpeditionExecuteNextWaveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatStrongholdBattleCancelAttackRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MarketSellerGoodsInfo" => [
    %{name: "__base__", type: {:struct, "FTzMarketGoodsInfo"}},
    %{name: "MarketSellState", type: {:enum, "ETzMarketSellStateType"}}
  ],

"OccupiableNpcUnOccupationUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}}
  ],

"QuestCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "QuestCancelReasonKind", type: {:enum, "ETzQuestCancelReasonKindType"}}
  ],

"CheatRankingResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}}
  ],

"QueryPlayerBattalionJoinableRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"PlayerPrivateStatsInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterPrivateStatsInfo"}},
    %{name: "InventoryWeightLimit", type: {:uint, 8}},
    %{name: "AdditionalHealPowerAmount", type: {:int, 4}},
    %{name: "AdditionalHealPowerRatio_pe4", type: {:int, 4}},
    %{name: "SpecialMovePoints", type: {:int, 4}},
    %{name: "MaxSpecialMovePoints", type: {:int, 4}},
    %{name: "MaxTargetScanCount", type: {:int, 2}},
    %{name: "SkillManaPointsCostDecreaseRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalNpcRewardExperiencePointsRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalNpcRewardGoldRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalHealthPointsPotionRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalHealthPointsPotionAmount", type: {:int, 4}},
    %{name: "AdditionalManaPointsPotionRatio_pe4", type: {:int, 4}},
    %{name: "AdditionalManaPointsPotionAmount", type: {:int, 4}},
    %{name: "SpiritualBondPowerGainIncreaseRatio_pe4", type: {:int, 4}},
    %{name: "SpiritualBondPowerConsumeDecreaseRatio_pe4", type: {:int, 4}}
  ],

"ItemQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "FTzQuickSlotDetailInfo"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"MailsReceiveAttachmentsInTabResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "ReceivedMailGuids", type: {:list, {:uint, 8}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CovenantSynchronizeExperiencePoints" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"PartyQueryMemberCandidateListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PartyMemberCandidateKind", type: {:enum, "ETzPartyMemberCandidateKindType"}},
    %{name: "PartyMemberCandidateList", type: {:list, {:struct, "PartyMemberCoreInfo"}}}
  ],

"ServerConfigInfo" => [
    %{name: "CspWebBaseUrl", type: :FString},
    %{name: "RealmCreateDateTime", type: :FDateTime},
    %{name: "AlignedRealmCreateDateTime", type: :FDateTime}
  ],

"PrivateChannelKeepaliveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChannelKind", type: {:enum, "ETzPrivateChannelKindType"}}
  ],

"RPCMessage" => [
    %{name: "ReturnIndex", type: {:int, 4}}
  ],

"MailStrongholdBattleEndResultLogLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailStrongholdBattleLayoutInfo"}},
    %{name: "StrongholdBattleEndResultKind", type: {:enum, "ETzStrongholdBattleEndResultKindType"}},
    %{name: "StrongholdBattleJoinedCovenantHistoryInfos", type: {:list, {:struct, "StrongholdBattleJoinedCovenantHistoryInfo"}}},
    %{name: "WinnerCovenantVuid", type: {:struct, "FTzVuid"}}
  ],

"CheatAcquireFollowerPieceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"PowerSavingModeEndResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ItemSelector" => [
    
  ],

"PaidAttendanceInfo" => [
    %{name: "PaidAttendanceCuid", type: {:struct, "FTzCuid"}},
    %{name: "PaidDateTime", type: {:nullable, :FDateTime}},
    %{name: "AttendanceCount", type: {:int, 4}},
    %{name: "ReceivedAttendanceRewardCount", type: {:int, 4}},
    %{name: "IsVisibleNotificationMarker", type: :unknown}
  ],

"OccupiableNpcInfo" => [
    %{name: "OccupiableNpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "IsRandomBuffNpc", type: :unknown},
    %{name: "OccupationState", type: {:enum, "ETzNpcOccupationStateType"}}
  ],

"CovenantMemberInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}},
    %{name: "LastClientDisconnectDateTime", type: :FDateTime},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "DailyContributionPoints", type: {:uint, 8}},
    %{name: "WeeklyContributionPoints", type: {:uint, 8}},
    %{name: "PreviousWeeklyContributionPoints", type: {:uint, 8}},
    %{name: "TotalContributionPoints", type: {:uint, 8}},
    %{name: "ContributionPointsUpdateDateTime", type: :FDateTime},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "CovenantMemberRoleRewardLastAcquiredDateTime", type: :FDateTime},
    %{name: "CovenantMemberRoleLastUpdatedDateTime", type: :FDateTime}
  ],

"CheatChangeAllFollowersLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"ServerDrivenPlayMovingToHuntingLocationStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}}
  ],

"SeasonPassAchievementInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementInfo"}},
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "SeasonPassAchivementGroupCuid", type: {:struct, "FTzCuid"}}
  ],

"DisplayOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DisplayOptionInfo", type: {:nullable, {:struct, "FTzDisplayOptionInfo"}}}
  ],

"CovenantBattalionExpeditionDeployStopLivingTotemNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"OrganizationStatRatioValue" => [
    %{name: "Value", type: {:int, 4}},
    %{name: "PrecisionExponent", type: {:uint, 4}}
  ],

"CheatClearOccupiableNpcOccupationScoreRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"ErosionItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "Location_cm", type: :FVector},
    %{name: "IsWithoutPermission", type: :unknown},
    %{name: "CostGoldAmount", type: {:uint, 8}}
  ],

"CheatAddCovenantGiftSpecialGiftBoxPointsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FavoriteCraftRecipeRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FavoriteCraftRecipeInfo", type: {:nullable, {:struct, "FTzFavoriteCraftRecipeInfo"}}},
    %{name: "IsRegistered", type: :unknown}
  ],

"CheatExpeditionLivingTotemTeleportToPlayerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PartyTargetLocationUnsetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Index", type: {:int, 4}}
  ],

"CheatApplyArquiAttunementSetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiAttunementInfo", type: {:nullable, {:struct, "FTzArquiAttunementInfo"}}}
  ],

"CheatSpawnBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}}
  ],

"CollectionSlotItemRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "CollectionSlotItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "NonstackableItemGuid", type: {:uint, 8}}
  ],

"PreemptiveAttackTargetSelectCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"ArquiruneDeactivateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatClearCollectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ExpeditionLivingTotemInfo" => [
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "DepartureHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "ArrivalSealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"CraftRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "CraftCount", type: {:int, 4}},
    %{name: "MaterialGroupOrderList", type: {:list, :cuid}},
    %{name: "MaterialCuidToItemSelectors", type: {:list, {:struct, "ItemSelector"}}}
  ],

"InGameNotificationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InGameNotificationInfo", type: {:nullable, :message}}
  ],

"BuildingPurifyRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}},
    %{name: "PurificationBuildingLevel", type: {:int, 4}}
  ],

"RealmTransferredPlayerNameChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Name", type: :FString}
  ],

"StrongholdBattleAttackInnerGateStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackPhaseStartNotify"}}
  ],

"CovenantWatchRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TargetPlayerName", type: :FString}
  ],

"StrongholdBattleTacticalSkillUseNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "ConsumedTacticalSkillBadgeCount", type: {:int, 4}}
  ],

"CheatPromoteAllFollowerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FollowerKillingNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}},
    %{name: "FollowerOwnerPlayerName", type: :FString},
    %{name: "LootedItemIndexWithCount", type: {:nullable, :message}}
  ],

"PlayerCreateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Gender", type: {:enum, "ETzGenderType"}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "DevStartLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"HeroBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "FTzBossSpawnInfo"}}
  ],

"CheatChangeCampaignConditionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"HavenOrganizationStatsDetailInfo" => [
    %{name: "Stats", type: {:map, {:enum, "HavenOrganizationStatSourceType"}, {:struct, "TMap<FTzCuid"}}}
  ],

"UpstreamPayloadAction" => [
    %{name: "UpstreamPayloadActionKind", type: {:enum, "ETzUpstreamPayloadActionKindType"}},
    %{name: "TextCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmInfos", type: {:list, nil}},
    %{name: "RealmAccountInfos", type: {:list, {:struct, "UniverseAccountRealmAccountInfo"}}},
    %{name: "AppliedRealmAccountGuids", type: {:list, {:uint, 8}}}
  ],

"RealmIntegrationBattleRealmScore" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Score", type: {:uint, 8}}
  ],

"AlertPlayerQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatCovenantRubyShopResetMerchandiseBuyCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}}
  ],

"MountMovingCallingRequest" => [
    %{name: "__base__", type: {:struct, "FTzMountCallingRequest"}},
    %{name: "CurrentStraightMoveSegmentDestination_cm", type: {:nullable, :FVector}},
    %{name: "NextStraightMoveSegmentDestination_cm", type: {:nullable, :FVector}}
  ],

"CheatClearCollectionByCollectionCategoryCuidRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionCategoryCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatSetTransmutationRecordRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PeriodCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"BossSpawnInfoRemovedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "BossSpawnInfo", type: {:nullable, :message}}
  ],

"CheatAddRankingDummyDataResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatClearOccupiableNpcOccupationScoreResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatTestGearEnchantGradeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CostItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"SerializedMessageCacheElement" => [
    %{name: "__base__", type: {:struct, "MessageCacheElement"}},
    %{name: "message", type: :unknown}
  ],

"MarketSellWithdrawRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}}
  ],

"CheatSendSampleMailToMeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RequestMailKind", type: {:enum, "ETzMailKindType"}}
  ],

"CheatAddCovenantGiftLevelExperiencePointsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantLivingTotemStatsInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "LivingTotemStatsInfos", type: {:list, {:struct, "CovenantLivingTotemWithStatsInfo"}}}
  ],

"BuffAttachNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffInfo", type: {:nullable, {:struct, "FTzBuffInfo"}}},
    %{name: "BuffAffectInfoList", type: {:list, {:struct, "BuffAffectInfo"}}}
  ],

"BasicOrGrowthGuideAchievementRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ShopCashMerchandiseReceiveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ReceiveGuidList", type: {:list, {:uint, 8}}}
  ],

"NavMeshTileDataRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CheckRequestedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"StanceInstallRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}}
  ],

"DeleteDiplomacyChatRoomResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"MailStrongholdPlunderLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "WarehouseMigrationInfo", type: {:nullable, {:struct, "FTzWarehouseMigrationInfo"}}}
  ],

"FindWarpPointsForAutoMoveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Destination_cm", type: :FVector}
  ],

"PlayerMarketTransactionDelayedSellRegisterProcessNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MailBuildingPurificationFinishLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailBuildingWorkLayoutInfo"}},
    %{name: "PurificationAmount", type: {:int, 4}},
    %{name: "FullContamination", type: {:int, 4}},
    %{name: "BeforeContaminationAmount", type: {:int, 4}},
    %{name: "BeforeContaminationStage", type: {:enum, "ETzContaminationStageType"}},
    %{name: "AfterContaminationStage", type: {:enum, "ETzContaminationStageType"}}
  ],

"CheatGetStrongholdAccumulatedTaxCurrencyAmountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AccumulatedTaxCurrencyAmount", type: {:uint, 8}}
  ],

"CharacterStatChangeInfo" => [
    %{name: "StatKind", type: {:enum, "ETzAdjustableStatKindType"}},
    %{name: "Amount", type: :float},
    %{name: "Ratio", type: :float}
  ],

"GearEnchantResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CovenantUpdateEmblemInfoFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CampaignTicketInfo" => [
    %{name: "TicketCuid", type: {:struct, "FTzCuid"}},
    %{name: "TicketCount", type: {:int, 4}}
  ],

"AttackerListNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "AttackerPlayerGuids", type: :unknown}
  ],

"CovenantCampBuildingCraftResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmAccountInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "UniverseAccountGuid", type: {:uint, 8}},
    %{name: "UniverseAccountInfo", type: {:nullable, {:struct, "FTzUniverseAccountInfo"}}},
    %{name: "OptionInfo", type: {:nullable, {:struct, "FTzRealmAccountOptionInfo"}}},
    %{name: "PlayedCutSceneCuids", type: :unknown},
    %{name: "AdditionalPlayerSlotCount", type: {:int, 4}},
    %{name: "HighestPlayerMaxLevel", type: {:int, 4}}
  ],

"HarmfulTextOnChatViolationUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}}
  ],

"StrongholdTaxUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "TaxInfo", type: {:nullable, {:struct, "FTzTaxInfo"}}}
  ],

"ContentsUnlockInitializeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UnusedContentsUnlockKinds", type: {:map, {:enum, "ContentsUnlockKindType"}, :bool}}
  ],

"RealmAccountPresentRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PresentCode", type: :FString},
    %{name: "Password", type: :FString},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantDiplomacyDeclareHostilityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CheatDowngradeBuildingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SubscriptionUnsubscribedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Channel", type: {:enum, "ETzSubscriptionChannelType"}},
    %{name: "Parameter", type: {:struct, "FTzCuid"}}
  ],

"CovenantSynchronizeInvitedPlayerLevelChangedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Level", type: {:int, 4}}
  ],

"CharacterStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "CharacterState", type: {:enum, "ETzCharacterStateType"}},
    %{name: "StrongholdBattleResult", type: {:enum, "ETzStrongholdBattleResultType"}},
    %{name: "AffectSourceInfo", type: {:nullable, :message}}
  ],

"BattalionMemberLootNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionMemberGuid", type: {:uint, 8}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "KilledNpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsErosionInstallerReward", type: :unknown}
  ],

"CheatCreateAndSelectMountItemResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}}
  ],

"ExpeditionNpcSummonWavesEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"CollectionProgressInfo" => [
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "RegisteredCollectionSlotItemCuids", type: {:map, :cuid, :cuid}}
  ],

"CovenantDiplomacyHostilityKillCountUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "DeclarantCovenantKillCount", type: {:int, 4}},
    %{name: "DeclaredCovenantKillCount", type: {:int, 4}}
  ],

"InteractionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmInfoPubSubChannelUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "Ip", type: :FString},
    %{name: "ServerState", type: {:enum, "ETzServerStateType"}},
    %{name: "ServerTagKind", type: {:enum, "ETzServerTagKindType"}}
  ],

"UnknownAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAffectSourceInfo"}}
  ],

"SkillCasterLocationProxyInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "SkillCasterLocationProxyInfo", type: {:nullable, {:struct, "FTzSkillCasterLocationProxyInfo"}}},
    %{name: "SkillSiid", type: {:int, 4}}
  ],

"BasicAchievementInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BasicAchievementInfos", type: {:list, {:struct, "BasicOrGrowthGuideAchievementInfo"}}}
  ],

"CheatOccupyStrongholdRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DiscardStrongholdCuidIfMax", type: {:struct, "FTzCuid"}}
  ],

"CheatChangeCurrencyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"CheatUpdatePlayerMissionCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "AdjustKind", type: {:enum, "ETzMissionAdjustKindType"}},
    %{name: "AdjustCount", type: {:int, 4}}
  ],

"AffectItemQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "FTzStackableItemQuickSlotDetailInfo"}},
    %{name: "AffectItemKind", type: {:enum, "ETzAffectItemKindType"}}
  ],

"CrossRealmCovenantDiplomacyAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CrossRealmCovenantDiplomacyInfo", type: {:nullable, {:struct, "FTzCrossRealmCovenantDiplomacyInfo"}}}
  ],

"RealmAccountWarehouseItemRetrieveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"CheatChangeBuildingHealthPointsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "HealthPointsPercentage", type: {:int, 4}}
  ],

"MountCallingFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantWatchAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TargetPlayerName", type: :FString},
    %{name: "CreateDateTime", type: :FDateTime}
  ],

"BasicOrGrowthGuideAchievementUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BasicOrGrowthGuideAchievementInfo", type: {:nullable, :message}}
  ],

"PaidAttendanceRewardAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: {:struct, "FTzCuid"}}
  ],

"ShopCashMerchandiseInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "CashShopMainCategoryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopMainCategoryInfo"}}},
    %{name: "CashShopSubCategoryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopSubCategoryInfo"}}},
    %{name: "CashShopMerchandiseInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopMerchandiseInfo"}}},
    %{name: "CashShopWindowDressingInfoList", type: {:list, {:struct, "CashShopWindowDressingInfo"}}},
    %{name: "CashShopNameTextInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopNameTextInfo"}}},
    %{name: "CashShopDescriptionTextInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopDescriptionTextInfo"}}},
    %{name: "RealmTotalMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"GearMultipleEnhanceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GearEnhancementResultInfos", type: {:list, {:struct, "GearEnhancementResultInfo"}}}
  ],

"RealmIntegrationBattleRealmScoreInfo" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Scores", type: {:map, {:enum, "RealmIntegrationBattleScoreKindType"}, {:uint, 8}}}
  ],

"CheatStrongholdApplyTaxRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ArquiruneInstallRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"DrownSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "HealthPointsLost", type: :float}
  ],

"CheatSetExperiencePointsBlockedResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsExperiencePointsBlocked", type: :unknown}
  ],

"TozTcpWelcome" => [
    %{name: "EngineData", type: :unknown},
    %{name: "UserData", type: :unknown}
  ],

"ExpeditionJoinedBattalionsRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"BuildingRepairRequestInfo" => [
    %{name: "__base__", type: {:struct, "FTzBuildingWorkRequestInfo"}}
  ],

"RedrawableItemInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemInfo"}},
    %{name: "RedrawableItemAdditionalInfo", type: {:nullable, {:struct, "FTzRedrawableItemAdditionalInfo"}}}
  ],

"CovenantCompleteArchitectureHistoryInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantHistoryInfo"}},
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}},
    %{name: "OrderedBuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorkStartBuildingLevel", type: {:int, 4}},
    %{name: "TargetBuildingLevel", type: {:int, 4}}
  ],

"CovenantDiplomacyInviteReinforcementRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "RewardCurrencies", type: {:map, :cuid, {:uint, 8}}}
  ],

"CheatUpdatePlayerCampaignTicketCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerDeathNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeathRecordInfo", type: {:nullable, :message}},
    %{name: "RestrictedResurrectionInfo", type: {:nullable, {:struct, "FTzRestrictedResurrectionInfo"}}}
  ],

"CovenantRubyShopInfo" => [
    %{name: "BuyCountInfos", type: {:list, {:struct, "GoodsBuyCountInfo"}}},
    %{name: "UseResetCount", type: {:int, 4}}
  ],

"BattalionCreateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyReinforcementInvitationAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CovenantPermissionsInfo" => [
    %{name: "CanEditCovenantInfo", type: :unknown},
    %{name: "CanManageCovenantMember", type: :unknown},
    %{name: "CanBanishMember", type: :unknown},
    %{name: "CanManageHaven", type: :unknown},
    %{name: "CanModifyTax", type: :unknown},
    %{name: "CanManageDiplomacy", type: :unknown},
    %{name: "CanManageDiplomacyChat", type: :unknown},
    %{name: "CanDeclareBattle", type: :unknown},
    %{name: "CanStartCampaign", type: :unknown}
  ],

"ShopInfo" => [
    %{name: "ServiceState", type: {:enum, "ETzShopServiceStateType"}}
  ],

"FollowerPromoteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "FollowerItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatUpgradeBuildingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatInventoryIncreaseWeightLimitRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AdditionalWeightLimitDelta", type: {:int, 4}}
  ],

"ShopCashMerchandiseBuyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MerchandisePaymentInfo", type: {:nullable, :message}},
    %{name: "MerchandiseBuyResultInfo", type: {:nullable, {:struct, "FTzMerchandiseBuyResultInfo"}}}
  ],

"PartySynchronizeMemberCostumeInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPartySynchronizeMemberNotify"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}}
  ],

"CovenantUpdateIntroductionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Introduction", type: :FString}
  ],

"ShopShoppingModeCommandRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "Command", type: {:enum, "ETzSubscriptionCommandType"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberInfo", type: {:nullable, {:struct, "FTzCovenantMemberInfo"}}}
  ],

"CovenantRubyShopMerchandiseResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantCampaignBattalionLeaveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpireTime", type: :FDateTime}
  ],

"StrongholdBattleReserveResurrectionNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "AetherBoxCount", type: {:int, 4}},
    %{name: "NextResurrectTime", type: :FDateTime}
  ],

"CheatChangeTerritoryEntanglementGaugeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FollowerImmediateResurrectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"RealmIntegratedCovenantNameChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "RequesterGuid", type: {:uint, 8}},
    %{name: "Name", type: :FString}
  ],

"CovenantHistoryQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CovenantHistoryCategory", type: {:enum, "ETzCovenantHistoryCategoryType"}},
    %{name: "LowerBoundDateTime", type: {:nullable, :FDateTime}},
    %{name: "LastCovenantHistoryGuid", type: {:nullable, {:uint, 8}}}
  ],

"PaidAttendanceInfosUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PaidAttendanceInfos", type: {:list, {:struct, "PaidAttendanceInfo"}}}
  ],

"DeathPenaltyRecordInfo" => [
    %{name: "RecordKind", type: {:enum, "ETzDeathPenaltyRecordKindType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "PlayerLevel", type: {:int, 4}},
    %{name: "LostExperiencePointsPercentage", type: {:int, 4}},
    %{name: "LostExperiencePoints", type: {:uint, 8}},
    %{name: "ExpireDateTime", type: :FDateTime}
  ],

"AddToChatBlockListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatEntityGuid", type: {:uint, 8}}
  ],

"BattalionInvitationAdditionalInfo" => [
    %{name: "CampaignStageCuid", type: {:nullable, {:struct, "FTzCuid"}}}
  ],

"RewardAnniversaryRewardInfo" => [
    %{name: "AnniversaryRewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "Amount", type: {:uint, 8}}
  ],

"CovenantDiplomacyWithdrawAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"PartyQuickJoinFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantStartCampaignNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantCampaignProgressInfo", type: {:nullable, :message}},
    %{name: "CovenantCampaignTicketCount", type: {:nullable, {:int, 4}}}
  ],

"TeaseNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FromPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "FromPlayerGuid", type: {:uint, 8}},
    %{name: "FromPlayerName", type: :FString},
    %{name: "ToPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "ToPlayerGuid", type: {:uint, 8}},
    %{name: "ToPlayerName", type: :FString},
    %{name: "TeaseMessage", type: :FString}
  ],

"CheatFissionPointsChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FissionPoints", type: {:int, 4}}
  ],

"StrongholdBattleDefenseGroupInfo" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleGroupInfo"}},
    %{name: "DefenseGunBulletCount", type: {:uint, 8}},
    %{name: "MaxDefenseGunBulletCount", type: {:uint, 8}}
  ],

"CheatTeleportResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"RealmPlayerName" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerName", type: :FString}
  ],

"CheatMonsterBookSetAnalysisInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "NodeStateInfo", type: {:nullable, :message}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"BattalionLeaveFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerSlotExpandRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MarketGoodsSummaryInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketGoodsSummaryQueryInfo", type: {:nullable, :message}}
  ],

"CovenantTradeSalesListUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AddedOrUpdatedGoodsSalesInfo", type: {:nullable, :message}},
    %{name: "RemovedGoodsGuid", type: {:uint, 8}}
  ],

"SecessionChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"UniverseAccountInfo" => [
    %{name: "PresenceId", type: :FString},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Npsn", type: :FString},
    %{name: "NpaCode", type: :FString},
    %{name: "WpcInfo", type: {:nullable, {:struct, "FTzWpcInfo"}}}
  ],

"PartyQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "Purpose", type: {:enum, "ETzPartyPurposeType"}},
    %{name: "PartySummaryInfoList", type: {:list, {:struct, "PartySummaryInfo"}}}
  ],

"CovenantRewardAcquireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberGuid", type: {:uint, 8}},
    %{name: "CovenantMemberName", type: :FString},
    %{name: "ItemAcquireSourceInfo", type: {:nullable, {:struct, "FTzItemAcquireSourceInfo"}}},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "FTzCovenantRewardInfo"}}}
  ],

"AnniversaryRecordHistoryQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AnniversaryRecordCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryRecordHistoryInfos", type: {:list, {:struct, "AnniversaryRecordHistoryInfo"}}}
  ],

"CheatTestGearEnchantOptionGradeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CostItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"FingerCustomizeInfo" => [
    %{name: "FingerBase", type: :FVector},
    %{name: "Finger1", type: :FVector},
    %{name: "Finger2", type: :FVector},
    %{name: "FingerNub", type: :FVector}
  ],

"CovenantBattalionExpeditionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"MonsterBookAnalyzeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnalysisCount", type: {:uint, 8}},
    %{name: "AnalyzedStateInfos", type: {:list, {:struct, "MonsterBookNodeStateInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CovenantEmblemInfo" => [
    %{name: "BackgroundCuid", type: {:struct, "FTzCuid"}},
    %{name: "BackgroundRotation", type: :float},
    %{name: "FirstBackgroundColorCuid", type: {:struct, "FTzCuid"}},
    %{name: "SecondBackgroundColorCuid", type: {:struct, "FTzCuid"}},
    %{name: "ThirdBackgroundColorCuid", type: {:struct, "FTzCuid"}},
    %{name: "SubLogoCuid", type: {:struct, "FTzCuid"}},
    %{name: "SubLogoColorCuid", type: {:struct, "FTzCuid"}},
    %{name: "SubLogoOpacity", type: :float},
    %{name: "SubLogoRotation", type: :float},
    %{name: "SubLogoScale", type: :float},
    %{name: "SubLogoPositionX", type: :float},
    %{name: "SubLogoPositionY", type: :float},
    %{name: "MainLogoCuid", type: {:struct, "FTzCuid"}},
    %{name: "MainLogoColorCuid", type: {:struct, "FTzCuid"}},
    %{name: "MainLogoOpacity", type: :float},
    %{name: "MainLogoRotation", type: :float},
    %{name: "MainLogoScale", type: :float},
    %{name: "MainLogoPositionX", type: :float},
    %{name: "MainLogoPositionY", type: :float}
  ],

"TerritoryNoticeModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatOpenSeasonPassAchievementsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantSynchronizeMemberContributionInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberContributionInfos", type: {:list, {:struct, "CovenantMemberContributionInfo"}}}
  ],

"CovenantStartCampaignResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CampaignStageCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBattleAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAffectSourceInfo"}},
    %{name: "StrongholdBattleResult", type: {:enum, "ETzStrongholdBattleResultType"}}
  ],

"PlayerSlotExpansionCostCurrencyAmountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerSlotExpansionCostCurrencyAmount", type: {:uint, 8}}
  ],

"CheatDeactivateArquiruneResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"TlsLikeEncryptServerHello" => [
    %{name: "ServerRandom", type: :unknown},
    %{name: "Exponent", type: :unknown},
    %{name: "Modulus", type: :unknown}
  ],

"FollowerSquadSlotExpandRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatSetCovenantWithdrawalDateTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantWithdrawalDateTime", type: {:nullable, :FDateTime}}
  ],

"InventoryOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "IsEquippedItemVisible", type: :unknown}
  ],

"ServerDrivenPlayStartWithResupplyStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}}
  ],

"CrossRealmCovenantDiplomacyDeclareHostilityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"GainedItemInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemIndexWithCount"}},
    %{name: "GainedDateTime", type: :FDateTime}
  ],

"ServerGroupAuthenticateInfo" => [
    %{name: "__base__", type: :unknown},
    %{name: "Ip", type: :unknown},
    %{name: "Port", type: {:int, 4}},
    %{name: "Key", type: {:int, 4}}
  ],

"CheatChangeStrongholdTaxRateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"QuestCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"StrongholdBattleJoinFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantJoinResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "LastCovenantWithdrawalDateTime", type: {:nullable, :FDateTime}}
  ],

"SchemaTable" => [
    %{name: "SchemaId", type: {:int, 4}},
    %{name: "RegDate", type: :unknown},
    %{name: "FileName", type: :unknown},
    %{name: "TableName", type: :unknown},
    %{name: "Columns", type: :unknown}
  ],

"StrongholdWorldMapInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "AccumulatedDiaTax", type: {:nullable, {:uint, 8}}},
    %{name: "AccumulatedRubyTax", type: {:nullable, {:uint, 8}}},
    %{name: "AccumulatedGoldTax", type: {:uint, 8}},
    %{name: "GeneralShopInfo", type: {:nullable, {:struct, "FTzStrongholdWorldMapGeneralShopInfo"}}}
  ],

"CovenantRubyShopMerchandiseResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}},
    %{name: "UseResetCount", type: {:int, 4}}
  ],

"PeriodicResetCountInfo" => [
    %{name: "Count", type: {:int, 4}},
    %{name: "LastUpdateDateTime", type: :FDateTime}
  ],

"CovenantBattalionExpeditionQueryNearestHavenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}}
  ],

"GearEnchantTransferResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"MountInteractionStateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DriverGuid", type: {:uint, 8}},
    %{name: "MountInteractionState", type: {:enum, "ETzMountInteractionStateType"}},
    %{name: "Info", type: {:nullable, :message}}
  ],

"PartySynchronizeMemberConnectionStatusNotify" => [
    %{name: "__base__", type: {:struct, "FTzPartySynchronizeMemberNotify"}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}}
  ],

"FocusResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FocusTargetGuid", type: {:uint, 8}}
  ],

"ErLoginServerInitialDevAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErLoginServerInitialAuthenticateInfo"}},
    %{name: "UserName", type: :FString}
  ],

"CovenantWorldMapMarkerRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "RemovedGuid", type: {:uint, 8}}
  ],

"CheatApplySpellstonePresetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "SpellstoneSlotPageInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSpellstoneSlotPageInfo"}}}
  ],

"PvpRecordCharacterInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CrossRealmSeasonCuid", type: {:struct, "FTzCuid"}},
    %{name: "Role", type: {:enum, "ETzPvpRecordCharacterRoleType"}}
  ],

"ExpeditionAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, {:struct, "FTzExpeditionSummaryInfo"}}}
  ],

"CheatActivateArquiruneRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"BuildingSubscriptionSummaryInfo" => [
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}}
  ],

"WorldMapMarkerCopyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CopiedWorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "CopiedWorldMapMarkerInfo", type: {:nullable, {:struct, "FTzWorldMapMarkerInfo"}}}
  ],

"FactionProxyInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Faction", type: {:enum, "ETzFactionType"}}
  ],

"MailsMarkAsReadByMailKindNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailKind", type: {:enum, "ETzMailKindType"}},
    %{name: "UpperBoundDateTime", type: :FDateTime}
  ],

"RegisteredGoodsInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "SellCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "SellPrice", type: {:int, 4}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: :unknown},
    %{name: "ItemStackCount", type: {:uint, 8}},
    %{name: "GoodsBuyLimitCount", type: {:nullable, {:uint, 8}}},
    %{name: "RegistrationDateTime", type: :FDateTime}
  ],

"PlayerMarketSaleGoodsListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketSellerGoodsInfos", type: {:list, {:struct, "MarketSellerGoodsInfo"}}}
  ],

"FissionPointsUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FissionPoints", type: {:int, 4}}
  ],

"CovenantQueryJoinAppliedCovenantSummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"PlayerLogoutResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FrontServerReauthenticateKey", type: {:int, 4}}
  ],

"CovenantUpdateJoinKindRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantJoinKind", type: {:enum, "ETzCovenantJoinKindType"}}
  ],

"PartyDismissRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatCancelAllStrongholdProtectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"NameTagHealthBarDisplayOptionDetailInfo" => [
    %{name: "IsOwnNameTagDisplayed", type: :unknown},
    %{name: "IsOwnCovenantNameDisplayed", type: :unknown},
    %{name: "IsOwnHealthBarDisplayed", type: :unknown},
    %{name: "IsOtherCovenantNameDisplayed", type: :unknown},
    %{name: "IsSameCovenantHealthBarDisplayed", type: :unknown},
    %{name: "IsSamePartyOrBattalionHealthBarDisplayed", type: :unknown}
  ],

"BattalionCreateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzBattalionOptionInfo"}}}
  ],

"CovenantDiplomacyWithdrawHostilityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"DistrictInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}}
  ],

"DiplomacyChatRoomKickCovenantsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdBattleDefenseGunBulletNotEnoughNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatPlayerLocationMonitoringDeleteAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AnniversaryPointPlayerRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzPlayerRankingViewInfo"}},
    %{name: "AnniversaryPoint", type: {:uint, 8}}
  ],

"CompletedCovenantResearchAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementSourceInfo"}},
    %{name: "ResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"PlayerLocationMonitoringDeregisterNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeregisterPlayerGuids", type: {:list, {:uint, 8}}}
  ],

"RealmIntegrationBattleRealmResult" => [
    %{name: "Round", type: {:int, 4}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Ranking", type: {:int, 4}}
  ],

"PartyJoinNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyInfo", type: {:nullable, {:struct, "FTzPartyInfo"}}}
  ],

"ProgressInfo" => [
    %{name: "CompletionGauge_pe3", type: {:uint, 8}},
    %{name: "LastUpdateGauge_pe3", type: {:uint, 8}},
    %{name: "IncrementGauge_pe3_psec", type: {:int, 4}},
    %{name: "LastUpdateDateTime", type: :FDateTime},
    %{name: "CompletionDateTime", type: :FDateTime}
  ],

"AffectSourceInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "SourceEntityGuid", type: {:uint, 8}}
  ],

"CheatRespawnNpcRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "NpcBossChaseGrade", type: {:int, 4}},
    %{name: "Count", type: {:int, 4}}
  ],

"CashShopSubCategoryInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "TextCuid", type: {:struct, "FTzCuid"}},
    %{name: "MainCategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "SortOrder", type: {:int, 4}},
    %{name: "SubCategoryKind", type: {:enum, "ETzShopSubCategoryKindType"}},
    %{name: "TargetUserKind", type: {:enum, "ETzShopTargetUserKindType"}},
    %{name: "TimeLimitTarget", type: {:enum, "ETzShopTimeLimitTargetKindType"}},
    %{name: "StartDateTime", type: :FDateTime},
    %{name: "EndDateTime", type: :FDateTime},
    %{name: "IsShowDateTime", type: :unknown},
    %{name: "UserRemainTimeToBuy", type: {:int, 4}},
    %{name: "PurchaseApplicableLoginStartDateTime", type: :FDateTime},
    %{name: "PurchaseApplicableLoginEndDateTime", type: :FDateTime},
    %{name: "ShowCurrency", type: {:struct, "FTzCuid"}},
    %{name: "IsHideSubCategory", type: :unknown}
  ],

"CovenantSettleAccountInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSettleAccountInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantSettleAccountInfo"}}},
    %{name: "StrongholdSettleAccountInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdSettleAccountInfo"}}}
  ],

"BattalionJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "BattalionPurposeKind", type: {:enum, "ETzBattalionPurposeKindType"}}
  ],

"PlayerResurrectionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionMemberCoreInfo" => [
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}}
  ],

"CovenantCampBuildingWorkInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkInfoChangeReason", type: {:enum, "ETzBuildingWorkInfoChangeReasonType"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "FTzBuildingWorkInfo"}}}
  ],

"CovenantInviteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"PlayerInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterInfo"}},
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Gender", type: {:enum, "ETzGenderType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "SelectedMountItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "MountInteractionState", type: {:enum, "ETzMountInteractionStateType"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}},
    %{name: "InteractingDoodadGuid", type: {:uint, 8}},
    %{name: "DyingExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "LastPlayerInteractionDateTime", type: {:nullable, :FDateTime}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :FString},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "BattalionInfo", type: {:nullable, {:struct, "FTzAffiliatedBattalionInfo"}}},
    %{name: "IsInSelfieMode", type: :unknown},
    %{name: "IsFissioned", type: :unknown},
    %{name: "SkillCasterLocationProxyInfo", type: {:nullable, {:struct, "FTzSkillCasterLocationProxyInfo"}}},
    %{name: "IsCollisionFree", type: :unknown},
    %{name: "IsQuestCinePlaying", type: :unknown},
    %{name: "IsHeadPieceDisplayed", type: :unknown},
    %{name: "FollowerSquadSlotAdditionalCount", type: {:int, 2}},
    %{name: "LastSourceWarpPointCuid", type: {:struct, "FTzCuid"}}
  ],

"CuidAndCountInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"CheatFissionPointsChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CharacterPublicStatsInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "CharacterPublicStatsInfo", type: {:nullable, :message}}
  ],

"StrongholdBattleCovenantBattalionMemberStatisticsInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "DeathCount", type: {:int, 4}},
    %{name: "TotalDamageDone", type: {:uint, 8}},
    %{name: "TotalHealDone", type: {:uint, 8}}
  ],

"BattalionMemberInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CombinedInventoryInfo" => [
    %{name: "InventoryInfosByInventoryKind", type: {:map, {:enum, "UserInventoryKindType"}, {:struct, "TSharedPtr<FTzInventoryInfo"}}},
    %{name: "RedrawableItemInventoryInfosByItemCategory", type: {:map, {:enum, "ItemCategoryType"}, {:struct, "TSharedPtr<FTzRedrawableItemInventoryInfo"}}}
  ],

"CrossRealmSeasonInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CrossRealmSeasonInfos", type: {:map, {:enum, "RegionContentKindType"}, {:struct, "TSharedPtr<FTzCrossRealmSeasonInfo"}}}
  ],

"MarketFavoriteItemUnregisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatMonsterBookSetAcquisitionProgressResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "NodeStateInfo", type: {:nullable, {:struct, "FTzMonsterBookNodeAcquirableStateInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "FTzMonsterBookCollectionInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"CheatAccountAffectDetachAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerInitializeInfo" => [
    %{name: "PlayerInfo", type: {:nullable, {:struct, "FTzPlayerInfo"}}},
    %{name: "IsEnteredInField", type: :unknown},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}},
    %{name: "PlayerStanceInfo", type: {:nullable, {:struct, "FTzPlayerStanceInfo"}}},
    %{name: "CombinedInventoryInfo", type: {:nullable, {:struct, "FTzCombinedInventoryInfo"}}},
    %{name: "SelectedEquipmentPresetIndex", type: {:enum, "ETzEquipmentPresetIndexType"}},
    %{name: "EquipmentPresetInfos", type: {:map, {:enum, "EquipmentPresetIndexType"}, {:struct, "TSharedPtr<FTzEquipmentPresetInfo"}}},
    %{name: "QuickSlotInfos", type: {:map, {:enum, "QuickSlotIndexType"}, {:struct, "TSharedPtr<FTzQuickSlotInfo"}}},
    %{name: "QuickSlotPageInfos", type: {:map, {:enum, "StanceType"}, {:struct, "TSharedPtr<FTzQuickSlotPageInfo"}}},
    %{name: "OpenFogsByDistrictCuid", type: {:map, :cuid, {:struct, "unsigned_long_long"}}},
    %{name: "PlayerGameOptionInfo", type: {:nullable, {:struct, "FTzPlayerGameOptionInfo"}}},
    %{name: "PushNotificationOptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzPushNotificationOptionInfo"}}},
    %{name: "PlayerSkillInfo", type: {:nullable, {:struct, "FTzPlayerSkillInfo"}}},
    %{name: "FavoriteCraftRecipeInfos", type: {:list, {:struct, "FavoriteCraftRecipeInfo"}}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "FTzQuestsInfo"}}},
    %{name: "CompletedTutorialCuids", type: {:list, :cuid}},
    %{name: "PartyInfo", type: {:nullable, {:struct, "FTzPartyInfo"}}},
    %{name: "BattalionInfo", type: {:nullable, :message}},
    %{name: "InGameNotificationInfos", type: {:list, {:struct, "InGameNotificationInfo"}}},
    %{name: "AmityInfos", type: {:map, :cuid, {:uint, 8}}},
    %{name: "PlayerFollowerInfo", type: {:nullable, {:struct, "FTzPlayerFollowerInfo"}}},
    %{name: "PlayerServerDrivenPlayInfo", type: {:nullable, {:struct, "FTzPlayerServerDrivenPlayInfo"}}},
    %{name: "PlayerLimitedCounterInfo", type: {:nullable, {:struct, "FTzPlayerLimitedCounterInfo"}}},
    %{name: "AutoBuySettingsInfo", type: {:nullable, {:struct, "FTzAutoBuySettingsInfo"}}},
    %{name: "AutoSellSettingsInfo", type: {:nullable, {:struct, "FTzAutoSellSettingsInfo"}}},
    %{name: "UsableItemCooldownExpireDateTimeRangeInfos", type: {:map, {:int, 4}, {:struct, "TSharedPtr<FTzDateTimeRangeInfo"}}},
    %{name: "MountSkillSlotInfos", type: {:map, {:enum, "MountSkillSlotIndexType"}, :bool}},
    %{name: "PointCurrencyContainerInfo", type: {:map, :cuid, {:uint, 8}}},
    %{name: "RealmAccountWarehouseInfo", type: {:nullable, {:struct, "FTzRealmAccountWarehouseInfo"}}},
    %{name: "RealmAccountWarehouseAutoStoreSettingsInfo", type: {:nullable, {:struct, "FTzRealmAccountWarehouseAutoStoreSettingsInfo"}}},
    %{name: "ActivatedCollectionCategoryCuids", type: :unknown},
    %{name: "CollectionProgressInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCollectionProgressInfo"}}},
    %{name: "BasicOrGrowthGuideAchievementInfos", type: {:list, {:struct, "BasicOrGrowthGuideAchievementInfo"}}},
    %{name: "AnniversaryAchievementInfos", type: {:list, {:struct, "AnniversaryAchievementInfo"}}},
    %{name: "AnniversaryAchievementPointInfos", type: {:list, {:struct, "AnniversaryAchievementPointInfo"}}},
    %{name: "DiscoveredSelfieDoodadSpawnerCuids", type: :unknown},
    %{name: "LastDeathRecordInfo", type: {:nullable, :message}},
    %{name: "DeathPenaltyRecordInfos", type: {:list, {:struct, "DeathPenaltyRecordInfo"}}},
    %{name: "DeathPenaltyFreeRecoveryInfo", type: {:nullable, :message}},
    %{name: "TransmutationProgressInfos", type: {:map, {:enum, "ItemCategoryType"}, {:struct, "TMap<ETzItemGradeType"}}},
    %{name: "MissionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzMissionInfo"}}},
    %{name: "ArquiAttunementInfo", type: {:nullable, {:struct, "FTzArquiAttunementInfo"}}},
    %{name: "AlertPlayers", type: {:map, {:uint, 8}, :datetime}},
    %{name: "CrossRealmAlertPlayers", type: {:map, {:uint, 8}, {:struct, "CrossRealmAlertPlayerRegisterInfo"}}},
    %{name: "PlayerLocationMonitoringInfos", type: {:list, {:struct, "PlayerLocationMonitoringInfo"}}},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}},
    %{name: "FissionPoints", type: {:int, 4}},
    %{name: "PlayerCashShopInfo", type: {:nullable, {:struct, "FTzPlayerCashShopInfo"}}},
    %{name: "PlayerAutoUseInfo", type: {:nullable, :message}},
    %{name: "PlayerEmergencyEscapeInfo", type: {:nullable, {:struct, "FTzPlayerEmergencyEscapeInfo"}}},
    %{name: "UnSettledGoodsGuids", type: {:list, {:uint, 8}}},
    %{name: "ExpiredGoodsGuids", type: {:list, {:uint, 8}}},
    %{name: "PlayerCovenantInfo", type: {:nullable, {:struct, "FTzPlayerCovenantInfo"}}},
    %{name: "GiftBoxInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantGiftBoxInfo"}}},
    %{name: "AccountAffectInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzAccountAffectInfo"}}},
    %{name: "MaxLevel", type: {:int, 4}},
    %{name: "LastLevelForLevelUpNotify", type: {:int, 4}},
    %{name: "LastLevelUpDateTime", type: :FDateTime},
    %{name: "RegisteredFavoriteAdjustableStatKinds", type: :unknown},
    %{name: "RegisteredReturnPlaceDoodadSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorldMapMarkerInfos", type: {:list, {:struct, "WorldMapMarkerInfo"}}},
    %{name: "FavoriteCollectionCuids", type: :unknown},
    %{name: "SkillUseOptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSkillUseOptionInfo"}}},
    %{name: "RegionContentPlayInfos", type: {:map, {:enum, "RegionContentKindType"}, {:struct, "TSharedPtr<FTzRegionContentPlayInfo"}}},
    %{name: "MonsterBookInfo", type: {:nullable, {:struct, "FTzMonsterBookInfo"}}},
    %{name: "TransmutationRecords", type: {:map, {:struct, "TTuple<FTzCuid"}, {:enum, "ItemCategoryType"}}},
    %{name: "PlayerCampaignInfo", type: {:nullable, :message}},
    %{name: "VolunteerParticipationInfos", type: {:map, {:enum, "BattalionContentsKindType"}, {:struct, "TSharedPtr<FTzVolunteerParticipationInfo"}}},
    %{name: "PlayerRealmIntegrationBattleInfo", type: {:nullable, {:struct, "FTzPlayerRealmIntegrationBattleInfo"}}},
    %{name: "PaidAttendanceInfos", type: {:list, {:struct, "PaidAttendanceInfo"}}}
  ],

"PlayerCreateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerSummaryInfo", type: {:nullable, {:struct, "FTzPlayerSummaryInfo"}}}
  ],

"GatheringSiteInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "WorkingFollowerCount", type: {:int, 4}}
  ],

"PartyAppointLeaderNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PreviousLeaderGuid", type: {:uint, 8}},
    %{name: "LeaderAppointReason", type: {:enum, "ETzPartyLeaderAppointReasonType"}}
  ],

"SeamlessNpcInfo" => [
    %{name: "__base__", type: {:struct, "FTzSeamlessEntityInfo"}},
    %{name: "IsInVillage", type: :unknown},
    %{name: "IsPublicResurrector", type: :unknown}
  ],

"AnniversaryAchievementPrivateChannelCloseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionTargetLocationSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CrossRealmCovenantSearchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantName", type: :FString}
  ],

"CovenantCampInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantCampInfoList", type: {:list, {:struct, "CovenantCampInfo"}}}
  ],

"VolunteerParticipationInfo" => [
    %{name: "BattalionContentsKind", type: {:enum, "ETzBattalionContentsKindType"}},
    %{name: "ParticipationCountInfo", type: {:nullable, :message}}
  ],

"QueryPlayerSummaryInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerSummaryInfo", type: {:nullable, {:struct, "FTzPlayerSummaryInfo"}}}
  ],

"TimeCreviceCovenantPvpScoreRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzRankingViewInfo"}},
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "Name", type: :FString},
    %{name: "Level", type: {:int, 4}},
    %{name: "PvpScore", type: {:int, 4}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "AdditionalSourceInfo", type: {:nullable, :message}}
  ],

"StrongholdPlayerTeleportNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TeleportDateTime", type: :FDateTime}
  ],

"StrongholdBattleReinforcementJoinNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DefenseGroupInfo", type: {:nullable, {:struct, "FTzStrongholdBattleDefenseGroupInfo"}}}
  ],

"CovenantCompleteResearchHistoryInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantHistoryInfo"}},
    %{name: "ResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"PlayerFieldEnterNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatSpawnNormalDoodadRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DoodadCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:int, 4}}
  ],

"MountBoardedInfo" => [
    %{name: "__base__", type: {:struct, "FTzMountStateInfo"}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "MountSkillReadyDateTime", type: :FDateTime}
  ],

"CovenantAssetMigrationInfo" => [
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"StrongholdBattleNewGroupNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "CovenantName", type: :FString}
  ],

"EntityRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "EntityRemoveReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
  ],

"FollowerCollectionInfo" => [
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "CollectionStatus", type: {:map, :cuid, {:struct, "TSharedPtr<FTzFollowerCollectionTopExperienceInfo"}}},
    %{name: "AccomplishedRewardPhase", type: {:int, 2}}
  ],

"ErLoginServerInitialToyBotAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErLoginServerInitialToyAuthenticateInfo"}}
  ],

"CheatApplyArquiAttunementSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiAttunementSetCuid", type: {:struct, "FTzCuid"}}
  ],

"LastDeathRecordDeleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SkillUseOptionInfo" => [
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "UseManaPointsRestriction", type: :unknown},
    %{name: "UseByAutoAttackTargetingRangeKind", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x1a)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar9=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar9=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "UseCycle", type: :unknown},
    %{name: "UseCycleInPvp", type: :unknown},
    %{name: "CycleRange_sec", type: {:int, 4}},
    %{name: "UseByAutoUseByHealthPointsCondition", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x25)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar1=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar1=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "HealthPointsRatioToAutoUse_pe2", type: {:nullable, {:int, 2}}}
  ],

"BoundAndErodedInheritanceBatchCraftRequestInfo" => [
    %{name: "BoundAndErodedInheritanceMaterialSelector", type: {:nullable, {:struct, "FTzItemBoundAndErodedSelector"}}},
    %{name: "CraftCount", type: {:int, 4}}
  ],

"QuestMissionProgressNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestMissionProgressInfo", type: {:nullable, {:struct, "FTzQuestMissionProgressInfo"}}}
  ],

"SendChatMessageFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"InGameNotificationDeleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"FollowerArrivedAtHeadquartersNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "ArrivedAtHeadquartersDateTime", type: :FDateTime}
  ],

"CovenantHistoryQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CovenantHistoryCategory", type: {:enum, "ETzCovenantHistoryCategoryType"}},
    %{name: "CovenantHistoryInfos", type: {:list, {:struct, "CovenantHistoryInfo"}}}
  ],

"CrossRealmCovenantDiplomacyWithdrawHostilityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingRepairResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CrossRealmSeasonEntryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}}
  ],

"PartyConfirmJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "FTzPartyMemberInfo"}}}
  ],

"ShieldWallInfo" => [
    %{name: "__base__", type: {:struct, "FTzEntityInfo"}},
    %{name: "ShieldWallCuid", type: {:struct, "FTzCuid"}},
    %{name: "OwnerGuid", type: {:uint, 8}}
  ],

"StrongholdBattleGuidSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}}
  ],

"SchemaColumn" => [
    %{name: "Order", type: {:int, 4}},
    %{name: "Column", type: {:int, 4}},
    %{name: "DeployType", type: :unknown},
    %{name: "DataType", type: :unknown},
    %{name: "Key", type: :unknown},
    %{name: "Comment", type: :unknown},
    %{name: "Name", type: :unknown}
  ],

"ShopBuyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "BuyCountInfos", type: {:list, {:struct, "GoodsBuyCountInfo"}}},
    %{name: "RegisteredGoodsBuyCountInfos", type: {:list, {:struct, "RegisteredGoodsBuyCountInfo"}}},
    %{name: "RegisterShopBuyFailItems", type: {:map, {:uint, 8}, {:uint, 8}}},
    %{name: "MostExpensiveGoodsItemIndex", type: {:nullable, :message}}
  ],

"AccountAffectAttachNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AccountAffectInfo", type: {:nullable, :message}}
  ],

"RealmPlayerId" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AutoBuySettingsInfo" => [
    %{name: "Settings", type: {:map, :cuid, {:int, 4}}}
  ],

"RealmAccountPresentQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BattalionMemberCostumeInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionMemberInfoSynchronizeNotify"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}}
  ],

"SquadSharedFocusTargetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"PlayerLoginResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "GameServerConnectionInfo", type: {:nullable, {:struct, "FTzConnectionInfo"}}},
    %{name: "CanCheatCommand", type: :unknown},
    %{name: "BanInfo", type: {:nullable, :message}},
    %{name: "InPvpPlayerGuid", type: {:uint, 8}}
  ],

"SpellstoneInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemInfo"}},
    %{name: "SpellstoneAdditionalInfo", type: {:nullable, {:struct, "FTzSpellstoneAdditionalInfo"}}}
  ],

"PlayerLocationMonitoringConnectionStateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}}
  ],

"CheatCharacterPrivateStatsInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingConstructResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantResetCovenantCampaignTicketCountNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantCampaignTicketCount", type: {:int, 4}}
  ],

"CheatChangeLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatSkillTableReloadResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantLevelUpHistoryInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantHistoryInfo"}},
    %{name: "OldLevel", type: {:int, 4}},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CheatCovenantCompleteCampaignRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantRegisteredGoodsServiceStateUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ServiceState", type: {:enum, "ETzCovenantRegisteredGoodsServiceStateType"}}
  ],

"CovenantRemoveJoinApplicationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeMemberSlayingGradeNotify" => [
    %{name: "__base__", type: {:struct, "FTzCovenantSynchronizeMemberNotify"}},
    %{name: "SlayingGrade", type: {:int, 2}}
  ],

"CheatTutorialBeginFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBattleRemoveSiegeWeaponSlotNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "SlotIndex", type: {:int, 2}}
  ],

"GearEnhanceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GearEnhancementResultInfo", type: {:nullable, {:struct, "FTzGearEnhancementResultInfo"}}}
  ],

"ServerDrivenPlayRecoveringHealthPointsStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}}
  ],

"FavoriteCollectionRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsRegistered", type: :unknown}
  ],

"CheatAddDeathPenaltyRecordResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatCancelAllStrongholdProtectionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FollowerDispatchInfo" => [
    %{name: "WorkKind", type: {:enum, "ETzFollowerWorkKindType"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorkplaceSpawnedEntityCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkObjectiveInfo", type: {:nullable, :message}}
  ],

"CheatCharacterPrivateStatsInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CharacterGuid", type: {:uint, 8}},
    %{name: "CharacterPrivateStatsInfo", type: {:nullable, :message}}
  ],

"ZoneInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "EntanglementGauge", type: {:int, 4}}
  ],

"CrossRealmCovenantQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuidRealmCuidList", type: {:map, {:uint, 8}, :cuid}}
  ],

"TerritoryContaminationStageChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "BeforeContaminationStage", type: {:enum, "ETzContaminationStageType"}},
    %{name: "AfterContaminationStage", type: {:enum, "ETzContaminationStageType"}}
  ],

"FieldEnterCompleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FieldInitializeInfo", type: {:nullable, {:struct, "FTzFieldInitializeInfo"}}},
    %{name: "ServerNavMeshCrcChecksum", type: {:uint, 4}},
    %{name: "ClientNavMeshCrcChecksum", type: {:uint, 4}},
    %{name: "EntitySpawnReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}},
    %{name: "LastSourceWarpPointCuid", type: {:struct, "FTzCuid"}}
  ],

"WorldMapMarkerRemoveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "RemovedGuid", type: {:uint, 8}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "FTzServerDrivenPlayOptionInfo"}}}
  ],

"RealmIntegrationSelectRealmAccountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"CheatChangeAllFollowersLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SelfieModeShootNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"TaxInfo" => [
    %{name: "ShopValueAddedTaxRate_pe2", type: {:int, 4}},
    %{name: "CraftedItemValueAddedTaxRate_pe2", type: {:int, 4}},
    %{name: "GatheringSiteEntranceFee", type: {:int, 4}},
    %{name: "CovenantTradeTaxRate_pe2", type: {:int, 4}},
    %{name: "MarketTaxRate_pe2", type: {:nullable, {:int, 4}}}
  ],

"MailWarehouseMigrationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "WarehouseMigrationReason", type: {:enum, "ETzWarehouseMigrationReasonType"}},
    %{name: "WarehouseMigrationInfo", type: {:nullable, {:struct, "FTzWarehouseMigrationInfo"}}},
    %{name: "SourceHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationHavenCuid", type: {:struct, "FTzCuid"}}
  ],

"WeeklyContributionPointsDividendInfo" => [
    %{name: "__base__", type: {:struct, "FTzDividendInfo"}}
  ],

"BattalionOptionInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzBattalionOptionInfo"}}}
  ],

"CovenantRubyShopInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "ShopInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantRubyShopInfo"}}},
    %{name: "ShopMerchandiseInfos", type: {:list, {:struct, "CovenantRubyShopMerchandiseInfo"}}}
  ],

"CrossRealmCovenantDiplomacyDeleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CrossRealmCovenantDiplomacyInfo", type: {:nullable, {:struct, "FTzCrossRealmCovenantDiplomacyInfo"}}}
  ],

"RewardAmityInfo" => [
    %{name: "ClanCuid", type: {:struct, "FTzCuid"}},
    %{name: "AmityDelta", type: {:uint, 8}}
  ],

"BattalionInviteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"RealmIntegratedCovenantNameChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "RequesterGuid", type: {:uint, 8}},
    %{name: "Name", type: :FString}
  ],

"CheatAccomplishAchievementResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyDeleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantDiplomacyInfo", type: {:nullable, :message}}
  ],

"HavenOccupancyInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "HavenOperationInfo", type: {:nullable, {:struct, "FTzHavenOperationInfo"}}}
  ],

"MountItemChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MountItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatDestroyPointsCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MailLayoutInfo" => [
    %{name: "MailLayoutKind", type: {:enum, "ETzMailLayoutKindType"}}
  ],

"ConnectionStatusSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}}
  ],

"InteractionStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"FollowerSquadUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"CheatSetLocalServerPushResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"DeathPenaltyFreeRecoveryInfo" => [
    %{name: "DailyFreeRecoveryCount", type: {:int, 4}},
    %{name: "RemainingDailyFreeRecoveryCount", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"CheatChangeSpiritualBondPowerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MonsterBookConsumeItemOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "ItemGradeToBatchConsume", type: {:enum, "ETzItemGradeType"}}
  ],

"CheatSpawnNpcRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "NpcBossChaseGrade", type: {:int, 4}},
    %{name: "Count", type: {:int, 4}}
  ],

"InventoryOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "InventoryOptionInfo", type: {:nullable, {:struct, "FTzInventoryOptionInfo"}}}
  ],

"ResuscitatePleaRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantLivingTotemDeployRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "LivingTotemCuid", type: {:struct, "FTzCuid"}}
  ],

"SeasonPassLevelRewardAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RewardedLevels", type: {:map, {:enum, "SeasonPassRewardKindType"}, {:struct, "TSet<int"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"StrongholdBuildingWorkCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatInstallStanceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "InstallRequestedStance", type: {:enum, "ETzStanceType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "InstalledStance", type: {:enum, "ETzStanceType"}}
  ],

"EmergencyEscapeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerEmergencyEscapeInfo", type: {:nullable, {:struct, "FTzPlayerEmergencyEscapeInfo"}}}
  ],

"StrongholdBattleSummaryInfo" => [
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "EndDateTime", type: :FDateTime},
    %{name: "StrongholdBattleJoinedCovenantInfos", type: {:list, {:struct, "StrongholdBattleJoinedCovenantInfo"}}}
  ],

"EnvironmentVariableUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Name", type: :FString},
    %{name: "Value", type: :FString}
  ],

"CovenantSupportApplyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuids", type: {:list, {:uint, 8}}}
  ],

"InventoryUpdateInfo" => [
    %{name: "AddedItemInfoList", type: {:list, {:struct, "ItemInfo"}}},
    %{name: "RemovedItemGuidList", type: {:list, {:uint, 8}}},
    %{name: "StackableItemUpdateInfoList", type: {:list, {:struct, "StackableItemUpdateInfo"}}}
  ],

"MarketStrongholdTaxInfo" => [
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CurrentTaxRate_pe2", type: {:int, 4}}
  ],

"TrapInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterInfo"}},
    %{name: "TrapCuid", type: {:struct, "FTzCuid"}},
    %{name: "InstallerGuid", type: {:uint, 8}}
  ],

"CheatAddStrongholdTaxAmountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PartyQueryMemberCandidateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmPlayerName", type: {:struct, "FTzRealmPlayerName"}}
  ],

"CovenantWatchDetailInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantWatchInfo"}},
    %{name: "TargetPlayerName", type: :FString},
    %{name: "TargetPlayerClasse", type: {:enum, "ETzClasseType"}},
    %{name: "TargetPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"CovenantWorldMapMarkerInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "WorldMapMarkerInfos", type: {:list, {:struct, "WorldMapMarkerInfo"}}}
  ],

"BasicAchievementPrivateChannelCloseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"WorldMapMarkerCopyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SourceWorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "SourceGuid", type: {:uint, 8}}
  ],

"CheatClearRealmIntegrationBattleScoreRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatSetUrfModeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsUrfMode", type: :unknown}
  ],

"MerchandisePaymentInfo" => [
    %{name: "TargetCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdCovenantShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "FTzShopInfo"}}}
  ],

"CovenantBattalionExpeditionSummaryInfo" => [
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpeditionJoinDateTime", type: {:nullable, :FDateTime}},
    %{name: "ExpeditionPhase", type: {:enum, "ETzBattalionExpeditionPhaseType"}}
  ],

"XorHandshake" => [
    %{name: "xorStaticKey", type: :unknown},
    %{name: "PublicKeyXmlString", type: :unknown},
    %{name: "Type", type: :unknown}
  ],

"CovenantRubyShopBuyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "MerchandiseBuyInfos", type: {:map, :cuid, {:uint, 8}}},
    %{name: "UseResetCount", type: {:int, 4}}
  ],

"AnniversaryAchievementRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :FDateTime},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CheatClearRealmIntegrationBattleParticipationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerSummaryInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerSummaryInfo", type: {:nullable, {:struct, "FTzPlayerSummaryInfo"}}}
  ],

"CheatApplySpellstonePresetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpellstonePresetCuid", type: {:struct, "FTzCuid"}}
  ],

"ErosionInstallNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InstallerGuid", type: {:uint, 8}},
    %{name: "ErosionItemCuid", type: {:struct, "FTzCuid"}}
  ],

"MarketRecommendedItemQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}}
  ],

"ErosionInstallCancelFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantRewardInfo" => [
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "DiscardedIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"CheatResetAllCooldownResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ErLoginServerInitialDevBotAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErLoginServerInitialDevAuthenticateInfo"}}
  ],

"BattalionQueryMemberCandidateListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "BattalionMemberCandidateList", type: {:list, {:struct, "BattalionMemberSummaryInfo"}}}
  ],

"CheatToggleShowQuestDebugResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsEnabled", type: :unknown}
  ],

"CheatClearRealmIntegrationBattleAllScoreResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerMarketTransactionHistoryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketTransactionInfos", type: {:list, {:struct, "MarketTransactionInfo"}}}
  ],

"CheatBatchBossSpawnTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AnniversaryRecordHistoryInfo" => [
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryEndDateTime", type: :FDateTime}
  ],

"CheatUpsertGoodsBuyCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"CovenantCampInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MarketGoodsInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketGoodsQueryInfo", type: {:nullable, {:struct, "FTzMarketGoodsQueryInfo"}}},
    %{name: "IndexUpperBound", type: {:int, 4}},
    %{name: "IndexLowerBound", type: {:int, 4}}
  ],

"ChatBattalionRequest" => [
    %{name: "__base__", type: {:struct, "FTzChatRequest"}},
    %{name: "IsNotice", type: :unknown}
  ],

"CoreMaterialItemInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemInfo"}}
  ],

"PlayerMissionRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "MissionCuidAndSteps", type: {:map, :cuid, {:int, 4}}}
  ],

"BasicAchievementPrivateChannelCloseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"GatheringSiteInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterInfo"}},
    %{name: "GatheringSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "GatheringFollowerWorkInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzFollowerWorkOverallInfo"}}}
  ],

"CovenantJoinApplicationInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "ApplyDateTime", type: :FDateTime},
    %{name: "IsConnected", type: :unknown},
    %{name: "LastClientDisconnectDateTime", type: :FDateTime}
  ],

"BattalionJoinRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"GenerateVivoxTokenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Token", type: :FString},
    %{name: "Subject", type: :FString}
  ],

"CheatKillSurroundingCharactersRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MaxRadius_cm", type: :float},
    %{name: "FactionRelationScope", type: {:enum, "ETzFactionRelationScopeType"}},
    %{name: "IsSkipDyingAndFinishable", type: :unknown}
  ],

"CovenantSupportApplyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SupportMemberGuid", type: {:uint, 8}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerWorkInfo", type: {:nullable, {:struct, "FTzFollowerWorkInfo"}}},
    %{name: "CovenantSupportedCount", type: {:nullable, {:struct, "FTzLimitedCountingInfo"}}}
  ],

"EquipmentPresetSelectResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "ETzEquipmentPresetIndexType"}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "FTzPlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}}
  ],

"AdditionalHealthAndManaPointsAmountInfo" => [
    %{name: "AffectVuid", type: {:struct, "FTzVuid"}},
    %{name: "AdditionalHealthPointsAmountDelta", type: {:uint, 8}},
    %{name: "AdditionalManaPointsAmountDelta", type: {:uint, 8}}
  ],

"ServerDrivenPlayStartRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionCuid", type: {:nullable, {:struct, "FTzCuid"}}},
    %{name: "HuntingLocation_cm", type: {:nullable, :FVector}},
    %{name: "ResupplyOnStart", type: :unknown}
  ],

"GearEnchantPreserveItemAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemAdditionalInfo"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}}
  ],

"MailCovenantWeeklyRubyDonationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "CovenantWeeklyRubyDonationInfos", type: {:list, {:struct, "CovenantWeeklyRubyDonationInfo"}}}
  ],

"ReturnNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ReturnItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"ToyMerchandisePaymentInfo" => [
    %{name: "__base__", type: {:struct, "FTzMerchandisePaymentInfo"}},
    %{name: "ToyProductId", type: :FString},
    %{name: "StampToken", type: :FString},
    %{name: "StampId", type: :FString},
    %{name: "Quantity", type: {:int, 4}},
    %{name: "MarketType", type: {:enum, "ETzMarketType"}},
    %{name: "PriceAmountMicros", type: {:uint, 8}},
    %{name: "PriceCurrencyCode", type: :FString},
    %{name: "IsSubscription", type: :unknown},
    %{name: "LocalizedTitle", type: :FString}
  ],

"FollowerDispatchAutomationResultNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatSpawnStrongholdBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingLevel", type: {:int, 4}}
  ],

"CovenantRejectInvitationsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuids", type: {:list, {:uint, 8}}}
  ],

"MonsterBookExperiencePointsItemConsumeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "UpdatedNodeStateInfo", type: {:nullable, {:struct, "FTzMonsterBookNodeAcquiredStateInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "FTzMonsterBookCollectionInfo"}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}}
  ],

"CheatFinishHavenBuildingWorkResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
  ],

"MapDistrictOpenNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
  ],

"QueryPlayerBattalionJoinableResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "IsJoinableBattalion", type: :unknown}
  ],

"RealmAccountPresentRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FollowerSquadResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleDisconnectNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBattleAttackOuterGateStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackPhaseStartNotify"}}
  ],

"ContentsActivationUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ContentsActivationFlags", type: {:list, :bool}}
  ],

"CovenantUpdateEmblemInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"SkillGroundTargetingInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillTargetingInfo"}},
    %{name: "DirectionYaw_rad", type: :float},
    %{name: "Location_cm", type: :FVector},
    %{name: "IsOriginatedAtCasterLocationProxy", type: :unknown}
  ],

"CovenantStrongholdTaxSettlementNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "SettlementAmount", type: {:uint, 8}}
  ],

"RPCInvokingMessage" => [
    %{name: "__base__", type: {:struct, "RPCMessage"}},
    %{name: "InterfaceTypeCode", type: {:int, 4}},
    %{name: "MethodId", type: {:int, 4}},
    %{name: "Param", type: {:nullable, :message}},
    %{name: "FireAndForget", type: :unknown},
    %{name: "HasCancellationToken", type: :unknown}
  ],

"CovenantSynchronizeMemberInfosRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"DoodadInfo" => [
    %{name: "__base__", type: {:struct, "FTzEntityInfo"}},
    %{name: "DoodadCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"WorldMapPvpBattleMergeNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleGuid1", type: {:uint, 8}},
    %{name: "PvpBattleGuid2", type: {:uint, 8}},
    %{name: "PvpBattleInfo", type: {:nullable, :message}}
  ],

"CheatMonsterBookAcquireAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "MonsterBookInfo", type: {:nullable, {:struct, "FTzMonsterBookInfo"}}}
  ],

"CheatChangeRankingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantDiplomacyHostilityKillCountUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "DeclarantCovenantKillCount", type: {:int, 4}},
    %{name: "DeclaredCovenantKillCount", type: {:int, 4}}
  ],

"StanceSwitchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SwitchRequestedStance", type: {:enum, "ETzStanceType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}}
  ],

"ErFrontServerSessionWaitingQueueNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WaitQueueType", type: {:enum, "ETzWaitQueueType"}},
    %{name: "WaitingQueueRemainingCount", type: {:int, 4}},
    %{name: "RealmHasSpaceAvailable", type: :unknown}
  ],

"QuestRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}},
    %{name: "HiddenRewardInfo", type: {:nullable, {:struct, "FTzRewardInfo"}}}
  ],

"CheatAccountAffectAttachResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AccountAffectCuid", type: {:struct, "FTzCuid"}}
  ],

"BattalionMemberLevelSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionMemberInfoSynchronizeNotify"}},
    %{name: "Level", type: {:int, 4}}
  ],

"FindWarpPointsForAutoMoveToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"MailMarkAsImportantRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "ETzMailBoxKindType"}}
  ],

"BuildingBaseBuildingExistenceSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "IsBaseBuildingExist", type: :unknown}
  ],

"SecessionChatRoomResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"ItemAddInfo" => [
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"StrongholdBattleUpdateSiegeWeaponTargetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "TargetSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantRejectInvitationsFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RejectFailedCovenantGuids", type: {:list, {:uint, 8}}}
  ],

"StrongholdCancelProtectionReservationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantBanishMemberRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MailStrongholdPayDebtLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "NextPayMaintenanceCostDateTime", type: :FDateTime}
  ],

"CheatRestoreChatCovenantRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"OrganizationStatPrimaryKey" => [
    %{name: "OrganizationStatKind", type: {:enum, "ETzOrganizationStatKindType"}},
    %{name: "TargetKindEnumInteger", type: {:int, 4}},
    %{name: "EffectKindEnumInteger", type: {:int, 4}},
    %{name: "EffectCuid", type: {:struct, "FTzCuid"}}
  ],

"ItemAutoUseInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCuids", type: {:list, :cuid}}
  ],

"CovenantSummaryInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CheatStrongholdBattleCompleteAttackPhaseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatGetEnvironmentVariablesRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RewardInfo" => [
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "RewardItemInfos", type: {:list, {:struct, "ItemInfo"}}},
    %{name: "SortedRewardItemIndexWithCounts", type: {:list, {:struct, "RewardItemIndexWithCount"}}},
    %{name: "EntanglementGauge", type: {:int, 4}},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "BossChaseGauge", type: {:int, 4}},
    %{name: "IsUpgradeSlayingGrade", type: :unknown},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "AnniversaryRewardCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "AnniversaryPoint", type: {:uint, 8}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}},
    %{name: "UnlockPaidRewardSeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "UnlockPlusRewardSeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "UnlockPaidAttendanceCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatApplyCollectionSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionSetCuid", type: {:struct, "FTzCuid"}}
  ],

"WorldMapPvpBattleInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "PvpBattleInfos", type: {:map, :cuid, {:struct, "TMap<long_long"}}}
  ],

"CovenantDiplomacyDeclareHostilityNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatCovenantGiftPaidItemResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ExpeditionInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "ExpeditionSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzExpeditionSummaryInfo"}}}
  ],

"CombatOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "CombatTargetOptionInfo", type: {:nullable, {:struct, "FTzCombatTargetOptionInfo"}}},
    %{name: "CombatLootOptionInfo", type: {:nullable, {:struct, "FTzCombatLootOptionInfo"}}}
  ],

"BuildingWorkRequestInfo" => [
    %{name: "BaseInfo", type: {:nullable, :message}}
  ],

"BattalionSwapFormationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrderA", type: {:int, 4}},
    %{name: "SquadMemberOrderA", type: {:int, 4}},
    %{name: "PlayerGuidA", type: {:uint, 8}},
    %{name: "SquadOrderB", type: {:int, 4}},
    %{name: "SquadMemberOrderB", type: {:int, 4}},
    %{name: "PlayerGuidB", type: {:uint, 8}},
    %{name: "SwapFormationReason", type: {:enum, "ETzBattalionSwapFormationReasonType"}}
  ],

"PvpRecordKillerNpcInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpRecordNpcInfo"}},
    %{name: "Damage", type: {:uint, 8}},
    %{name: "AttackerKind", type: {:enum, "ETzPvpRecordAttackerKindType"}},
    %{name: "LastAttackDateTime", type: :FDateTime}
  ],

"BattalionChatInfo" => [
    %{name: "__base__", type: {:struct, "FTzChatInfo"}},
    %{name: "IsNotice", type: :unknown}
  ],

"CovenantTradeCategoryQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}}
  ],

"CharacterMoveStopInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveInfo"}},
    %{name: "CurrentFacingDirectionYaw_rad", type: :float},
    %{name: "CharacterStopMovingReason", type: {:enum, "ETzCharacterStopMovingReasonType"}}
  ],

"ExpeditionInfo" => [
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "EndDateTime", type: {:nullable, :FDateTime}},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}},
    %{name: "JoinedBattalionCovenantGuids", type: {:map, {:uint, 8}, {:uint, 8}}}
  ],

"CovenantParticipationInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}}
  ],

"CheatOpenAllFogResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantReturnHavenChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"ServerDrivenPlayOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "AlwaysUseWarp", type: :unknown},
    %{name: "SwitchAtCurrentLocationInsideHuntingSite", type: :unknown},
    %{name: "AutoSwitchOnDisconnected", type: :unknown},
    %{name: "DesignatedHuntingSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "DesignatedPlayerWorldMapMarkerGuid", type: {:uint, 8}},
    %{name: "UseAutoResupply", type: :unknown},
    %{name: "AutoResupplyUseCount", type: {:int, 4}},
    %{name: "UseAutoResupplyWhenDead", type: :unknown},
    %{name: "ResupplyWeightLimit_pe2", type: {:int, 4}},
    %{name: "UseHealthPointsRecovery", type: :unknown},
    %{name: "EndWhenDeadInPvp", type: :unknown}
  ],

"StrongholdBattleEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "WinnerBattalionInfo", type: {:nullable, {:struct, "FTzStrongholdBattleWinnerBattalionInfo"}}},
    %{name: "EndReason", type: {:enum, "ETzStrongholdBattleEndReasonType"}},
    %{name: "BattalionParticipateDuration_sec", type: {:int, 4}},
    %{name: "BattalionMemberCoreInfos", type: {:list, {:struct, "BattalionMemberCoreInfo"}}},
    %{name: "BattalionMemberStatisticsInfos", type: {:list, {:struct, "StrongholdBattleCovenantBattalionMemberStatisticsInfo"}}},
    %{name: "BattalionMemberDisplayInfos", type: {:list, {:struct, "StrongholdBattleCovenantBattalionMemberDisplayInfo"}}},
    %{name: "StrongholdBattleRewardInfo", type: {:nullable, {:struct, "FTzStrongholdBattleRewardInfo"}}}
  ],

"WorldMapPvpBattlePublishNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleInfo", type: {:nullable, :message}}
  ],

"CovenantSearchInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "Name", type: :FString},
    %{name: "Level", type: {:int, 4}},
    %{name: "CovenantJoinKind", type: {:enum, "ETzCovenantJoinKindType"}},
    %{name: "LeaderName", type: :FString},
    %{name: "MemberCount", type: {:int, 2}},
    %{name: "MaxMemberCount", type: {:int, 2}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantCampCuid", type: {:struct, "FTzCuid"}},
    %{name: "OccupiedStrongholdCuids", type: {:list, :cuid}},
    %{name: "MainHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsJoinApplied", type: :unknown}
  ],

"RejectDiplomacyChatRoomInvitationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"PrivateChannelCloseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ChannelKind", type: {:enum, "ETzPrivateChannelKindType"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "SquadOrder", type: {:int, 4}}
  ],

"FollowerDeathNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "DeathInfo", type: {:nullable, {:struct, "FTzFollowerDeathInfo"}}}
  ],

"PreregistrationInfo" => [
    %{name: "RealmInfo", type: {:nullable, {:struct, "FTzRealmInfo"}}},
    %{name: "ReservedPlayerName", type: :FString},
    %{name: "IsAnyPlayerCreated", type: :unknown},
    %{name: "IsReservedPlayerCreated", type: :unknown},
    %{name: "ReservedCovenantName", type: :FString},
    %{name: "EndDateTime", type: :FDateTime}
  ],

"StrongholdSummonWaveDefenseInfo" => [
    %{name: "__base__", type: {:struct, "FTzEntityInfo"}},
    %{name: "StrongholdSummonWaveDefenseCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdSummonWaveDefenseStartDateTime", type: :FDateTime},
    %{name: "DefenseTargetGuid", type: {:uint, 8}},
    %{name: "CurrentWaveIndex", type: {:nullable, {:int, 4}}},
    %{name: "CurrentWaveStartDateTime", type: {:nullable, :FDateTime}},
    %{name: "CurrentWaveNpcKnockOutProgress", type: {:map, :cuid, {:int, 4}}}
  ],

"CovenantUpdateCovenantMemberRoleNameRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetCovenantMemberRoleName", type: :FString},
    %{name: "NewCovenantMemberRoleName", type: :FString}
  ],

"QuickSlotModifyNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuickSlotUpdateInfo", type: {:nullable, {:struct, "FTzQuickSlotUpdateInfo"}}}
  ],

"FindShortestTravelPathResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Destination_cm", type: :FVector},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "ReturnItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantReturnHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "StartWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "NearestRoadJunctionToStartLocationId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToDestinationId", type: {:int, 4}},
    %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "PathNotByRoad", type: {:list, :vector}},
    %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:int, 4}}}
  ],

"CovenantHistoryShowArrivalNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantHistoryInfos", type: {:list, {:struct, "CovenantHistoryInfo"}}}
  ],

"CheatRegenerateHealthPointsAndManaPointsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatUnsetStatRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StatKind", type: {:enum, "ETzAdjustableStatKindType"}}
  ],

"GearEnhancementResultInfo" => [
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "IsEnhancementSuccess", type: :unknown},
    %{name: "ItemInfo", type: {:nullable, :message}},
    %{name: "ResultEnhancementGrade", type: {:int, 2}},
    %{name: "PreviousEnhancementGrade", type: {:int, 2}},
    %{name: "IsConfirmedEnhancement", type: :unknown},
    %{name: "IsEroded", type: :unknown},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "DestructionRewardInfo", type: {:nullable, {:struct, "FTzRewardInfo"}}},
    %{name: "IsDestroyed", type: :unknown}
  ],

"ArquiruneInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemInfo"}}
  ],

"MonsterBookNodeReceiveLevelUpRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}},
    %{name: "LastRewardedLevel", type: {:int, 4}}
  ],

"MarketSellResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"NpcSpeechBalloonTextFormatInfo" => [
    %{name: "TextFormatParameters", type: {:list, :string}}
  ],

"CovenantWatchRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString}
  ],

"CheatChangeStrongholdAllBuildingLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingKind", type: {:enum, "ETzBuildingKindType"}},
    %{name: "BuildingLevel", type: {:int, 4}}
  ],

"RankingAdditionalSourceInfo" => [
    
  ],

"CheatCloseFogRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FogCuid", type: {:struct, "FTzCuid"}}
  ],

"ChatQueryEntityInfoByPlayerGuidRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"InteractableDoodadRemainingInteractionCompleteCountSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "RemainingInteractionCompleteCount", type: {:int, 4}}
  ],

"MonsterBookExperiencePointsItemConsumeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"TlsLikeEncryptServerCompleted" => [
    %{name: "TozNetwork.Handshake.TlsLikeEncryptor.TlsLikeEncryptServerCompleted", type: :unknown}
  ],

"PartyCreateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PartyInfo", type: {:nullable, {:struct, "FTzPartyInfo"}}}
  ],

"StrongholdSummonWaveDefenseNpcSummonWaveSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "NpcSummonWaveStartDateTime", type: :FDateTime},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"CovenantResearchNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantResearchInfo", type: {:nullable, {:struct, "FTzCovenantResearchInfo"}}}
  ],

"PlayerMurderPointsInfo" => [
    %{name: "PlayerChainKillCount", type: {:int, 4}},
    %{name: "LastKillPlayerGuid", type: {:uint, 8}},
    %{name: "LastKillPlayerKillDateTime", type: :FDateTime},
    %{name: "LastKillPlayerChainKillCount", type: {:int, 4}},
    %{name: "FissionPoints", type: {:int, 4}},
    %{name: "DestroyPoints", type: {:int, 4}},
    %{name: "DestroyerExpireDateTime", type: {:nullable, :FDateTime}}
  ],

"CovenantDiplomacyApplyAllianceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"ReceivedRewardInfo" => [
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "ExperiencePointsFromFinisher", type: {:uint, 8}},
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:nullable, {:struct, "FTzItemAddInfo"}}},
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "IsAnyRewardSentByMail", type: :unknown},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "FTzCovenantRewardInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "EntanglementGauge", type: {:int, 4}},
    %{name: "BossChaseGauge", type: {:int, 4}},
    %{name: "AmityReason", type: :FString},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "IsUpgradeSlayingGrade", type: :unknown},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}},
    %{name: "UnlockPaidRewardSeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "UnlockPlusRewardSeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "UnlockPaidAttendanceCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantGiftQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"StrongholdBattleStatisticsKnockOutEventInfo" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleStatisticsEventInfo"}}
  ],

"AnniversaryAchievementUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryAchievementInfo", type: {:nullable, :message}}
  ],

"ClanSponsorRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ClanCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"NavMeshTileCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CheckRequestedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"FavorBossQuestAllAcceptResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FavoriteCraftRecipeRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsRegistered", type: :unknown}
  ],

"CheatAccomplishAchievementRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatSpawnOccupiableNpcBossRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "RetainDuration_sec", type: {:int, 4}}
  ],

"CovenantJoinedStrongholdBattleInfo" => [
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"AchievementInfo" => [
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}},
    %{name: "MissionProgressCounts", type: {:list, {:uint, 8}}},
    %{name: "AccomplishDateTime", type: {:nullable, :FDateTime}},
    %{name: "IsRewarded", type: :unknown}
  ],

"PartyDismissFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmIntegrationBattleWarpResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"QueryChatRecordsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRecordsIndex", type: {:nullable, {:struct, "FTzChatRecordsIndex"}}},
    %{name: "Count", type: {:int, 4}}
  ],

"UniverseAccountLogoutResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ErosionInstallCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SquadInfo" => [
    %{name: "MemberGuids", type: {:list, {:uint, 8}}},
    %{name: "TargetLocationInfos", type: {:list, {:struct, "TargetLocationInfo"}}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"RealmAccountRegionContentPlayTimeInfo" => [
    %{name: "RegionContentKind", type: {:enum, "ETzRegionContentKindType"}},
    %{name: "CrossRealmSeasonCuid", type: {:struct, "FTzCuid"}},
    %{name: "RegionContentPlayTimeInfo_sec", type: {:nullable, :message}},
    %{name: "AccumulateRechargedTime_sec", type: {:int, 4}},
    %{name: "LastResetDateTime", type: :FDateTime}
  ],

"TeaseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}}
  ],

"ErInterServerMigrationSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerSessionInitializeInfo"}}
  ],

"CheatRealmAccountRealmTransferBlockRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ApplyAll", type: :unknown},
    %{name: "RealmAccountRealmTransferStepString", type: :FString}
  ],

"GameOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"ContentsRelockNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ContentsUnlockKinds", type: :unknown}
  ],

"FollowerReturnReasonAdditionalInfo" => [
    
  ],

"StrongholdBuildingDowngradeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"ChatEntitySummaryInfo" => [
    %{name: "ChatEntityGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "CovenantName", type: :FString}
  ],

"CovenantConfirmInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"PrivateChannelCloseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChannelKind", type: {:enum, "ETzPrivateChannelKindType"}}
  ],

"CheatPromoteAllFollowerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetTier", type: {:int, 4}}
  ],

"DataTable" => [
    %{name: "DataHeader", type: {:nullable, :message}},
    %{name: "DataId", type: {:int, 4}},
    %{name: "RegDate", type: :unknown},
    %{name: "Rows", type: :unknown}
  ],

"RealmAccountRealmTransferCheckInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ExpeditionLeaveBattalionNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"FollowerReturnReasonByHostilityCovenantDeclareAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzFollowerReturnReasonAdditionalInfo"}},
    %{name: "CovenantName", type: :FString}
  ],

"FollowerGatheredHavenItemNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "GatheredItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GatheredItemCount", type: {:uint, 8}}
  ],

"StrongholdBattleCarriageLivingTotemLocationInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "MovePathInfo", type: {:nullable, {:struct, "FTzMovePathInfo"}}}
  ],

"CovenantTradeGoodsDealInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantTradeGoodsSalesInfo"}},
    %{name: "BuyerInfo", type: {:nullable, :message}},
    %{name: "DealDateTime", type: {:nullable, :FDateTime}}
  ],

"WarehouseInfo" => [
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "PointCurrencyContainerInfo", type: {:map, :cuid, {:uint, 8}}},
    %{name: "InventoryInfo", type: {:nullable, {:struct, "FTzInventoryInfo"}}}
  ],

"CheatCloseAllFogResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerPublicStatsInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterPublicStatsInfo"}},
    %{name: "AdditionalPlayerRunSpeedRatio_pe4", type: {:int, 4}},
    %{name: "SwimSpeed_cmpsec", type: {:int, 2}},
    %{name: "SwimAngularSpeed_radpsec", type: :float},
    %{name: "CrawlSpeed_cmpsec", type: {:int, 2}},
    %{name: "CrawlAngularSpeed_radpsec", type: :float},
    %{name: "OnBoardWalkSpeed_cmpsec", type: {:int, 2}},
    %{name: "OnBoardWalkAngularSpeed_radpsec", type: :float},
    %{name: "OnBoardRunSpeed_cmpsec", type: {:int, 2}},
    %{name: "OnBoardRunAngularSpeed_radpsec", type: :float}
  ],

"AetherOptionResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}}
  ],

"StackableItemSelector" => [
    %{name: "__base__", type: {:struct, "FTzMultipleItemSelector"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsBound", type: {:nullable, "lVar1=4;puVar2=&DAT_0901b5c8;if(*(char*)(in_x0+0x19)=='\\0'){lVar1=5;puVar2=(undefined8*)\"false\";}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar1<<1);__memcpy_chk((ulong)&local_198|1,puVar2,lVar1,0x17);uVar7=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar1)=0;}uVar3=local_190;pcVar5=local_188;if((uVar7&1)==0){uVar3=uVar7>>1;pcVar5=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "IsStorable", type: {:nullable, "lVar1=4;puVar2=&DAT_0901b5c8;if(*(char*)(in_x0+0x1b)=='\\0'){lVar1=5;puVar2=(undefined8*)\"false\";}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar1<<1);__memcpy_chk((ulong)&local_198|1,puVar2,lVar1,0x17);uVar7=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar1)=0;}uVar3=local_190;pcVar5=local_188;if((uVar7&1)==0){uVar3=uVar7>>1;pcVar5=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "ExpireBeginDateTime", type: {:nullable, :FDateTime}},
    %{name: "ExpireEndDateTime", type: {:nullable, :FDateTime}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"ShopAutoSellSettingUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AutoSellSettings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"OccupiableNpcSummaryBulkUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "OccupiableNpcSummaryInfos", type: {:list, {:struct, "OccupiableNpcSummaryInfo"}}}
  ],

"CrossRealmCovenantQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"MailQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "UpperBoundDateTime", type: {:nullable, :FDateTime}}
  ],

"CollisionFreeSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "IsCollisionFree", type: :unknown}
  ],

"PowerSavingModePlayInfo" => [
    %{name: "RewardInfo", type: {:nullable, {:struct, "FTzPowerSavingModeRewardInfo"}}}
  ],

"MountDeboardingFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantResearchInfo" => [
    %{name: "ResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResearchLevel", type: {:int, 4}},
    %{name: "ResearchState", type: {:enum, "ETzCovenantResearchStateType"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "LastUpdateGauge_mw", type: {:uint, 8}},
    %{name: "ResearchStartDateTime", type: {:nullable, :FDateTime}}
  ],

"CheatChangeSkillCooldownDurationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "Duration_msec", type: {:int, 4}}
  ],

"FindPathToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :FVector},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"RejectDiplomacyChatRoomInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CheatAnniversaryAchievementResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AnniversaryAchievementPointInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryAchievementPointInfo"}}}
  ],

"PartyConfirmRecommendationForInviteeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RecommenderRealmPlayerId", type: {:struct, "FTzRealmPlayerId"}},
    %{name: "InviteeRealmPlayerId", type: {:struct, "FTzRealmPlayerId"}},
    %{name: "InviteeName", type: :FString},
    %{name: "IsApproved", type: :unknown}
  ],

"CovenantSynchronizeMemberIsConnectedNotify" => [
    %{name: "__base__", type: {:struct, "FTzCovenantSynchronizeMemberNotify"}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}},
    %{name: "LastClientDisconnectDateTime", type: :FDateTime}
  ],

"MailStrongholdTaxSettlementLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"MailCountQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}}
  ],

"CheatDiscoverAllSelfieDoodadSpawnersRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CollectionCategoryActiveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionCategoryCuids", type: {:list, :cuid}}
  ],

"CreateDiplomacyChatRoomResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"AccelerationUseFollowerWorkResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "AccelerationActionKind", type: {:enum, "ETzAccelerationActionKindType"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "AcceleratedFollowerWorkInfo", type: {:nullable, {:struct, "FTzFollowerWorkInfo"}}}
  ],

"CovenantBattalionExpeditionLivingTotemInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ExpeditionLivingTotemMaxHealthPoints", type: {:uint, 8}},
    %{name: "ExpeditionLivingTotemHealthPoints", type: {:uint, 8}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "MovePathInfo", type: {:nullable, {:struct, "FTzMovePathInfo"}}}
  ],

"MailStrongholdBattleResultLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailStrongholdBattleLayoutInfo"}},
    %{name: "WinnerCovenantName", type: :FString},
    %{name: "WinnerCovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"CharacterMoveInfo" => [
    %{name: "Location_cm", type: :FVector},
    %{name: "ServerUtcNow", type: :FDateTime},
    %{name: "DelayForOthersDuration_msec", type: :float}
  ],

"ChatOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "ChatTabFilter", type: {:list, {:enum, "ChatKindType"}}},
    %{name: "ItemAcquireNotifyDisplayOption", type: :unknown},
    %{name: "CovenantRewardAcquireNotifyDisplayOption", type: :unknown},
    %{name: "ChatMacros", type: {:map, {:int, 4}, :string}}
  ],

"PlayerCustomizeInfoChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "Gender", type: {:enum, "ETzGenderType"}}
  ],

"CovenantTradeSalesRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MailStrongholdCalculateMaintenanceCostLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "MaintenanceCost", type: {:uint, 8}}
  ],

"InstanceEventStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EventCuid", type: {:struct, "FTzCuid"}}
  ],

"KickPreexistingSessionConfirmResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "KickPreexistingSession", type: :unknown}
  ],

"BuffProtectionRecoveryStatusNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffGuid", type: {:uint, 8}},
    %{name: "ProtectionRecoveryGauge", type: {:uint, 8}}
  ],

"NavMeshTileDataResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CheckedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"CovenantQueryRecommendCovenantSummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"BuffDetachNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffGuid", type: {:uint, 8}},
    %{name: "ServerUtcNow", type: :FDateTime}
  ],

"SkillTargetingInfo" => [
    
  ],

"PlayerFollowerInfo" => [
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}},
    %{name: "FollowerDispatchOverallInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzFollowerDispatchOverallInfo"}}},
    %{name: "FollowerCollectionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzFollowerCollectionInfo"}}}
  ],

"CovenantMemberContributionInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DailyContributionPoints", type: {:uint, 8}},
    %{name: "WeeklyContributionPoints", type: {:uint, 8}},
    %{name: "PreviousWeeklyContributionPoints", type: {:uint, 8}},
    %{name: "TotalContributionPoints", type: {:uint, 8}},
    %{name: "ContributionPointsUpdateDateTime", type: :FDateTime}
  ],

"PartyLeaveFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"QueryPlayerSummaryInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString}
  ],

"StrongholdBuildingRepairRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"EntityRemoveBulkNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuids", type: {:list, {:uint, 8}}},
    %{name: "EntityRemoveReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
  ],

"ErFrontServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerSessionInitializeInfo"}},
    %{name: "WaitQueueType", type: {:enum, "ETzWaitQueueType"}},
    %{name: "WaitingQueueRemainingCount", type: {:int, 4}},
    %{name: "RealmHasSpaceAvailable", type: :unknown},
    %{name: "PopupCommunityAutomatically", type: :unknown},
    %{name: "ServerConfigInfo", type: {:nullable, {:struct, "FTzServerConfigInfo"}}}
  ],

"ErLoginServerInitialToyAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErLoginServerInitialAuthenticateInfo"}},
    %{name: "Npsn", type: :FString},
    %{name: "NpToken", type: :FString},
    %{name: "NgsmToken", type: :FString},
    %{name: "NpaCode", type: :FString},
    %{name: "NexonSn", type: {:uint, 8}}
  ],

"StrongholdBattleRewardInfo" => [
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "RewardItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}}
  ],

"RealmAccountLogoutResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "LoginServerConnectionInfo", type: {:nullable, {:struct, "FTzConnectionInfo"}}}
  ],

"PartyLeaveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"GearEnchantSlotInfo" => [
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "GearEnchantOptionGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "GearEnchantOptionStatSetCuid", type: {:struct, "FTzCuid"}},
    %{name: "CharacterStatChange", type: {:nullable, {:struct, "FTzCharacterStatChangeInfo"}}}
  ],

"PvpRecordKillerPlayerInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpRecordAttackerPlayerInfo"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "HasTeased", type: :unknown}
  ],

"SkillAffectTargetStatsAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillStatsAffectInfo"}},
    %{name: "IsCritical", type: :unknown},
    %{name: "IsBlocked", type: :unknown},
    %{name: "IsGlancingBlow", type: :unknown},
    %{name: "ProtectedDamage", type: {:int, 4}},
    %{name: "DamageDistributionInfo", type: {:nullable, {:struct, "FTzSkillAffectDamageDistributionInfo"}}}
  ],

"FollowerCoreInfo" => [
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}},
    %{name: "FollowerLevel", type: {:int, 4}},
    %{name: "DepartureHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "PlayerCovenantGuid", type: {:uint, 8}},
    %{name: "ReturnReason", type: {:enum, "ETzFollowerReturnReasonType"}},
    %{name: "ReturnReasonAdditionalInfo", type: {:nullable, :message}},
    %{name: "LeaveToWorkplaceDateTime", type: :FDateTime},
    %{name: "ArrivedAtWorkplaceDateTime", type: :FDateTime},
    %{name: "LeaveToHeadquartersDateTime", type: :FDateTime}
  ],

"ServerDrivenPlayOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "FTzServerDrivenPlayOptionInfo"}}}
  ],

"CovenantRealmTransferInfo" => [
    %{name: "RealmTransferCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantRealmTransferMemberReadyChecks", type: {:map, {:uint, 8}, :bool}},
    %{name: "CovenantRealmTransferExpireDateTime", type: {:nullable, :FDateTime}}
  ],

"AnniversaryAchievementPrivateChannelKeepaliveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"InventoryItemDeleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"PvpRecordDeadPlayerInfo" => [
    %{name: "__base__", type: {:struct, "FTzPvpRecordPlayerInfo"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "HasPlayerLocationMonitoringRegistered", type: :unknown}
  ],

"NpcOccupationCovenantInfo" => [
    %{name: "RealmCovenantId", type: {:struct, "FTzRealmCovenantId"}},
    %{name: "OccupationDateTime", type: :FDateTime},
    %{name: "OccupationScore", type: {:int, 4}}
  ],

"ExpeditionJoinRequestInfo" => [
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsAllowVolunteerJoinApply", type: :unknown},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown}
  ],

"SendPrivateChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "FTzSendChatMessageRequest"}},
    %{name: "RecipientPlayerName", type: :FString},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CovenantPayDividendRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DividendInfo", type: {:nullable, :message}}
  ],

"ItemDestroyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "FTzItemGuidSelector"}}}
  ],

"ErosionInstallCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InstallerGuid", type: {:uint, 8}}
  ],

"CovenantGoodsRegistrationRegisteredGoodsInfoUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "RegisteredGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzRegisteredGoodsInfo"}}}
  ],

"QueryChatRoomRecordsInitializationInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomRecordsInitializationInfos", type: {:list, {:struct, "ChatRoomRecordsInitializationInfo"}}}
  ],

"NxLogCharFieldMoveInfo" => [
    %{name: "FieldIdBef", type: {:struct, "FTzCuid"}},
    %{name: "FieldUidBef", type: {:uint, 8}},
    %{name: "DistrictBef", type: {:struct, "FTzCuid"}},
    %{name: "TeleportReason", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x31));uVar9=local_198&0xff;}uVar1=local_190;pcVar3=local_188;if((uVar9&1)==0){uVar1=uVar9>>1;pcVar3=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ServerDrivenPlayOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "FTzServerDrivenPlayOptionInfo"}}}
  ],

"CheatTutorialResetAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"InstanceEventAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAffectSourceInfo"}}
  ],

"CheatClearSkillSlotQuickSlotAutoUseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AppliedPlayerSkillSlots", type: {:list, {:struct, "PlayerSkillSlotUpdateInfo"}}}
  ],

"GearBatchCraftRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "CraftTargetGrades", type: {:list, {:enum, "ItemGradeType"}}},
    %{name: "CraftTargetGearCategories", type: {:list, {:enum, "GearCategoryKindType"}}}
  ],

"VersionCheckResult" => [
    %{name: "Code", type: :unknown},
    %{name: "AdditionalData", type: :unknown}
  ],

"CovenantBattalionQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatSummonNpcResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FollowerDeathInfo" => [
    %{name: "DeathDateTime", type: :FDateTime},
    %{name: "DeathReason", type: {:enum, "ETzFollowerDeathReasonType"}},
    %{name: "KillingInfo", type: {:nullable, :message}},
    %{name: "LootedItemIndexWithCount", type: {:nullable, :message}}
  ],

"PartyConfirmRecommendationForInviteeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RecommenderRealmPlayerId", type: {:struct, "FTzRealmPlayerId"}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "FTzPartyMemberInfo"}}}
  ],

"PlayerSkillSlotUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "PlayerSkillSlotIndex", type: {:enum, "ETzPlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "FTzPlayerSkillSlotInfo"}}}
  ],

"StrongholdBattleDeclarePrerequisitesQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TargetStrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"MailsDeleteInTabRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "UpperBoundDateTime", type: :FDateTime}
  ],

"PointCurrencyContainerUpdateInfo" => [
    %{name: "CuidToAmountDelta", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CuidToAmount", type: {:map, :cuid, {:uint, 8}}}
  ],

"SeasonPassLevelBuyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:int, 4}}
  ],

"CovenantWarehouseSummaryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "ItemInfos", type: {:list, {:struct, "CuidAndCountInfo"}}}
  ],

"CheatChangeCashShopCheckBuyLimitOptionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "IsIgnoreToCheckBuyLimit", type: :unknown}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveResetFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdCampaignBattleInfo" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleInfo"}},
    %{name: "CampaignProgressInfo", type: {:nullable, :message}},
    %{name: "TargetMissionCuids", type: {:list, :cuid}},
    %{name: "CampaignConditionProgressInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCampaignConditionProgressInfo"}}}
  ],

"ErInterServerMigrationAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErGameServerAuthenticateInfo"}}
  ],

"AnniversaryPointRankingRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryBeginDateTime", type: :FDateTime},
    %{name: "DateTime", type: {:nullable, :FDateTime}},
    %{name: "RankingInfos", type: {:list, {:struct, "RankingInfo"}}},
    %{name: "CovenantRankingInfo", type: {:nullable, :message}},
    %{name: "CovenantMemberAnniversaryPointInfos", type: {:list, {:struct, "CovenantMemberAnniversaryPointInfo"}}}
  ],

"CheatRegisterCheatEnabledPlayerNameRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerName", type: :FString}
  ],

"CheatPvpScoreRankingSourceInfoChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PvpScore", type: {:uint, 8}},
    %{name: "LastRole", type: {:enum, "ETzPvpRecordCharacterRoleType"}},
    %{name: "DeadCount", type: {:int, 4}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "AssistCount", type: {:int, 4}}
  ],

"StrongholdBattleUseSiegeWeaponSlotFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SlotIndex", type: {:int, 2}}
  ],

"CovenantUpdateForbiddenAetherBoxCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatChangeCurrencyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"GuiseEquipRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GuiseCuid", type: {:struct, "FTzCuid"}}
  ],

"MarketFavoriteItemRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "MarketFavoriteItemInfo", type: {:nullable, {:struct, "FTzMarketFavoriteItemInfo"}}},
    %{name: "IsOnSaleMarketFavoriteItemInfo", type: :unknown}
  ],

"AnniversaryQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"MailStrongholdBattleLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"GearSlotPresetModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "FTzPlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}}
  ],

"NpcActionNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "NpcActionCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcSpeechBalloonInfo", type: {:nullable, :message}}
  ],

"PlayerCustomizeInfo" => [
    %{name: "BodyStyleSetCuid", type: {:struct, "FTzCuid"}},
    %{name: "HairStyleSetCuid", type: {:struct, "FTzCuid"}},
    %{name: "SkinRoughness", type: {:int, 2}},
    %{name: "SkinColor", type: {:int, 2}},
    %{name: "Hair1Color", type: {:int, 2}},
    %{name: "Hair2Color", type: {:int, 2}},
    %{name: "IrisRColor", type: {:int, 2}},
    %{name: "IrisLColor", type: {:int, 2}},
    %{name: "ScleraColor", type: {:int, 2}},
    %{name: "IrisScale", type: {:int, 2}},
    %{name: "IrisPositionY", type: {:int, 2}},
    %{name: "EyebrowFrame", type: {:int, 2}},
    %{name: "EyebrowColor", type: {:int, 2}},
    %{name: "EyebrowIntensity", type: {:int, 2}},
    %{name: "EyelineFrame", type: {:int, 2}},
    %{name: "EyelineIntensity", type: {:int, 2}},
    %{name: "EyeshadowColor", type: {:int, 2}},
    %{name: "EyelineColor", type: {:int, 2}},
    %{name: "IrisTexture", type: {:int, 2}},
    %{name: "EyeshadowIntensity", type: {:int, 2}},
    %{name: "BlusherFrame", type: {:int, 2}},
    %{name: "BlusherColor", type: {:int, 2}},
    %{name: "BlusherIntensity", type: {:int, 2}},
    %{name: "LipFrame", type: {:int, 2}},
    %{name: "LipColor", type: {:int, 2}},
    %{name: "LipIntensity", type: {:int, 2}},
    %{name: "FaceTexture", type: {:int, 2}},
    %{name: "DecalTexture", type: {:int, 2}},
    %{name: "DecalIntensity", type: {:int, 2}},
    %{name: "DecalScale", type: {:int, 2}},
    %{name: "DecalRotation", type: {:int, 2}},
    %{name: "DecalPositionX", type: {:int, 2}},
    %{name: "DecalPositionY", type: {:int, 2}},
    %{name: "Forehead_Y", type: {:int, 2}},
    %{name: "Forehead_Z", type: {:int, 2}},
    %{name: "Eyebrow_End", type: {:int, 2}},
    %{name: "Eyebrow_Y", type: {:int, 2}},
    %{name: "Eyebrow_Z", type: {:int, 2}},
    %{name: "Eye_End", type: {:int, 2}},
    %{name: "Eye_Mid1", type: {:int, 2}},
    %{name: "Eye_Mid2", type: {:int, 2}},
    %{name: "Eye_X", type: {:int, 2}},
    %{name: "Eye_Y", type: {:int, 2}},
    %{name: "Eye_Z", type: {:int, 2}},
    %{name: "Eye_S1", type: {:int, 2}},
    %{name: "Eye_S2", type: {:int, 2}},
    %{name: "Cheek_X", type: {:int, 2}},
    %{name: "Cheek_Y", type: {:int, 2}},
    %{name: "Cheek_Z", type: {:int, 2}},
    %{name: "Cheek_s1", type: {:int, 2}},
    %{name: "Nose_End", type: {:int, 2}},
    %{name: "Nose_Mid", type: {:int, 2}},
    %{name: "Nose_X", type: {:int, 2}},
    %{name: "Nose_Y", type: {:int, 2}},
    %{name: "Nose_Z", type: {:int, 2}},
    %{name: "Nose_s1", type: {:int, 2}},
    %{name: "Nose_s2", type: {:int, 2}},
    %{name: "Mouth_End", type: {:int, 2}},
    %{name: "Mouth_Mid", type: {:int, 2}},
    %{name: "Mouth_X", type: {:int, 2}},
    %{name: "Mouth_Y", type: {:int, 2}},
    %{name: "Mouth_Z", type: {:int, 2}},
    %{name: "Mouth_S1", type: {:int, 2}},
    %{name: "Mouth_S2", type: {:int, 2}},
    %{name: "Chin_X", type: {:int, 2}},
    %{name: "Chin_Y", type: {:int, 2}},
    %{name: "Chin_Z", type: {:int, 2}},
    %{name: "Chin_Mid", type: {:int, 2}},
    %{name: "Jaw_X", type: {:int, 2}},
    %{name: "Jaw_Y", type: {:int, 2}},
    %{name: "BeardFrame", type: {:int, 2}},
    %{name: "BeardColor", type: {:int, 2}},
    %{name: "BeardIntensity", type: {:int, 2}},
    %{name: "Beard_Color_Brightness", type: {:int, 2}},
    %{name: "HairShadowsFrame", type: {:int, 2}},
    %{name: "Head_XYZ", type: {:int, 2}},
    %{name: "Head_Z", type: {:int, 2}},
    %{name: "Neck_X", type: {:int, 2}},
    %{name: "Neck_YZ", type: {:int, 2}},
    %{name: "Breast_XYZ", type: {:int, 2}},
    %{name: "Chest_XYZ", type: {:int, 2}},
    %{name: "Spine_X", type: {:int, 2}},
    %{name: "Spine_YZ", type: {:int, 2}},
    %{name: "Pelvis_YZ", type: {:int, 2}},
    %{name: "Clavicle_XYZ", type: {:int, 2}},
    %{name: "Arm_X", type: {:int, 2}},
    %{name: "Arm_YZ", type: {:int, 2}},
    %{name: "Hand_XYZ", type: {:int, 2}},
    %{name: "Leg_X", type: {:int, 2}},
    %{name: "Leg_YZ", type: {:int, 2}},
    %{name: "Foot_XYZ", type: {:int, 2}},
    %{name: "Hair1_Color_Brightness", type: {:int, 2}},
    %{name: "Hair2_Color_Brightness", type: {:int, 2}},
    %{name: "Eyebrow_Color_Brightness", type: {:int, 2}},
    %{name: "Temple", type: {:int, 2}},
    %{name: "Head_Y", type: {:int, 2}},
    %{name: "Cheek_D_X", type: {:int, 2}},
    %{name: "Cheek_D_Y", type: {:int, 2}},
    %{name: "Cheek_D_Z", type: {:int, 2}},
    %{name: "Jaw_Z", type: {:int, 2}},
    %{name: "EyebrowUpDown", type: {:int, 2}},
    %{name: "EyebrowBetween", type: {:int, 2}},
    %{name: "EyeBrowScale_y", type: {:int, 2}},
    %{name: "IrisPositionX", type: {:int, 2}},
    %{name: "DoubleEyelid_Frame", type: {:int, 2}},
    %{name: "DoubleEyelid_Intensity", type: {:int, 2}},
    %{name: "DoubleEyelidUpDown", type: {:int, 2}},
    %{name: "Eye_In_S", type: {:int, 2}},
    %{name: "Eye_In_Y", type: {:int, 2}},
    %{name: "Eye_In_Z", type: {:int, 2}},
    %{name: "Eyelashes_S", type: {:int, 2}},
    %{name: "Eyelashes_Intensity", type: {:int, 2}},
    %{name: "Eyelashes_U_Y", type: {:int, 2}},
    %{name: "Eyelashes_D_Y", type: {:int, 2}},
    %{name: "Upperlip_X", type: {:int, 2}},
    %{name: "Upperlip_Y", type: {:int, 2}},
    %{name: "Lowerlip_X", type: {:int, 2}},
    %{name: "Lowerlip_Y", type: {:int, 2}},
    %{name: "Mouth_End_Y", type: {:int, 2}},
    %{name: "IrisL_Color_Brightness", type: {:int, 2}},
    %{name: "IrisR_Color_Brightness", type: {:int, 2}},
    %{name: "Lens_Relf", type: {:int, 2}},
    %{name: "Lens_Specular", type: {:int, 2}},
    %{name: "Blusher_Color_Brightness", type: {:int, 2}},
    %{name: "Lip_Color_Brightness", type: {:int, 2}},
    %{name: "Lip_Roughness", type: {:int, 2}},
    %{name: "Eyeline_Color_Brightness", type: {:int, 2}},
    %{name: "Eyeshadow_Color_Brightness", type: {:int, 2}},
    %{name: "Eyelashes_Color", type: {:int, 2}},
    %{name: "Eyelashes_Color_Brightness", type: {:int, 2}},
    %{name: "Decal_Color", type: {:int, 2}},
    %{name: "Decal_Color_Brightness", type: {:int, 2}}
  ],

"WorldMapMarkerInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :FString},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "Location_cm", type: :FVector},
    %{name: "InstallDateTimeUtc", type: :FDateTime}
  ],

"PlayedCutSceneAddRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CutSceneCuid", type: {:struct, "FTzCuid"}}
  ],

"AcquireSourceAdditionalParameter" => [
    
  ],

"RealmIntegrationPlayerInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "CovenantName", type: :FString}
  ],

"SkillAutoUseInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RootSkillCuids", type: {:list, :cuid}}
  ],

"BasicOrGrowthGuideAchievementInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementInfo"}}
  ],

"CraftQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CraftCounts", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCraftCountInfo"}}}
  ],

"CheatDestroyPointsCheckResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "DestroyPoints", type: {:int, 4}}
  ],

"ExperiencePointsPlayerRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzPlayerRankingViewInfo"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"ShopRegisteredGoodsUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "Reason", type: {:nullable, {:nullable, :enum}}},
    %{name: "RegisteredGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzRegisteredGoodsInfo"}}}
  ],

"MailBuildingPurificationPauseLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailBuildingWorkLayoutInfo"}},
    %{name: "BuildingWorkPauseReasonKind", type: {:enum, "ETzBuildingWorkPauseReasonKindType"}}
  ],

"SeasonPassInfo" => [
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "SeasonPassCuidString", type: :FString},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "IsPaidRewardUnlocked", type: :unknown},
    %{name: "IsPlusRewardUnlocked", type: :unknown},
    %{name: "RewardedLevels", type: {:map, {:enum, "SeasonPassRewardKindType"}, {:struct, "TSet<int"}}}
  ],

"BattalionLeaveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "BattalionLeaveReason", type: {:enum, "ETzBattalionLeaveReasonType"}}
  ],

"CheatResetCashShopMerchandiseTotalBuyLimitCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AnniversaryStrongholdOccupationRecordInfo" => [
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryEndDateTime", type: :FDateTime},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryStrongholdOccupationCovenantInfos", type: {:list, {:struct, "AnniversaryStrongholdOccupationCovenantInfo"}}}
  ],

"QuestAcceptNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "StartByItem", type: :unknown},
    %{name: "FavorInfo", type: {:nullable, :message}},
    %{name: "FavorMissionInfo", type: {:nullable, :message}}
  ],

"CheatCancelStrongholdProtectionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdSummonWaveDefenseSubscriptionSummaryInfo" => [
    %{name: "StrongholdSummonWaveDefenseCuid", type: {:struct, "FTzCuid"}},
    %{name: "StartDateTime", type: :FDateTime},
    %{name: "WaveIndex", type: {:nullable, {:int, 4}}}
  ],

"ErTozInitializeMessage" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BattalionConfirmInvitationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "IsApproved", type: :unknown}
  ],

"CheatTestGearEnchantOptionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CostItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "GearEnchantOptionGrades", type: {:map, {:int, 2}, {:enum, "GearEnchantGradeType"}}},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "GearEnchantSlotToStatKindToAmountToCount", type: {:map, {:int, 2}, {:struct, "TMap<ETzAdjustableStatKindType"}}}
  ],

"PlayerItemUseFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ParameterInfo", type: {:nullable, :message}},
    %{name: "CooldownExpireDateTimeRangeInfo", type: {:nullable, {:struct, "FTzDateTimeRangeInfo"}}}
  ],

"TargetScanShareResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ConnectionInfo" => [
    %{name: "ServerIp", type: :FString},
    %{name: "ServerPort", type: {:int, 4}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"CovenantSummaryInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "Name", type: :FString},
    %{name: "Level", type: {:int, 4}},
    %{name: "CovenantJoinKind", type: {:enum, "ETzCovenantJoinKindType"}},
    %{name: "LeaderName", type: :FString},
    %{name: "MemberCount", type: {:int, 2}},
    %{name: "MaxMemberCount", type: {:int, 2}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CovenantCampCuid", type: {:struct, "FTzCuid"}},
    %{name: "OccupiedStrongholdCuids", type: {:list, :cuid}},
    %{name: "MainHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "MaximumHeadquartersLevel", type: {:int, 4}},
    %{name: "Introduction", type: :FString},
    %{name: "IntroductionHarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "MainLivingTotemInfo", type: {:nullable, :message}}
  ],

"SendCrossRealmChatMessageResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "CountForFree", type: {:int, 4}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CrossRealmCovenantDiplomacyWithdrawHostilityNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatChangeFollowerLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionChangeOptionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SpellstoneUnequipResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SpellstoneGuid", type: {:uint, 8}}
  ],

"CheatTeleportToQuestMissionLocationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "QuestMissionSequence", type: {:int, 4}}
  ],

"MailMarkAsReadNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "ETzMailBoxKindType"}}
  ],

"StrongholdBuildingCraftResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantCurrencyDonationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CurrencyDonationCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatCovenantGiftPaidItemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGiftBoxCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantBattalionExpeditionJoinNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, {:struct, "FTzExpeditionSummaryInfo"}}},
    %{name: "ExpeditionPhase", type: {:enum, "ETzBattalionExpeditionPhaseType"}},
    %{name: "AnotherBattalionGuids", type: {:list, {:uint, 8}}},
    %{name: "ExpeditionJoinDateTime", type: :FDateTime},
    %{name: "ExpeditionStartLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "BattalionExpeditionInfo", type: {:nullable, :message}}
  ],

"CovenantCampaignEnterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"FavorSummaryInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "DailyAcceptableFavorRemainingCount", type: {:int, 4}},
    %{name: "FavorBossInfosByDistrictCuid", type: {:map, :cuid, {:struct, "TSharedPtr<FTzDistrictFavorBossInfo"}}}
  ],

"CheatAddRegionContentRechargedPlayTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AnniversaryAchievementPrivateChannelKeepaliveFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BuildingAccessPermissionSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "BuildingAccessPermissionKind", type: {:enum, "ETzBuildingAccessPermissionKindType"}}
  ],

"CheatReleaseOccupiableNpcInactivityResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"InGameNotificationDeleteCategoryFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "InGameNotificationCategory", type: {:enum, "ETzInGameNotificationCategoryType"}}
  ],

"RoadJunctionDetailedInfo" => [
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "CoreInfo", type: {:struct, "FTzRoadJunctionInfo"}},
    %{name: "RoadLinks", type: {:list, {:struct, "RoadLinkInfo"}}}
  ],

"CheatAddStrongholdTaxAmountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "TaxAmount_pe2", type: {:uint, 8}}
  ],

"CovenantSupportInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantJoinNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "FTzCovenantInfo"}}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :FString},
    %{name: "CovenantReturnHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantBattalionInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantBattalionNotifyInfo"}}}
  ],

"StrongholdBattleDeclareAttackResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MapFogOpenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FogCuid", type: {:struct, "FTzCuid"}}
  ],

"NpcOccupationInfo" => [
    %{name: "NpcCovenantOccupationInfo", type: {:nullable, :message}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :FDateTime}},
    %{name: "NpcOccupationScoreCovenantInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzNpcOccupationScoreCovenantInfo"}}}
  ],

"CheatAbandonStrongholdResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CraftResultInfo" => [
    %{name: "CraftRewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "CraftResultKind", type: {:enum, "ETzCraftResultKindType"}},
    %{name: "ItemInfo", type: {:nullable, :message}},
    %{name: "CraftGreatSuccessBonusKind", type: {:enum, "ETzCraftGreatSuccessBonusKindType"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "Amount", type: {:int, 4}}
  ],

"TeleportInfo" => [
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "TeleportReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
  ],

"PlayerMarketTransactionBuyProcessNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CheatPvpScoreRankingSourceInfoChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AnniversaryAchievementPointRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :FDateTime},
    %{name: "GoalPoint", type: {:int, 4}}
  ],

"AddToChatBlockListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmAccountWarehouseAutoStoreSettingUpdateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdSummaryCovenantInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "OccupyingCovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "OccupyingCovenantName", type: :FString},
    %{name: "OccupyingCovenantLevel", type: {:int, 4}},
    %{name: "OccupyingCovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"ChatMessageInfo" => [
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RecordsIndex", type: {:uint, 8}},
    %{name: "ChatEntityGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "SenderPlayerExperiencePointsRanking", type: {:nullable, {:int, 4}}},
    %{name: "InfoToShare", type: :FString},
    %{name: "Text", type: :FString},
    %{name: "HarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "RegisterDateTime", type: :FDateTime}
  ],

"ErosionActiveErosionNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "FTzErosionInfo"}}}
  ],

"SkillMoveAffectInfo" => [
    %{name: "MoveDuration_msec", type: {:int, 4}},
    %{name: "Destination_cm", type: {:nullable, :FVector}},
    %{name: "InitialDirectionYaw_rad", type: {:nullable, :float}},
    %{name: "InitialFacingEntityGuid", type: {:nullable, {:uint, 8}}},
    %{name: "FinalDirectionYaw_rad", type: {:nullable, :float}},
    %{name: "FinalFacingEntityGuid", type: {:nullable, {:uint, 8}}}
  ],

"BuffProtectNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "BuffGuid", type: {:uint, 8}},
    %{name: "BuffHealthPoints", type: {:uint, 8}}
  ],

"CheatAcquireAllFollowersRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "CountPerEach", type: {:uint, 8}}
  ],

"AcceptDiplomacyChatRoomInvitationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatSummonNpcRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcSummonCuid", type: {:struct, "FTzCuid"}}
  ],

"ExpeditionRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}}
  ],

"CovenantDiplomacyInfo" => [
    %{name: "RequestCovenantGuid", type: {:uint, 8}},
    %{name: "ResponseCovenantGuid", type: {:uint, 8}},
    %{name: "CovenantDiplomacyState", type: {:enum, "ETzCovenantDiplomacyStateType"}},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "CovenantDiplomacyAdditionalInfo", type: {:nullable, :message}}
  ],

"PlayerRealmIntegrationBattleSeasonInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerRealmIntegrationBattleSeasonInfo", type: {:nullable, {:struct, "FTzPlayerRealmIntegrationBattleSeasonInfo"}}}
  ],

"CovenantBanishMemberAtFrontNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"InGameNotificationDeleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"CheatApplySkillSlotQuickSlotAutoUsePresetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "LastRegisteredAutoUseItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "AppliedPlayerSkillSlots", type: {:list, {:struct, "PlayerSkillSlotUpdateInfo"}}}
  ],

"DestroyerDeathNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "KillerGuid", type: {:uint, 8}},
    %{name: "KillerName", type: :FString},
    %{name: "VictimGuid", type: {:uint, 8}},
    %{name: "VictimName", type: :FString}
  ],

"RealmAccountRealmTransferLimitedItemCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemCountByCuid", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemCountByItemGradeAndItemCategory", type: {:map, {:enum, "ItemCategoryType"}, {:struct, "TMap<ETzItemGradeType"}}},
    %{name: "GearCountByItemGradeAndGearKind", type: {:map, {:enum, "GearKindType"}, {:struct, "TMap<ETzItemGradeType"}}},
    %{name: "AffectItemCountByItemGradeAndAffectItemKind", type: {:map, {:enum, "AffectItemKindType"}, {:struct, "TMap<ETzItemGradeType"}}}
  ],

"TutorialStepForwardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}},
    %{name: "PreviousStepNumber", type: {:int, 4}}
  ],

"MailArrivalNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}}
  ],

"CheatRealmIntegrationAddRealmAccountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PreviousRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerCount", type: {:int, 4}}
  ],

"CheatStrongholdBattleCancelAttackResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionMemberErosionInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionMemberInfoSynchronizeNotify"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "FTzErosionInfo"}}}
  ],

"CovenantInvitationInfoUpdatedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InvitedCovenantGuids", type: {:list, {:uint, 8}}}
  ],

"CovenantRealmTransferInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantRealmTransferInfo", type: {:nullable, {:struct, "FTzCovenantRealmTransferInfo"}}}
  ],

"StrongholdBattleUseSiegeWeaponSlotRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "SiegeWeaponItemCuid", type: {:struct, "FTzCuid"}}
  ],

"MailInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "ETzMailBoxKindType"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "MailKind", type: {:enum, "ETzMailKindType"}},
    %{name: "From", type: :FString},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "ExpireDateTime", type: :FDateTime},
    %{name: "IsRead", type: :unknown},
    %{name: "IsAttachmentsReceived", type: :unknown},
    %{name: "Title", type: :FString},
    %{name: "Body", type: :FString},
    %{name: "Attachments", type: {:nullable, {:struct, "FTzMailAttachmentsInfo"}}},
    %{name: "HarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "LayoutInfo", type: {:nullable, :message}}
  ],

"ExpeditionNpcSummonWaveInfo" => [
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcSummonWaveStartTime", type: :FDateTime},
    %{name: "NpcSummonWavesCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}},
    %{name: "NpcDeathCounts", type: {:map, :cuid, {:int, 4}}}
  ],

"DataHeader" => [
    %{name: "TableNameHash", type: {:int, 4}},
    %{name: "SchemaId", type: {:int, 4}}
  ],

"StrongholdBuildingQueryInfosRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"QuestRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}}
  ],

"SpawnLayerActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"InGameNotificationDeleteFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"BattalionChangeJoinableNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsJoinable", type: :unknown}
  ],

"CheatTeleportToNpcRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsRegularOnly", type: :unknown},
    %{name: "Radius_cm", type: :float}
  ],

"CheatTeleportByOffsetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Offset_cm", type: :FVector}
  ],

"BattalionJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"BuildingWorkOrderInfo" => [
    %{name: "OrderedBuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}},
    %{name: "BuildingLevelOnStart", type: {:int, 4}},
    %{name: "BuildingLevelToTarget", type: {:int, 4}},
    %{name: "IsRecommended", type: :unknown},
    %{name: "BuildingRepairPercentage", type: {:int, 4}},
    %{name: "BuildingCraftCuidAndCountInfo", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}},
    %{name: "ResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"CovenantRegisteredGoodsModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCount", type: {:uint, 8}},
    %{name: "SellCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "SellPrice", type: {:int, 4}},
    %{name: "GoodsBuyLimitCount", type: {:nullable, {:uint, 8}}}
  ],

"CostumeInfo" => [
    %{name: "WeaponCuid", type: {:struct, "FTzCuid"}},
    %{name: "WeaponEnhancementGrade", type: {:int, 2}},
    %{name: "GuiseCuid", type: {:struct, "FTzCuid"}},
    %{name: "HasPreviouslyEquippedGuise", type: :unknown},
    %{name: "IsWearUniform", type: :unknown}
  ],

"InventoryUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"BattalionTargetLocationSetFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ServerDrivenPlayStateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StateInfo", type: {:nullable, :message}}
  ],

"CovenantTradeGoodsQueryInfo" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "SortKind", type: {:enum, "ETzCovenantTradeGoodsSortKindType"}},
    %{name: "SortDirection", type: {:enum, "ETzSortDirectionType"}},
    %{name: "SkipTopRowCount", type: {:int, 4}}
  ],

"AlertPlayerRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmPlayerName", type: {:struct, "FTzRealmPlayerName"}}
  ],

"RPCExceptionMessage" => [
    %{name: "__base__", type: {:struct, "RPCMessage"}},
    %{name: "ErrorString", type: :unknown}
  ],

"CovenantCreateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Name", type: :FString},
    %{name: "CovenantJoinKind", type: {:enum, "ETzCovenantJoinKindType"}},
    %{name: "CovenantEmblemSelectionInfo", type: {:nullable, {:struct, "FTzCovenantEmblemSelectionInfo"}}},
    %{name: "CovenantCampCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatOpenAllFogInDistrictResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
  ],

"BattalionJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SquadMemberOrder", type: {:int, 4}},
    %{name: "MemberInfo", type: {:nullable, {:struct, "FTzBattalionMemberInfo"}}}
  ],

"NpcOccupationViewInfo" => [
    %{name: "NpcOccupationCovenantViewInfo", type: {:nullable, {:struct, "FTzNpcOccupationCovenantViewInfo"}}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :FDateTime}},
    %{name: "NpcOccupationScoreCovenantViewInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzNpcOccupationScoreCovenantViewInfo"}}}
  ],

"CovenantHostilityAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzCovenantDiplomacyAdditionalInfo"}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "DeathCount", type: {:int, 4}}
  ],

"FavoriteStatKindChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StatKind", type: {:enum, "ETzAdjustableStatKindType"}},
    %{name: "IsRegistered", type: :unknown}
  ],

"CheatGetCheatEnabledPlayerNamesResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CheatEnabledPlayerNames", type: :unknown}
  ],

"FieldUid" => [
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "InstanceFieldCuid", type: {:struct, "FTzCuid"}},
    %{name: "InstanceFieldGuid", type: {:uint, 8}}
  ],

"MarketGoodsQueryInfo" => [
    %{name: "__base__", type: {:struct, "FTzMarketGoodsSummaryQueryInfo"}},
    %{name: "GearAdditionalInfo", type: {:nullable, {:struct, "FTzGearAdditionalInfo"}}},
    %{name: "MarketOrderByKind", type: {:enum, "ETzMarketOrderByKindType"}}
  ],

"MarketPriceQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "MarketPriceInfo", type: {:nullable, {:struct, "FTzMarketPriceInfo"}}}
  ],

"CheatChangeRankingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}},
    %{name: "Ranking", type: {:int, 4}},
    %{name: "Name", type: :FString}
  ],

"ServerDrivenPlayResupplyingStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}},
    %{name: "IsAutoResupplying", type: :unknown},
    %{name: "IsResupplyingWithTeleport", type: :unknown}
  ],

"StanceSwitchNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}}
  ],

"CrossRealmSeasonTimeCreviceEntryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzCrossRealmSeasonEntryUpdateDataNotify"}},
    %{name: "IsFull", type: :unknown}
  ],

"CovenantTradeSalesManageRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SalesManagementKind", type: {:enum, "ETzCovenantTradeSalesManagementKindType"}},
    %{name: "GoodsGuidWithItemCuidInfos", type: :unknown}
  ],

"CheatSwitchStanceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SwitchRequestedStance", type: {:enum, "ETzStanceType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}}
  ],

"CovenantSettleAccountInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RealmIntegrationQueryRealmAccountInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmIntegrationRealmAccountInfos", type: {:list, {:struct, "RealmIntegrationRealmAccountInfo"}}}
  ],

"SavedInGameNotificationInfo" => [
    %{name: "__base__", type: {:struct, "FTzInGameNotificationInfo"}}
  ],

"CheatAccomplishSeasonPassAchievementRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "SeasonPassAchievementGroupCuid", type: {:struct, "FTzCuid"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"ChatQueryEntityInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatEntityInfo", type: {:nullable, {:struct, "FTzChatEntityInfo"}}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "FTzChatEntityCovenantInfo"}}},
    %{name: "LoggedIn", type: :unknown}
  ],

"CovenantRealmTransferExecuteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PackageItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "SelectedResultCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantOutLinkInfo" => [
    %{name: "CovenantOutLinkKind", type: {:enum, "ETzCovenantOutLinkKindType"}},
    %{name: "Uri", type: :FString},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"PlayerSkillSlotSetInfo" => [
    %{name: "PlayerSkillSlotInfos", type: {:map, {:enum, "PlayerSkillSlotIndexType"}, {:struct, "TSharedPtr<FTzPlayerSkillSlotInfo"}}}
  ],

"WorldMapPvpBattleLocationUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "Location_cm", type: :FVector}
  ],

"CovenantDeleteCovenantMemberRoleNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberRoleName", type: :FString}
  ],

"InteractionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"GuiseEquipResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GuiseCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "FTzPlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}}
  ],

"ServerDrivenPlayResurrectingStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}}
  ],

"ResuscitatePleaNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MountCallingInfo" => [
    %{name: "__base__", type: {:struct, "FTzMountStateInfo"}},
    %{name: "IsImmediateBoarding", type: :unknown},
    %{name: "PlayerRunSpeedBeforeBoarded_cmpmsec", type: :float},
    %{name: "IsMovingBoarding", type: :unknown}
  ],

"CheatSetEnvironmentVariableResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AnniversaryAchievementRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :FDateTime},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"FieldEnterCompleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NavMeshCrcChecksum", type: {:uint, 4}},
    %{name: "CharacterMoveInfo", type: {:nullable, :message}}
  ],

"CovenantDiplomacyRejectAllianceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CharacterInfo" => [
    %{name: "__base__", type: {:struct, "FTzEntityInfo"}},
    %{name: "CharacterState", type: {:enum, "ETzCharacterStateType"}},
    %{name: "CharacterPublicStatsInfo", type: {:nullable, :message}},
    %{name: "BuffInfos", type: :unknown},
    %{name: "CharacterMoveInfo", type: {:nullable, :message}},
    %{name: "FocusTargetGuid", type: {:uint, 8}},
    %{name: "AttackTargetGuid", type: {:uint, 8}},
    %{name: "FinishableExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "ParticipatingContentsGuids", type: :unknown},
    %{name: "IsHarmfulSkillTargetableInAnyFactionRelation", type: :unknown},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}}
  ],

"BattalionJoinResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CashShopNameTextInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Text", type: :FString}
  ],

"PartyRecommendInviteeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "FTzRealmPlayerId"}}
  ],

"FollowerLeaveToHeadquartersNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerReturnReason", type: {:enum, "ETzFollowerReturnReasonType"}},
    %{name: "LeaveToHeadquartersDateTime", type: :FDateTime},
    %{name: "FollowerWorkInfo", type: {:nullable, {:struct, "FTzFollowerWorkInfo"}}},
    %{name: "FollowerMovePathInfo", type: {:nullable, {:struct, "FTzFollowerMovePathInfo"}}}
  ],

"DeathPenaltyRecoverResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RecoveredDeathPenaltyGuids", type: {:list, {:uint, 8}}},
    %{name: "DeathPenaltyFreeRecoveryInfo", type: {:nullable, :message}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"StrategicObjectiveTargetInfo" => [
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "MaxHealthPoints", type: {:uint, 8}},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"QuestAutomaticallyProceedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}}
  ],

"PartyBanishMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"FollowerCollectionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzFollowerCollectionInfo"}}}
  ],

"StrongholdSettleAccountInfo" => [
    %{name: "AccumulatedGoldTaxAmount", type: {:uint, 8}},
    %{name: "GoldHistoryInfos", type: {:map, :datetime, {:struct, "TSharedPtr<FTzGoldHistoryInfo"}}}
  ],

"AffiliatedBattalionInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "OwnerCovenantGuid", type: {:uint, 8}}
  ],

"BasicOrGrowthGuideAchievementRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"FollowerDispatchReservationInfo" => [
    %{name: "WorkKind", type: {:enum, "ETzFollowerWorkKindType"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "WorkplaceSpawnedEntityCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkObjectiveInfo", type: {:nullable, :message}},
    %{name: "IsBuildingWorkRecommended", type: :unknown}
  ],

"StrongholdBattleCovenantBattalionConfirmConveneRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatNoticeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Message", type: :FString}
  ],

"MarketSellSettleResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "IsSuccessByGoodsGuids", type: {:map, {:uint, 8}, :bool}},
    %{name: "FailedGoodsGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"ChatOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ChatOptionInfo", type: {:nullable, {:struct, "FTzChatOptionInfo"}}}
  ],

"StrongholdBattleAttackGroupInfo" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleGroupInfo"}},
    %{name: "LivingTotemBasicHealthPoints", type: {:uint, 8}},
    %{name: "LivingTotemExtraHealthPoints", type: {:uint, 8}},
    %{name: "LivingTotemHealthPoints", type: {:uint, 8}},
    %{name: "LivingTotemExtraHealthPointsBarUnit", type: {:uint, 8}},
    %{name: "SiegeWeaponCounts", type: {:map, :cuid, {:uint, 8}}},
    %{name: "StrongholdBattleAttackSiegeWeaponSlotInfos", type: {:map, {:int, 2}, {:struct, "TSharedPtr<FTzStrongholdBattleAttackSiegeWeaponSlotInfo"}}}
  ],

"AetherOptionLevelUpRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AetherOptionCuid", type: {:struct, "FTzCuid"}},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CheatCovenantPayDividendResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatAddHavenBuildingWorkProgressGaugeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
  ],

"DiplomacyChatRoomInviteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "CovenantNameAndRealmName", type: :FString}
  ],

"CrossRealmCovenantDiplomacySynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CrossRealmCovenantDiplomacyInfos", type: {:nullable, {:struct, "FTzCovenantDiplomacyInfos"}}}
  ],

"CheatUnOccupyOccupiableNpcResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantLivingTotemDeployResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "LivingTotemCuid", type: {:struct, "FTzCuid"}}
  ],

"FollowerArrivedAtWorkplaceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "ArrivedAtWorkplaceDateTime", type: :FDateTime},
    %{name: "FollowerWorkInfo", type: {:nullable, {:struct, "FTzFollowerWorkInfo"}}}
  ],

"CovenantLeaveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ItemIndex" => [
    %{name: "__base__", type: {:struct, "FTzMultipleItemSelector"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: :unknown},
    %{name: "IsEroded", type: :unknown},
    %{name: "ExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}}
  ],

"DiplomacyChatRoomHeaderInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChatRoomName", type: :FString}
  ],

"CheatChangeCovenantCurrencyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PointCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPointCurrencyContainerUpdateInfo"}}}
  ],

"RegisteredGoodsBuyCountKey" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}}
  ],

"PartySynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"CovenantLivingTotemWithStatsInfo" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Role", type: {:enum, "ETzLivingTotemRoleType"}},
    %{name: "Tier", type: {:int, 4}},
    %{name: "CharacterPublicStatsInfo", type: {:nullable, :message}},
    %{name: "CharacterPrivateStatsInfo", type: {:nullable, :message}}
  ],

"DiplomacyChatRoomRecordsInitializationInfo" => [
    %{name: "__base__", type: {:struct, "FTzChatRoomRecordsInitializationInfo"}},
    %{name: "ChatRoomName", type: :FString},
    %{name: "Index", type: {:int, 4}},
    %{name: "OwnerCovenantGuid", type: {:uint, 8}},
    %{name: "DiplomacyChatCovenantSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzDiplomacyChatCovenantSummaryInfo"}}}
  ],

"CovenantWeeklyRubyDonationInfo" => [
    %{name: "PlayerName", type: :FString},
    %{name: "DonationAmount", type: {:uint, 8}}
  ],

"CovenantJoinedStrongholdBattleInfoRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantJoinedStrongholdBattleInfo", type: {:nullable, :message}}
  ],

"CovenantReturnHavenChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"DestroyedGearInfoByEnhancement" => [
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearKind", type: {:enum, "ETzGearKindType"}},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: :unknown},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "DestroyedDateTime", type: :FDateTime}
  ],

"CheatAcquireAllUsableSkillsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ShopCashMerchandiseResetMerchandiseBuyCountInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UpdatedMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"CovenantDiplomacyAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantDiplomacyInfo", type: {:nullable, :message}}
  ],

"CovenantSupportInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantSupportQueryInfo", type: {:nullable, {:struct, "FTzCovenantSupportQueryInfo"}}}
  ],

"CovenantBattalionPublicSummaryInfo" => [
    %{name: "__base__", type: {:struct, "FTzBattalionPublicSummaryInfo"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, :message}}
  ],

"SeasonPassAchievementInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonPassAchievementInfos", type: {:list, {:struct, "SeasonPassAchievementInfo"}}}
  ],

"CheatAddRegionContentRechargedPlayTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionContentKind", type: {:enum, "ETzRegionContentKindType"}},
    %{name: "AddPlayTime_sec", type: {:int, 4}}
  ],

"PlayerRealmIntegrationBattleInfo" => [
    %{name: "SeasonInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzPlayerRealmIntegrationBattleSeasonInfo"}}}
  ],

"CheatUpdatePlayerMissionRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "MissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "MissionStep", type: {:int, 4}},
    %{name: "AcquireDateTime", type: :FString}
  ],

"TerritoryUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryInfo", type: {:nullable, {:struct, "FTzTerritoryInfo"}}}
  ],

"TerritoryErosionAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "FTzErosionInfo"}}}
  ],

"CheatClearRealmIntegrationBattleScoreResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatChangeCovenantNameRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Name", type: :FString}
  ],

"StrongholdProtectResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatClearRealmIntegrationBattleParticipationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatCovenantRubyShopResetMerchandiseBuyCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatTerritoryContaminationDecrementChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MailBuildingRepairLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailBuildingWorkLayoutInfo"}},
    %{name: "IsComplete", type: :unknown},
    %{name: "HealthPointsRatio_pe2", type: {:uint, 8}}
  ],

"CovenantRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzRankingViewInfo"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Name", type: :FString},
    %{name: "LeaderName", type: :FString},
    %{name: "Level", type: {:int, 4}},
    %{name: "MemberCount", type: {:int, 2}},
    %{name: "MaxMemberCount", type: {:int, 2}},
    %{name: "EmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CampCuid", type: {:struct, "FTzCuid"}},
    %{name: "OccupiedStrongholdCuids", type: {:list, :cuid}},
    %{name: "MainHavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantTradeSalesRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemIndexWithCount", type: {:nullable, :message}},
    %{name: "SalesPrice", type: {:uint, 8}}
  ],

"FollowerWorkOverallInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "FTzFollowerCoreInfo"}}},
    %{name: "WorkInfo", type: {:nullable, {:struct, "FTzFollowerWorkInfo"}}}
  ],

"CovenantCampChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantCampOccupancyInfo", type: {:nullable, {:struct, "FTzCovenantCampOccupancyInfo"}}}
  ],

"CovenantUpdateCovenantPermissionsInfosResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantPermissionsInfos", type: {:map, :string, {:struct, "TSharedPtr<FTzCovenantPermissionsInfo"}}}
  ],

"RegionContentPlayInfoFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SkillAutoUseManaPointsRestrictOptionInfo" => [
    %{name: "IsManaPointsUsageRestricted", type: :unknown},
    %{name: "IsForceUseSkillsInPvp", type: :unknown},
    %{name: "IsForceUseSelfBuffSkills", type: :unknown}
  ],

"TutorialBeginFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatCreateAndEquipGearsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "BoundAndEroded", type: {:enum, "ETzBoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "Count", type: {:int, 4}}
  ],

"CheatClearCovenantWarehouseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PowerSavingModeStartRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatTestGearEnhancementResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "SuccessCounts", type: {:map, {:int, 2}, {:int, 4}}}
  ],

"TutorialBeginNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"PlayerDeleteReserveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"LocationForceSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CharacterMoveStopInfo", type: {:nullable, {:struct, "FTzCharacterMoveStopInfo"}}}
  ],

"CheatRestoreChatCovenantResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SchemaDataTable" => [
    %{name: "SchemaTable", type: {:nullable, :message}},
    %{name: "DataTable", type: {:nullable, :message}}
  ],

"CovenantQueryJoinAppliedCovenantSummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"TutorialUnholdRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialFilterKind", type: {:enum, "ETzTutorialFilterKindType"}},
    %{name: "FilterValue", type: :FString}
  ],

"FieldMigrationReadyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsInstanceField", type: :unknown},
    %{name: "IsTeleport", type: :unknown},
    %{name: "SeamlessNpcGuids", type: {:list, {:uint, 8}}}
  ],

"CovenantLivingTotemDeployNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeployedLivingTotemCuid", type: {:struct, "FTzCuid"}}
  ],

"RestrictedResurrectionInfo" => [
    %{name: "DistrictGroupCuidOnDeath", type: {:struct, "FTzCuid"}},
    %{name: "ResurrectionExpireDateTime", type: :FDateTime},
    %{name: "ResurrectorLocationInfoUsingItem", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "ResurrectorLocationInfoNotUsingItem", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CovenantItemDeleteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeleteItemGuid", type: {:uint, 8}},
    %{name: "LastKnownStackCount", type: {:uint, 8}},
    %{name: "LastKnownTotalCount", type: {:uint, 8}}
  ],

"RedrawableItemSelectRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "SelectedItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CostCurrencyCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatChangeFollowerLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}}
  ],

"CheatClearGearResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "FTzPlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "FTzPlayerPrivateStatsInfo"}}}
  ],

"RankingQueryByNameRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}},
    %{name: "Name", type: :FString}
  ],

"ChatRoomListUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AddedChatRoomRecordsInitializationInfos", type: {:list, {:struct, "ChatRoomRecordsInitializationInfo"}}},
    %{name: "DeletedChatRoomGuids", type: {:list, {:uint, 8}}}
  ],

"CheatSkillTableReloadRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FavorMissionDatabaseInfo" => [
    %{name: "__base__", type: {:struct, "FTzFavorMissionInfo"}}
  ],

"FollowerDispatchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerItemGuid", type: {:uint, 8}},
    %{name: "DispatchOrderInfo", type: {:nullable, {:struct, "FTzFollowerDispatchOrderInfo"}}}
  ],

"SchemaDataInfo" => [
    %{name: "__base__", type: {:struct, "BaseInfo"}},
    %{name: "SchemaDataTables", type: :unknown}
  ],

"PlayerSkillAcquireRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatSetFacingDirectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FacingDirectionYaw_rad", type: :float}
  ],

"SkillStateAffectInfo" => [
    %{name: "State", type: {:enum, "ETzCharacterStateType"}},
    %{name: "StateExpireDurationDelta_msec", type: {:int, 4}}
  ],

"PartyConfirmInvitationFailNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"SubscriptionCommandResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RequestedChannel", type: {:enum, "ETzSubscriptionChannelType"}},
    %{name: "RequestedCommand", type: {:enum, "ETzSubscriptionCommandType"}},
    %{name: "RequestedParameter", type: {:struct, "FTzCuid"}},
    %{name: "SubscribeKeepaliveInterval_sec", type: {:int, 4}}
  ],

"RealmIntegrationRealmInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmIntegrationRealmInfos", type: {:list, {:struct, "RealmIntegrationRealmInfo"}}}
  ],

"CheatSpawnFromSpawnerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdBattleCompleteAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAchievementSourceInfo"}},
    %{name: "StrongholdBattleResult", type: {:enum, "ETzStrongholdBattleResultType"}}
  ],

"RoadPathInfo" => [
    %{name: "RoadJunctionInfo", type: {:struct, "FTzRoadJunctionInfo"}},
    %{name: "LinkedCuidHashCode", type: {:int, 4}},
    %{name: "IsOneShotSpecialMove", type: :unknown}
  ],

"ServerDrivenPlayRewardInfo" => [
    %{name: "GainedExperiencePoints", type: {:uint, 8}},
    %{name: "GainedSpiritualBondPower", type: {:uint, 8}},
    %{name: "GainedCurrencies", type: {:map, :cuid, {:uint, 8}}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"RealmInfo" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmCuidString", type: :FString},
    %{name: "WorldName", type: :FString},
    %{name: "RealmName", type: :FString},
    %{name: "Ip", type: :FString},
    %{name: "Port", type: {:int, 4}},
    %{name: "ServerState", type: {:enum, "ETzServerStateType"}},
    %{name: "ServerTagKind", type: {:enum, "ETzServerTagKindType"}},
    %{name: "UpdateDateTime", type: :FDateTime},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "IsInboundRealmTransferable", type: :unknown}
  ],

"SystemMessageNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SystemMessageCuid", type: {:struct, "FTzCuid"}},
    %{name: "SystemMessageConditionCuid", type: {:nullable, {:struct, "FTzCuid"}}}
  ],

"CheatAcquireStanceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AcquireRequestedStance", type: {:enum, "ETzStanceType"}},
    %{name: "Stance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "InstalledStance", type: {:enum, "ETzStanceType"}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :unknown}
  ],

"CheatInitializeQuestDataResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "FTzQuestsInfo"}}}
  ],

"NxLogBaseParameterInfo" => [
    %{name: "ActionId", type: :FGuid},
    %{name: "IsByNxCmd", type: :unknown}
  ],

"BattalionCompleteAssembleNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CombatTargetOptionInfo" => [
    %{name: "ContinuousCombatMannerModeKind", type: {:enum, "ETzContinuousCombatMannerModeKindType"}},
    %{name: "ContinuousCombatRadiusKind", type: {:enum, "ETzContinuousCombatRadiusKindType"}},
    %{name: "QuestAutoProceedRadiusKind", type: {:enum, "ETzQuestAutoProceedRadiusKindType"}},
    %{name: "TargetDyingOrRecoveryStateCharacter", type: :unknown},
    %{name: "KeepContinuousCombatAndAutoMoveOnManualMove", type: :unknown},
    %{name: "KeepAutoAttackOnMoveToLocation", type: :unknown},
    %{name: "KeepAutoAttackOnMoveToDirection", type: :unknown},
    %{name: "AutoAttackTargetOnKinds", type: {:list, {:enum, "AutoAttackTargetKindType"}}},
    %{name: "AutoCounterAttackNpc", type: :unknown},
    %{name: "AutoAttackTargetOnNpcGrades", type: {:list, {:enum, "AutoAttackTargetNpcGradeType"}}},
    %{name: "CancelAttackOrFocusTargetButtonVisible", type: :unknown},
    %{name: "SkillUsePriorityKind", type: {:enum, "ETzSkillUsePriorityKindType"}},
    %{name: "RemoveTargetingByContinuousCombatOff", type: :unknown},
    %{name: "TabSelectTargetingKind", type: {:enum, "ETzTabSelectTargetingKindType"}},
    %{name: "FocusTargetSelfButtonVisible", type: :unknown},
    %{name: "IsReservedSkillCancellable", type: :unknown},
    %{name: "StopContinuousCombatWhenKilledBoss", type: :unknown}
  ],

"CrossRealmCovenantDiplomacyWithdrawAllianceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"PartyJoinFailNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"CheatSetStrongholdOccupyingCovenantResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MailCountQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "ETzMailTabType"}},
    %{name: "Count", type: {:int, 4}}
  ],

"SeasonPassAchievementAccomplishNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonPassCuid", type: {:struct, "FTzCuid"}},
    %{name: "SeasonPassAchievementGroupCuid", type: {:struct, "FTzCuid"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"SpiritualBondPowerSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"AccountAffectInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "AccountAffectKind", type: {:enum, "ETzAccountAffectKindType"}},
    %{name: "ExpireDateTime", type: :FDateTime}
  ],

"BattalionConfirmInvitationFailNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"BattalionJoinNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}}
  ],

"StrongholdBattleCampaignConditionProgressSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CampaignConditionProgressInfos", type: {:list, {:struct, "CampaignConditionProgressInfo"}}}
  ],

"PartyMemberLootNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyMemberGuid", type: {:uint, 8}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "KilledNpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsErosionInstallerReward", type: :unknown}
  ],

"PvpRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PvpRecordInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPvpRecordInfo"}}},
    %{name: "TeaseMessage", type: :FString}
  ],

"PlayerItemUseNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "FTzCovenantRewardInfo"}}},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "ExperiencePointsDelta", type: {:uint, 8}},
    %{name: "IsUpgradeSlayingGrade", type: :unknown},
    %{name: "AmityDelta", type: {:map, :cuid, {:uint, 8}}},
    %{name: "SpiritualBondPowerDelta", type: {:uint, 8}},
    %{name: "CooldownExpireDateTimeRangeInfo", type: {:nullable, {:struct, "FTzDateTimeRangeInfo"}}}
  ],

"CheatChangeAmityResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ClanCuid", type: {:struct, "FTzCuid"}},
    %{name: "Amity", type: {:uint, 8}}
  ],

"BattalionLeaderChangeableNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}}
  ],

"SkillRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SkillTargetingInfo", type: {:nullable, :message}},
    %{name: "ServerUtcNow", type: :FDateTime},
    %{name: "DelayForOthersDuration_msec", type: :float},
    %{name: "IsToggleBuffSkillOn", type: :unknown}
  ],

"QuickSlotPageUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PageOfRightQuickSlot", type: {:int, 4}},
    %{name: "PageOfMiddleQuickSlot", type: {:int, 4}}
  ],

"StrongholdBattleDeclareAttackRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdBattleAttackDeclareInfo", type: {:nullable, {:struct, "FTzStrongholdBattleAttackDeclareInfo"}}}
  ],

"CovenantInviteRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString}
  ],

"CheatTeleportFollowerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString}
  ],

"CollectionSlotItemInfo" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "IsEroded", type: :unknown},
    %{name: "Quantity", type: {:int, 4}}
  ],

"CovenantRealmTransferCheckInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatBatchBossSpawnTimeRollbackResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AcceptDiplomacyChatRoomInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CheatAccountAffectDetachAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FavorDatabaseInfo" => [
    %{name: "__base__", type: {:struct, "FTzFavorInfo"}},
    %{name: "FavorMissionDatabaseInfo", type: {:nullable, {:struct, "FTzFavorMissionDatabaseInfo"}}}
  ],

"FollowerPromoteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Tier", type: {:int, 4}}
  ],

"PartyOptionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "FTzPartyOptionInfo"}}}
  ],

"ErFrontServerSessionReinitializeInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerSessionInitializeInfo"}},
    %{name: "RealmAccountInfo", type: {:nullable, {:struct, "FTzRealmAccountInfo"}}},
    %{name: "PlayerSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerSummaryInfo"}}},
    %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
    %{name: "PopupCommunityAutomatically", type: :unknown}
  ],

"MultipleHandshakeMessage" => [
    %{name: "HandshakeMessages", type: :unknown}
  ],

"PointCurrencyContainerOverflowInfo" => [
    %{name: "CuidToOverflowCount", type: {:map, :cuid, {:uint, 8}}}
  ],

"DividendInfo" => [
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "DistributionAmount", type: {:uint, 8}}
  ],

"BattalionMemberAdditionalInfo" => [
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}},
    %{name: "State", type: {:enum, "ETzCharacterStateType"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "FTzCostumeInfo"}}},
    %{name: "CustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "FTzErosionInfo"}}}
  ],

"CovenantWarehouseInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "InventoryInfo", type: {:nullable, {:struct, "FTzInventoryInfo"}}}
  ],

"MerchandiseBuyResultInfo" => [
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}},
    %{name: "MerchandiseBuyCountInfo", type: {:nullable, {:struct, "FTzMerchandiseBuyCountInfo"}}}
  ],

"KickPreexistingSessionConfirmRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantCancelJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"SpecialMovePointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "SpecialMovePoints", type: {:int, 4}},
    %{name: "SpecialMovePointsDecreaseAmount_pmsec", type: {:int, 4}},
    %{name: "ServerUtcNow", type: :FDateTime},
    %{name: "DelayForOthersDuration_msec", type: :float}
  ],

"CheatSetStatRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StatKind", type: {:enum, "ETzAdjustableStatKindType"}},
    %{name: "StatValue", type: :float}
  ],

"RealmAccountLoginRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsFastLogin", type: :unknown}
  ],

"AnniversaryRewardAcquireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryPointsByAnniversaryCuid", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CheatSetInvulnerableRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsInvulnerable", type: :unknown}
  ],

"StrongholdBuildingUpdateBuildingAccessPermissionsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "BuildingAccessPermissionKinds", type: {:map, :cuid, {:enum, "BuildingAccessPermissionKindType"}}}
  ],

"PartySynchronizeMemberErosionInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPartySynchronizeMemberNotify"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "FTzErosionInfo"}}}
  ],

"TerritoryBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "FTzBossSpawnInfo"}},
    %{name: "NextTrySpawnDateTime", type: {:nullable, :FDateTime}}
  ],

"CharacterMoveToLocationInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterMoveToInfo"}},
    %{name: "MoveToDestinationParameterInfo", type: {:nullable, :message}},
    %{name: "MoveToNextDestinationParameterInfo", type: {:nullable, :message}}
  ],

"MissionInfo" => [
    %{name: "MissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ProgressCount", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :FDateTime},
    %{name: "RewardAcquiredDateTimes", type: {:map, {:int, 4}, {:struct, "TozSerializableMessageLibNative::Nullable<FDateTime"}}}
  ],

"DatatoolHandshakeRequest" => [
    %{name: "DataHeaders", type: :unknown}
  ],

"MonsterBookNodeStateInfo" => [
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnalysisColorCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnalysisRewardStatCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsAnalysisLocked", type: :unknown}
  ],

"CovenantBuildingWorkInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "BuildingWorkInfos", type: {:map, :cuid, {:struct, "TMap<FTzCuid"}}}
  ],

"CheatChangeServerDrivenPlayRemainingDurationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RemainingDuration_sec", type: {:int, 4}}
  ],

"QuestProgressInfo" => [
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "AcceptDateTime", type: :FDateTime},
    %{name: "StartByItem", type: :unknown},
    %{name: "QuestMissionProgressInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzQuestMissionProgressInfo"}}}
  ],

"QuickSlotDetailInfo" => [
    
  ],

"PushNotificationOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PushNotificationOptionCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsEnabled", type: :unknown},
    %{name: "IsNotifiedEvenWhenConnected", type: :unknown}
  ],

"StrongholdBattleCovenantBattalionJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionJoinMemberNotify"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveSetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "SquadOrder", type: {:int, 4}}
  ],

"GearSubOptionInfo" => [
    %{name: "CharacterStatChange", type: {:nullable, {:struct, "FTzCharacterStatChangeInfo"}}}
  ],

"ConvenienceOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ConvenienceOptionInfo", type: {:nullable, {:struct, "FTzConvenienceOptionInfo"}}}
  ],

"CombatLogInfo" => [
    %{name: "CasterNameInfo", type: {:nullable, {:struct, "FTzCharacterNameInfo"}}},
    %{name: "CasterCovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "TargetName", type: :FString},
    %{name: "TargetGuid", type: {:uint, 8}},
    %{name: "TargetCovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "ConsecutiveKillCount", type: {:int, 4}},
    %{name: "CombatLogKind", type: {:enum, "ETzCombatLogKindType"}}
  ],

"CheatSpawnGuardTowersAtOccupyingStrongholdsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatMultiplyServerTimeSpeedRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Multiplier", type: {:int, 4}}
  ],

"CheatChangeBulkCharacterMoveNotifyIntervalResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ThreatTargetRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeJoinAppliedPlayerIsConnectedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsConnected", type: :unknown},
    %{name: "LastClientDisconnectDateTime", type: :FDateTime}
  ],

"PlayerStrongholdBattleStatisticsInfo" => [
    %{name: "TotalDamageDone", type: {:uint, 8}},
    %{name: "TotalBuildingDamageDone", type: {:uint, 8}},
    %{name: "TotalHealDone", type: {:uint, 8}},
    %{name: "SkillUseStatisticsNxLogInfos", type: {:list, {:struct, "PlayerSkillUseStatisticsNxLogInfo"}}}
  ],

"CheatTestGearEnchantResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"DiplomacyChatRoomNameChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChatRoomName", type: :FString}
  ],

"FollowerInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterInfo"}},
    %{name: "CoreInfo", type: {:nullable, {:struct, "FTzFollowerCoreInfo"}}},
    %{name: "DispatchInfo", type: {:nullable, {:struct, "FTzFollowerDispatchInfo"}}}
  ],

"CovenantBanishMemberFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"ItemAutoUseRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatUserInventorySlotCountChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UserInventoryKind", type: {:enum, "ETzUserInventoryKindType"}},
    %{name: "ChangeSlotCount", type: {:int, 4}}
  ],

"CheatChangeLastLevelForLevelUpNotifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"BattalionCovenantGrantedSkillNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGrantedSkillCuids", type: :unknown}
  ],

"FieldInitializeInfo" => [
    %{name: "TerritoryInfos", type: {:list, {:struct, "TerritoryInfo"}}},
    %{name: "ZoneInfos", type: {:list, {:struct, "ZoneInfo"}}},
    %{name: "BossSpawnInfos", type: {:list, {:struct, "BossSpawnInfo"}}},
    %{name: "OccupiableNpcBossSpawnInfos", type: {:list, {:struct, "OccupiableNpcBossSpawnInfo"}}},
    %{name: "OccupiableNpcInfos", type: {:list, {:struct, "OccupiableNpcInfo"}}}
  ],

"CraftCountInfo" => [
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "Count", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :FDateTime}
  ],

"FollowerDispatchOverallInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DispatchOverallInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzFollowerDispatchOverallInfo"}}}
  ],

"StrongholdBattleAttackEndInfo" => [
    %{name: "Reason", type: {:enum, "ETzStrongholdBattleEndReasonType"}},
    %{name: "AltarDestroyerGuid", type: {:uint, 8}},
    %{name: "AltarDestroyerName", type: :FString}
  ],

"BattalionPublicSummaryInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "CreateDateTime", type: :FDateTime},
    %{name: "BattalionLeaderPlayerName", type: :FString},
    %{name: "MemberCount", type: {:int, 4}}
  ],

"QuestAcceptRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "FTzVuid"}},
    %{name: "FavorNpcGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingQueryInfosResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingInfoList", type: {:list, {:struct, "BuildingInfo"}}}
  ],

"CovenantDeleteCovenantMemberRoleResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantMemberRoleName", type: :FString}
  ],

"CheatChangeCrossRealmMaintenanceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"MailSendCountQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PersonalMailSendCount", type: {:int, 4}},
    %{name: "CovenantMailSendCount", type: {:int, 4}},
    %{name: "SendCountUpdateDateTime", type: :FDateTime}
  ],

"CheatAcquireCovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ResearchCuid", type: {:struct, "FTzCuid"}},
    %{name: "Level", type: {:int, 4}}
  ],

"ErosionInstalledWithoutPermissionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "FTzErosionInfo"}}}
  ],

"CheatAllStancesAcquireRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PlayerRealmAccountPresentApplicationCheckInfo" => [
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Level", type: {:int, 4}}
  ],

"WorldMapPvpBattleCovenantInfoAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "PvpBattleCovenantInfo", type: {:nullable, :message}}
  ],

"CovenantQueryRecommendCovenantSummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CharacterRotateTowardsYawInfo" => [
    %{name: "__base__", type: {:struct, "FTzCharacterRotateInfo"}},
    %{name: "FinalYaw_rad", type: :float}
  ],

"SpellstoneSlotInfo" => [
    %{name: "LocationCoordinates", type: :FIntVector2D},
    %{name: "Orientation", type: {:enum, "ETzSpellstoneOrientationType"}}
  ],

"CovenantSupportInfo" => [
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerName", type: :FString},
    %{name: "FollowerWorkKind", type: {:enum, "ETzFollowerWorkKindType"}},
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}},
    %{name: "BuildingWorkCuid", type: {:struct, "FTzCuid"}},
    %{name: "SupportedCount", type: {:int, 4}}
  ],

"ShopCashMerchandiseRestoreRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RestorePaymentInfo", type: {:nullable, {:struct, "FTzToyMerchandisePaymentInfo"}}}
  ],

"DistrictFavorDatabaseInfo" => [
    %{name: "__base__", type: {:struct, "FTzDistrictFavorBossInfo"}},
    %{name: "CurrentAvailableFavorDatabaseInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzFavorDatabaseInfo"}}},
    %{name: "LastUpdateDateTime", type: :FDateTime}
  ],

"MarketGoodsExpireDateTimeUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsGuids", type: :unknown},
    %{name: "ExpireDateTime", type: :FDateTime},
    %{name: "Reason", type: {:enum, "ETzMarketGoodsExpireReasonType"}}
  ],

"StrongholdBattleTacticalSkillBadgeAmountChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "TacticalSkillBadgeCount", type: {:int, 4}}
  ],

"MailReceiveAttachmentsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"QuestCinePlayEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RegionContentPlayInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MailBuildingWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}}
  ],

"MountCallingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerLocation_cm", type: :FVector}
  ],

"MailUnreadNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UnreadCounts", type: {:map, {:enum, "MailTabType"}, {:int, 4}}}
  ],

"PartySharedAttackTargetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}}
  ],

"StrongholdBattleWinnerBattalionInfo" => [
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "AltarDestroyerName", type: :FString}
  ],

"ToeCustomizeInfo" => [
    %{name: "ToeBase", type: :FVector},
    %{name: "ToeNub", type: :FVector}
  ],

"StrongholdBattleInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdBattleKind", type: {:enum, "ETzStrongholdBattleKindType"}},
    %{name: "StartTime", type: :FDateTime},
    %{name: "BuildingStateInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdBattleBuildingStateInfo"}}},
    %{name: "DefenseInfos", type: {:map, {:enum, "StrongholdBattleDeploymentKindType"}, {:struct, "TSharedPtr<FTzStrongholdBattleDefenseGroupInfo"}}},
    %{name: "AttackInfos", type: {:map, {:enum, "StrongholdBattleDeploymentKindType"}, {:struct, "TSharedPtr<FTzStrongholdBattleAttackInfo"}}}
  ],

"CheatAccomplishAllFavorResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionVolunteerParticipationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "VolunteerParticipationInfo", type: {:nullable, :message}}
  ],

"RegionContentPlayInfo" => [
    %{name: "RegionContentPlayTimeInfo", type: {:nullable, {:struct, "FTzRegionContentPlayTimeInfo"}}}
  ],

"CheatMonsterBookAcquireAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyRejectAllianceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatChangeServerTimeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Offset", type: :FTimespan},
    %{name: "SpeedChangeTime", type: :FDateTime},
    %{name: "Multiplier", type: {:int, 4}}
  ],

"CovenantConfirmJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantUpdateCovenantPermissionsInfosNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantPermissionsInfos", type: {:map, :string, {:struct, "TSharedPtr<FTzCovenantPermissionsInfo"}}}
  ],

"ErChatServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"PlayerPvpInfo" => [
    %{name: "TeaseMessage", type: :FString},
    %{name: "AlertPlayers", type: {:map, {:uint, 8}, :datetime}},
    %{name: "CrossRealmAlertPlayers", type: {:map, {:uint, 8}, {:struct, "CrossRealmAlertPlayerRegisterInfo"}}},
    %{name: "NonLosingPvpScoreExpiredDateTime", type: :FDateTime}
  ],

"StrongholdBattleCarriageLivingTotemCombatStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsInCombatInProgressState", type: :unknown}
  ],

"MailReceiveAttachmentsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "ETzMailBoxKindType"}}
  ],

"CheatChangeCovenantCurrencyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"RealmIntegrationRealmInfo" => [
    %{name: "FromRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "ToRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmTransferDateTime", type: :FDateTime}
  ],

"CovenantCurrencyInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "CurrencyInfo", type: {:nullable, {:struct, "FTzCovenantCurrencyInfo"}}},
    %{name: "CovenantTaxAcquireInfos", type: {:list, {:struct, "CovenantTaxAcquireInfo"}}}
  ],

"PartyLeaveMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PartyLeaveOrDismissReason", type: {:enum, "ETzPartyLeaveOrDismissReasonType"}}
  ],

"ControlOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ControlOptionInfo", type: {:nullable, {:struct, "FTzControlOptionInfo"}}}
  ],

"PlayerMarketTransactionProcessInfo" => [
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerMarketTransactionProcessKind", type: {:enum, "ETzPlayerMarketTransactionProcessKindType"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "MarketKey", type: {:uint, 8}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsStorable", type: :unknown},
    %{name: "ItemAdditionalInfo", type: {:nullable, :message}},
    %{name: "ItemStackCount", type: {:int, 4}},
    %{name: "SellCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "SellCurrencyAmount", type: {:uint, 8}},
    %{name: "SettlementInfo", type: {:nullable, {:struct, "FTzMarketSettlementInfo"}}},
    %{name: "RegistrationFeeCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "RegistrationFeeCurrencyAmount", type: {:uint, 8}},
    %{name: "CovenantMarketFixedFeeCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantMarketFixedFeeCurrencyAmount", type: {:uint, 8}},
    %{name: "SellerItemGuid", type: {:uint, 8}},
    %{name: "BuyPlayerGuid", type: {:nullable, {:uint, 8}}},
    %{name: "PrevRegisteredGoodsGuid", type: {:nullable, {:uint, 8}}},
    %{name: "TransactionDateTime", type: {:nullable, :FDateTime}},
    %{name: "DeleteDateTime", type: {:nullable, :FDateTime}},
    %{name: "UpdateDateTime", type: :FDateTime},
    %{name: "ActionId", type: :FGuid},
    %{name: "SellPlayerGuid", type: {:uint, 8}},
    %{name: "IsDirty", type: :unknown}
  ],

"MarketFavoriteItemInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "MarketFavoriteItemInfosOnSale", type: {:list, {:struct, "MarketFavoriteItemInfo"}}},
    %{name: "MarketFavoriteItemInfosNotOnSale", type: {:list, {:struct, "MarketFavoriteItemInfo"}}}
  ],

"ShopShoppingModeCommandResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "RequestedCommand", type: {:enum, "ETzSubscriptionCommandType"}},
    %{name: "RegisteredGoodsList", type: {:list, {:struct, "RegisteredGoodsInfo"}}},
    %{name: "BuyCountInfos", type: {:list, {:struct, "GoodsBuyCountInfo"}}},
    %{name: "RegisteredGoodsBuyCountInfos", type: {:list, {:struct, "RegisteredGoodsBuyCountInfo"}}},
    %{name: "AutoBuySettings", type: {:list, {:struct, "AutoBuyInfo"}}},
    %{name: "SubscribeKeepaliveInterval_sec", type: {:int, 4}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatSpawnNormalDoodadResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ExpeditionForenoticeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ScheduledOpeningDateTime", type: :FDateTime}
  ],

"SkillCasterMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillMoveAffectInfo"}},
    %{name: "CasterMoveAffectKind", type: {:enum, "ETzCasterMoveAffectKindType"}}
  ],

"PlayerLogoutRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"InstanceFieldImproperQuestExpireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpireTargetTime", type: :FDateTime}
  ],

"CheatStrongholdBattleCarriageLivingTotemTeleportToPlayerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ChatBanNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BanInfo", type: {:nullable, :message}}
  ],

"ErosionInfo" => [
    %{name: "__base__", type: {:struct, "FTzEntityInfo"}},
    %{name: "ErosionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ErosionItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "InstallerGuid", type: {:uint, 8}},
    %{name: "InstallerName", type: :FString},
    %{name: "InstallerBattalionInfo", type: {:nullable, {:struct, "FTzAffiliatedBattalionInfo"}}},
    %{name: "InstalledDateTime", type: :FDateTime},
    %{name: "IsWithoutPermission", type: :unknown},
    %{name: "AbyssCocoonGuid", type: {:uint, 8}},
    %{name: "NpcSummonWaveStartTime", type: :FDateTime},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"CheatUpdateCovenantMissionCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "AdjustKind", type: {:enum, "ETzMissionAdjustKindType"}},
    %{name: "AdjustCount", type: {:int, 4}}
  ],

"WarpCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SourceWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationWarpPointCuid", type: {:struct, "FTzCuid"}}
  ],

"ItemIndexOptionalSelector" => [
    %{name: "__base__", type: {:struct, "FTzMultipleItemSelector"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x1b)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar6=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar6=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "IsEroded", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x1d)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar1=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar1=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "ExpireBeginDateTime", type: {:nullable, :FDateTime}},
    %{name: "ExpireEndDateTime", type: {:nullable, :FDateTime}},
    %{name: "GearQuality", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x41));uVar8=local_198&0xff;}uVar4=local_190;pcVar1=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar1=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"CovenantRealmTransferRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DestinationRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuidList", type: {:list, {:uint, 8}}}
  ],

"SpellstoneAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemAdditionalInfo"}},
    %{name: "SubOptionCuids", type: {:list, :cuid}}
  ],

"CovenantSynchronizeMemberNameNotify" => [
    %{name: "__base__", type: {:struct, "FTzCovenantSynchronizeMemberNotify"}},
    %{name: "PlayerName", type: :FString}
  ],

"CovenantTradeGoodsBuyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GoodsGuid", type: {:uint, 8}}
  ],

"RPCReturnMessage" => [
    %{name: "__base__", type: {:struct, "RPCMessage"}},
    %{name: "ReturnValue", type: {:nullable, :message}}
  ],

"PrivateChannelOpenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ChannelKind", type: {:enum, "ETzPrivateChannelKindType"}},
    %{name: "PrivateChannelKeepaliveInterval_sec", type: {:int, 4}}
  ],

"AetherOptionResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CashShopMainCategoryInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "TextCuid", type: {:struct, "FTzCuid"}},
    %{name: "SortOrder", type: {:int, 4}}
  ],

"CovenantTaxAcquireInfo" => [
    %{name: "AcquireDateTime", type: :FDateTime},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"CheatCreateItemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "BoundAndEroded", type: {:enum, "ETzBoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "Count", type: {:int, 4}},
    %{name: "ItemExpireDateTimeUtc", type: {:nullable, :FDateTime}}
  ],

"CovenantRejectJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatCommandPresetRelayNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PresetTitle", type: :FString}
  ],

"CheatChangeStrongholdBuildingLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingLevel", type: {:int, 4}}
  ],

"CovenantBattalionRemovedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"AllRealmInfoPubSubChannelInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "RealmInfos", type: {:list, nil}}
  ],

"SkillQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "FTzQuickSlotDetailInfo"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}}
  ],

"TeaseMessageRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TeaseMessage", type: :FString}
  ],

"ChatServerLoginRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantWorldMapMarkerRemoveAllNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "RemovedGuids", type: {:list, {:uint, 8}}}
  ],

"CheatSendSampleMailToMeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyCancelAllianceApplicationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatFavorDailyCheckDateTimeResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"InteractionCancelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"WarpItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "DestinationWarpPointCuid", type: {:struct, "FTzCuid"}}
  ],

"ProtocolCheckResponse" => [
    %{name: "TozNetwork.Handshake.ProtocolChecker.ProtocolCheckResponse", type: :unknown}
  ],

"TriggerWorldActionInfo" => [
    
  ],

"PartySharedFocusTargetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"PaidAttendanceHideNotificationMarkerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceCuid", type: {:struct, "FTzCuid"}}
  ],

"ReturnCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"WarpCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatFillHealthPointsAndManaPointsToFullResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"DisplayRealmTransferQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmAccountRealmTransferCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantRealmTransferCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatExpeditionLivingTotemTeleportToPlayerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ErosionInstalledWithoutPermissionRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "InstallerGuid", type: {:uint, 8}}
  ],

"FollowerWorkInfo" => [
    %{name: "WorkState", type: {:enum, "ETzFollowerWorkStateType"}},
    %{name: "MaxWorkTime_sec", type: {:int, 4}},
    %{name: "ElapsedWorkTime_sec", type: {:int, 4}},
    %{name: "CurrentWorkSpeed_mwpsec", type: {:int, 4}},
    %{name: "AccumulatedWorkAmount_mw", type: {:uint, 8}},
    %{name: "LastWorkUpdateDateTime", type: :FDateTime}
  ],

"ChatEntityPlayerInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :FString},
    %{name: "Level", type: {:int, 4}},
    %{name: "PlayerExperiencePointsRanking", type: {:int, 4}},
    %{name: "LastLoginDateTime", type: {:nullable, :FDateTime}}
  ],

"CheatStartStrongholdSummonWaveDefenseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdSummonWaveDefenseCuid", type: {:struct, "FTzCuid"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyRejectAllianceResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"RealmIntegrationBattleResultInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "RealmResults", type: {:list, {:struct, "RealmIntegrationBattleRealmResult"}}}
  ],

"StrongholdBattleSiegeWeaponLocationInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdBattleSiegeWeaponLocationInfos", type: {:list, {:struct, "StrongholdBattleSiegeWeaponLocationInfo"}}}
  ],

"StrongholdBuildingWorkCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"HavenEventInfo" => [
    %{name: "HavenEventCuid", type: {:struct, "FTzCuid"}},
    %{name: "EventBeginDateTime", type: :FDateTime},
    %{name: "EventEndDateTime", type: :FDateTime}
  ],

"CheatRegenerateHealthPointsAndManaPointsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HealthPointsRegenerationUnit", type: {:uint, 8}},
    %{name: "ManaPointsRegenerationUnit", type: {:uint, 8}}
  ],

"CheatCreateAndEquipGuiseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "SelectedGuiseCuid", type: {:struct, "FTzCuid"}}
  ],

"MailReservedStrongholdProtectionFailLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "ReservedStrongholdProtectionFailReason", type: {:enum, "ETzReservedStrongholdProtectionFailReasonType"}},
    %{name: "StrongholdProtectionUseRefreshTime", type: :FTimespan},
    %{name: "AttackCovenantNames", type: {:list, :string}},
    %{name: "RestrictionAnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "RestrictionStartDateTimeByAnniversary", type: {:nullable, :FDateTime}},
    %{name: "RestrictionAnniversaryEndDateTime", type: {:nullable, :FDateTime}}
  ],

"BattalionJoinApplicationCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"StrongholdBattleMarchingStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackPhaseStartNotify"}}
  ],

"PrivateChannelOpenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChannelKind", type: {:enum, "ETzPrivateChannelKindType"}}
  ],

"AccelerationResultInfo" => [
    %{name: "FollowerWorkKind", type: {:enum, "ETzFollowerWorkKindType"}},
    %{name: "WorkplaceSpawnedEntityCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkCuid", type: {:struct, "FTzCuid"}}
  ],

"BattalionBattalionWarpConfirmFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatExpeditionOpenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, {:struct, "FTzExpeditionSummaryInfo"}}}
  ],

"OtherPlayerLootNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "NpcLocation_cm", type: :FVector},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerLocation_cm", type: :FVector},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "IsErosionInstallerReward", type: :unknown}
  ],

"PlayerLoginRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsFastLogin", type: :unknown}
  ],

"PartyInfo" => [
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "FTzPartyOptionInfo"}}},
    %{name: "PartyLeaderGuid", type: {:uint, 8}},
    %{name: "PartyMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPartyMemberInfo"}}},
    %{name: "TargetLocationInfos", type: {:list, {:struct, "TargetLocationInfo"}}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"CrossRealmCovenantDiplomacyWithdrawAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"FavorSummaryInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SkillStatsAffectInfo" => [
    %{name: "HealthPointsDelta", type: {:int, 4}},
    %{name: "ManaPointsDelta", type: {:int, 4}}
  ],

"CovenantRecommendBuildingWorkResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatExpeditionRepeatScheduleOpenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}}
  ],

"FollowerLeaveToWorkplaceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DispatchOverallInfo", type: {:nullable, {:struct, "FTzFollowerDispatchOverallInfo"}}},
    %{name: "FollowerMovePathInfo", type: {:nullable, {:struct, "FTzFollowerMovePathInfo"}}}
  ],

"ServerDrivenPlayResetDailyDurationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RemainingDailyDuration_sec", type: {:int, 4}},
    %{name: "StartUsingDailyDurationTime", type: {:nullable, :FDateTime}}
  ],

"ShopCashMerchandiseUpdateRealmTotalBuyCountInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "UpdatedRealmTotalMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"ItemLockSwitchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "IsInRealmAccountWarehouse", type: :unknown},
    %{name: "IsLocked", type: :unknown}
  ],

"DeathPenaltyRecoveryInfo" => [
    %{name: "DeathPenaltyFreeRecoveryInfo", type: {:nullable, :message}},
    %{name: "LastDeathPenaltyAutoRecoveryInfo", type: {:nullable, :message}}
  ],

"CovenantUpdateMainHavenCuidNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MainHavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatResetAchievementRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AchievementCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatDeleteChatEntityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatStrongholdBattleAttackDeclareResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmAccountPresentCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Password", type: :FString},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantCampOfficeScaleInfo" => [
    %{name: "TotalCovenantMemberCount", type: {:int, 4}},
    %{name: "ActiveCovenantMemberCount", type: {:int, 4}},
    %{name: "ActiveCovenantMemberCountUpdateDateTime", type: {:nullable, :FDateTime}}
  ],

"TerritoryErosionItemConfigurationInfo" => [
    %{name: "IsPermitted", type: :unknown},
    %{name: "unknown_name", type: {:uint, 8}}
  ],

"PrivateChatRoomRecordsInitializationInfo" => [
    %{name: "__base__", type: {:struct, "FTzChatRoomRecordsInitializationInfo"}},
    %{name: "ChatEntitySummaryInfo", type: {:nullable, {:struct, "FTzChatEntitySummaryInfo"}}}
  ],

"DeathPenaltyFreeRecoveryInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeathPenaltyFreeRecoveryInfo", type: {:nullable, :message}}
  ],

"CheatResetCovenantCampaignTicketCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FocusRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FocusTargetGuid", type: {:uint, 8}}
  ],

"SkillStageInfo" => [
    %{name: "Stage", type: {:int, 2}},
    %{name: "LoopCounter", type: {:int, 4}},
    %{name: "SubStageCounter", type: {:int, 4}},
    %{name: "SkillCasterAffectInfo", type: {:nullable, {:struct, "FTzSkillCasterAffectInfo"}}},
    %{name: "SkillAffectTargetGuidList", type: {:list, {:uint, 8}}},
    %{name: "SkillAffectTargetAffectInfoList", type: {:list, {:struct, "SkillAffectTargetAffectInfo"}}},
    %{name: "SkillShieldWallAffectInfoList", type: {:list, {:struct, "SkillShieldWallAffectInfo"}}},
    %{name: "SkillTargetingInfos", type: {:list, {:struct, "SkillTargetingInfo"}}},
    %{name: "AppliedSomaBuffCuid", type: {:struct, "FTzCuid"}},
    %{name: "AppliedAetherCategoryTier", type: {:int, 4}},
    %{name: "StageStartDateTime", type: :FDateTime},
    %{name: "Duration_msec", type: {:int, 4}}
  ],

"EmergencyEscapeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MailAttachmentsInfo" => [
    %{name: "Items", type: {:list, {:struct, "ItemInfo"}}},
    %{name: "Currencies", type: {:list, {:struct, "MailAttachmentCurrencyInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"PlayerLocationMonitoringInfo" => [
    %{name: "RequestPlayerGuid", type: {:uint, 8}},
    %{name: "RequestPlayerRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "RequestPlayerName", type: :FString},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TargetPlayerRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "TargetPlayerName", type: :FString},
    %{name: "TargetCovenantGuid", type: {:uint, 8}},
    %{name: "TargetCovenantName", type: :FString},
    %{name: "TargetConnectionStatus", type: {:enum, "ETzConnectionStatusType"}},
    %{name: "ExpiredDateTime", type: :FDateTime}
  ],

"PvpBattleInfo" => [
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleDisplayKind", type: {:enum, "ETzPvpBattleDisplayKindType"}},
    %{name: "PvpBattleKillDeathInfos", type: {:list, {:struct, "PvpBattleKillDeathInfo"}}},
    %{name: "PvpBattleKillDeathCountInfos", type: {:map, {:struct, "PvpBattleCovenantId"}, {:struct, "TMap<FTzPvpBattlePlayerId"}}},
    %{name: "PvpBattlePlayerInfos", type: {:map, {:struct, "PvpBattlePlayerId"}, {:struct, "TSharedPtr<FTzPvpBattlePlayerInfo"}}},
    %{name: "PvpBattleCovenantInfos", type: {:map, {:struct, "PvpBattleCovenantId"}, {:struct, "TSharedPtr<FTzPvpBattleCovenantInfo"}}},
    %{name: "Location_cm", type: :FVector}
  ],

"CheatClearPlayerMissionRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AcquireDateTime", type: {:nullable, :FDateTime}}
  ],

"CheatFinishHavenBuildingWorkRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatPromoteFollowerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerCuid", type: {:struct, "FTzCuid"}},
    %{name: "TargetTier", type: {:int, 4}}
  ],

"CheatSpawnTerritoryBossResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyRejectAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingSubscriptionInfo", type: {:nullable, {:struct, "FTzBuildingSubscriptionInfo"}}}
  ],

"CheatRankingResetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"AnniversaryPointRewardParameter" => [
    %{name: "__base__", type: {:struct, "FTzAcquireSourceAdditionalParameter"}},
    %{name: "GoalPoint", type: {:int, 4}}
  ],

"CheatGetStrongholdAccumulatedTaxCurrencyAmountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantWatchDeregisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :FString}
  ],

"FindShortestTravelPathRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :FVector},
    %{name: "Destination_cm", type: :FVector},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"WorldMapPvpBattleEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleGuid", type: {:uint, 8}}
  ],

"CheatAcquireAllUsableSkillsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AcquiredSkillCuids", type: {:list, :cuid}}
  ],

"EndedWorldEventActionInfo" => [
    %{name: "__base__", type: {:struct, "FTzTriggerWorldActionInfo"}}
  ],

"CheatInstallAllArquirunesRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RealmTransferRealmInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmTransferCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatPlayerDeleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"RealmAccountPresentApplicationCheckInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "IsLoginedWithSafeDevice", type: :unknown},
    %{name: "IsInVillage", type: :unknown},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmAccountPresentApplicationCheckInfo"}}}
  ],

"CollectionSlotItemRegisterNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "CollectionSlotItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatClearPlayerMissionRewardResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleDefenseGunAttackStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantDiplomacyCancelReinforcementInvitationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatStrongholdBattlePhaseTransitionEventRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdBattlePhaseTransitionEvent", type: {:enum, "ETzStrongholdBattlePhaseTransitionEventType"}}
  ],

"CovenantUpdateCovenantMemberRoleNameNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TargetCovenantMemberRoleName", type: :FString},
    %{name: "NewCovenantMemberRoleName", type: :FString}
  ],

"CheatNpcCombatLogRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatSpawnGuardTowersAtOccupyingStrongholdsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GuardTowerCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantOccupyCovenantCampNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantCampOccupancyInfo", type: {:nullable, {:struct, "FTzCovenantCampOccupancyInfo"}}}
  ],

"StrongholdSummonWaveDefenseUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "WaveIndex", type: {:int, 4}}
  ],

"CheatRealmAccountRealmTransferBlockResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatChangeTerritoryEntanglementGaugeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "EntanglementGauge", type: {:int, 4}}
  ],

"CovenantRealmTransferReadyToRealmTransferResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"GearEnhanceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "MaterialItemGuid", type: {:uint, 8}},
    %{name: "RequestEnhancementGrade", type: {:int, 2}},
    %{name: "SpecialGearEnhancementScheduleCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantJoinRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"BuffPeriodicAffectNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffCuid", type: {:struct, "FTzCuid"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "HealthPointsDelta", type: {:int, 4}},
    %{name: "ManaPointsDelta", type: {:int, 4}},
    %{name: "ProtectedDamage", type: {:int, 4}}
  ],

"CheatInventoryIncreaseWeightLimitResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleJoinNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdBattleInfo", type: {:nullable, :message}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}}
  ],

"CovenantCreateCovenantMemberRoleRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :FString}
  ],

"PlayerMarketTransactionSettleProcessNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatClearSeasonPassLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ItemAcquireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerName", type: :FString},
    %{name: "ItemAcquireSourceInfo", type: {:nullable, {:struct, "FTzItemAcquireSourceInfo"}}},
    %{name: "ItemIndices", type: {:list, {:struct, "ItemIndex"}}}
  ],

"DisplayOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "DisplayOptionInfo", type: {:nullable, {:struct, "FTzDisplayOptionInfo"}}}
  ],

"CheatCommandPresetBeginNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatTerritoryContaminationChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "ContaminationDelta", type: {:int, 4}}
  ],

"PaidAttendanceRewardAllResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "FTzPaidAttendanceInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"GuiseUnequipRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SkillCasterAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillAffectInfo"}},
    %{name: "SkillStatsAffectInfo", type: {:nullable, :message}},
    %{name: "SkillCasterMoveAffectInfo", type: {:nullable, {:struct, "FTzSkillCasterMoveAffectInfo"}}}
  ],

"AlertPlayerInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "RegisteredDateTime", type: :FDateTime}
  ],

"SkillProcAvailableNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "TargetingCharacterGuid", type: {:uint, 8}}
  ],

"ShopAutoBuySettingUpdateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BaseInfo" => [
    %{name: "Token", type: :unknown}
  ],

"StrongholdBattleAttackDeclareInfo" => [
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackerHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "DiscardStrongholdCuidIfMax", type: {:struct, "FTzCuid"}},
    %{name: "AttackResourceInfo", type: {:nullable, {:struct, "FTzStrongholdBattleAttackResourceInfo"}}},
    %{name: "IsAllowVolunteerJoinApply", type: :unknown},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown},
    %{name: "IsNotExposeToBattalionList", type: :unknown},
    %{name: "IsDeclarePlunder", type: :unknown}
  ],

"CovenantHighestOccupiedStrongholdGradeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "ETzStrongholdGradeType"}}
  ],

"CovenantWatchDetailInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatResetAllAetherOptionResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PlayerFieldLeaveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntitySpawnReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
  ],

"RealmAccountRealmTransferExecuteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "RealmTransferInfo", type: {:nullable, :message}},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmTransferCheckInfo"}}}
  ],

"StrongholdBuildingDowngradeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"GameNotificationOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "HeroBossSpawnNotifyDisplayOption", type: :unknown},
    %{name: "DistrictBossSpawnNotifyDisplayOption", type: :unknown},
    %{name: "ZonePointBossSpawnNotifyDisplayOption", type: :unknown}
  ],

"CovenantLeaveMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantDiplomacyConfirmAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"ChatInfo" => [
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "OriginRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "SenderCharacterName", type: :FString},
    %{name: "SenderClasse", type: {:enum, "ETzClasseType"}},
    %{name: "SenderLevel", type: {:int, 4}},
    %{name: "SenderSlayingGrade", type: {:int, 2}},
    %{name: "SenderPlayerExperiencePointsRanking", type: {:nullable, {:int, 4}}},
    %{name: "SenderFieldUid", type: {:struct, "FTzFieldUid"}},
    %{name: "SenderGuid", type: {:uint, 8}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "ETzStrongholdGradeType"}},
    %{name: "InfoToShare", type: :FString},
    %{name: "Text", type: :FString},
    %{name: "HarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "RegisterDateTime", type: :FDateTime}
  ],

"ExpeditionJoinedBattalionsInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "ExpeditionJoinedBattalionList", type: {:list, {:struct, "CovenantBattalionPublicSummaryInfo"}}}
  ],

"PlayerMarketTransactionSellWithdrawProcessNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"AnniversaryAddRewardParameter" => [
    %{name: "__base__", type: {:struct, "FTzDropParameter"}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}}
  ],

"HandshakeFailMessage" => [
    %{name: "Result", type: {:nullable, :message}}
  ],

"FollowerExperiencePointsItemConsumeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerItemGuid", type: {:uint, 8}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"GearErodedRestoreResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "GearErodedRestorationResultInfo", type: {:nullable, {:struct, "FTzGearErodedRestorationResultInfo"}}}
  ],

"PlayerCashShopInfo" => [
    %{name: "CashShopRefundableMerchandiseStorageBoxInfo", type: {:nullable, {:struct, "FTzCashShopRefundableMerchandiseStorageBoxInfo"}}},
    %{name: "MerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"CheatTestGearEnchantOptionGradeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CostItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "UpgradeCountsByEnchantSlot", type: {:map, {:int, 2}, {:int, 4}}}
  ],

"CovenantCampaignEnterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CampaignWarpNpcGuid", type: {:uint, 8}}
  ],

"DestroyerInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "ExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CovenantDiplomacyConfirmReinforcementInvitationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmAccountPresentSummaryInfo" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "AppliedRealmAccountGuid", type: {:uint, 8}},
    %{name: "MainPlayerName", type: :FString},
    %{name: "MainPlayerLevel", type: {:int, 4}},
    %{name: "MainPlayerClasse", type: {:enum, "ETzClasseType"}},
    %{name: "PresentCode", type: :FString},
    %{name: "Password", type: :FString},
    %{name: "ExpiredDateTime", type: :FDateTime}
  ],

"MissionRewardInfo" => [
    %{name: "MissionCuid", type: {:struct, "FTzCuid"}},
    %{name: "MissionStep", type: {:int, 4}},
    %{name: "AcquiredDateTime", type: {:nullable, :FDateTime}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}}
  ],

"CovenantRubyShopMerchandiseInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}},
    %{name: "MerchandiseInfos", type: {:list, {:struct, "CovenantRubyShopMerchandiseInfo"}}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "FTzCovenantRubyShopInfo"}}}
  ],

"PlayerMarketTransactionDelayedSellReregisterProcessNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SessionKeyAuthenticate" => [
    %{name: "SessionKey", type: :unknown},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"BoundAndErodedInheritanceBatchCraftRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "RewardCuid", type: {:struct, "FTzCuid"}},
    %{name: "MaterialGroupOrderList", type: {:list, :cuid}}
  ],

"BattalionMemberConnectionStatusSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionMemberInfoSynchronizeNotify"}},
    %{name: "ConnectionStatus", type: {:enum, "ETzConnectionStatusType"}}
  ],

"CheatChangeCovenantLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantRubyShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "FTzCovenantRubyShopInfo"}}}
  ],

"FootCustomizeInfo" => [
    %{name: "FootBase", type: :FVector},
    %{name: "BigToe", type: {:nullable, {:struct, "FTzToeCustomizeInfo"}}}
  ],

"StrongholdWorldMapOccupationNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}}
  ],

"DiplomacyChatRoomInviteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatTutorialResetAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BulkCharacterMoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CharacterMoveInfos", type: {:list, {:struct, "CharacterMoveInfo"}}}
  ],

"ChatOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatOptionInfo", type: {:nullable, {:struct, "FTzChatOptionInfo"}}}
  ],

"CheatChangeSeasonPassLevelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SeasonPassLevel", type: {:int, 4}}
  ],

"CheatCraftCovenantLivingTotemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LivingTotemCuid", type: {:struct, "FTzCuid"}},
    %{name: "LivingTotemTier", type: {:int, 4}}
  ],

"SkillAutoUseDeregisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}}
  ],

"OrganizationStatsInfo" => [
    %{name: "Stats", type: {:map, {:struct, "OrganizationStatPrimaryKey"}, {:int, 4}}}
  ],

"DyingSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "DyingExpireTime", type: {:nullable, :FDateTime}}
  ],

"CovenantResearchResetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantResearchInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantResearchInfo"}}}
  ],

"StrongholdBattleUpdateSiegeWeaponTargetResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "SlotIndex", type: {:int, 2}}
  ],

"PowerSavingModeStartResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "LastPlayerInteractionDateTime", type: :FDateTime}
  ],

"CustomizationItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "FTzPlayerCustomizeInfo"}}},
    %{name: "Gender", type: {:enum, "ETzGenderType"}}
  ],

"GuiseEquipFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CollectionSlotItemRegisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CollectionCuid", type: {:struct, "FTzCuid"}},
    %{name: "CollectionSlotItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"SkillCharacterTargetingInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillTargetingInfo"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"CheatOccupyOccupiableNpcResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatTeleportRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "Radius_cm", type: :float}
  ],

"CheatMonsterBookSetAnalysisInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnalysisColorCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnalysisRewardStatCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatTeleportToPlayerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :FString}
  ],

"ZlibCompressHandshakeResult" => [
    %{name: "__base__", type: {:struct, "HandshakeResult"}},
    %{name: "TozNetwork.Handshake.Compressor.ZlibCompressHandshakeResult", type: :unknown}
  ],

"GearSlotPresetModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}}
  ],

"CovenantCampCovenantShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "FTzShopInfo"}}}
  ],

"BlockedChatEntityInfo" => [
    %{name: "ChatEntityGuid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "ChatEntityPlayerGuid", type: {:uint, 8}},
    %{name: "ChatEntityPlayerName", type: :FString}
  ],

"SessionKeyAuthenticateComplete" => [
    %{name: "Success", type: :unknown},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"MarketPriceInfo" => [
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "GearEnhancementGrade", type: {:nullable, {:int, 2}}},
    %{name: "LowestUnitSalesPriceForYesterday_pe2", type: {:uint, 8}},
    %{name: "LastUnitSalesPrice_pe2", type: {:uint, 8}},
    %{name: "LowestUnitListPrice_pe2", type: {:uint, 8}}
  ],

"CheatChangeServerTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RealmIntegrationHidePopupRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"StrongholdBattleBuildingHealthPointsChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingKind", type: {:enum, "ETzBuildingKindType"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"CheatRemoveAllWorldMapMarkerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "RemovedGuids", type: {:list, {:uint, 8}}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "FTzServerDrivenPlayOptionInfo"}}}
  ],

"QuestMissionProgressInfo" => [
    %{name: "QuestMissionVuid", type: {:struct, "FTzVuid"}},
    %{name: "ProgressCount", type: {:uint, 8}}
  ],

"CharacterCastAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzCastAffectSourceInfo"}},
    %{name: "ContributorRecordInfo", type: {:nullable, {:struct, "FTzCharacterRecordInfo"}}}
  ],

"AnniversaryAchievementPointInfo" => [
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :FDateTime},
    %{name: "AnniversaryAchievementCycleEndDateTime", type: :FDateTime},
    %{name: "RewardedGoalPoints", type: :unknown}
  ],

"MountStationaryCallingRequest" => [
    %{name: "__base__", type: {:struct, "FTzMountCallingRequest"}},
    %{name: "PlayerFacingDirectionYaw_rad", type: :float}
  ],

"MonsterBookNodeAcquireResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AcquiredStateInfo", type: {:nullable, {:struct, "FTzMonsterBookNodeAcquiredStateInfo"}}},
    %{name: "ConsumeInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "FTzMonsterBookCollectionInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"PlayerSkillSlotInfo" => [
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}}
  ],

"FollowerCollectionTopExperienceInfo" => [
    %{name: "FollowerItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "OwnerPlayerNameOrNull", type: :FString},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"RealmAccountPresentApplicationCheckInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BattalionBanishMemberRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"SkillEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SkillSiid", type: {:int, 4}},
    %{name: "IsAllStagesComplete", type: :unknown}
  ],

"StrongholdSummonWaveDefenseDefenseTargetSpawnNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "DefenseTargetGuid", type: {:uint, 8}}
  ],

"CovenantCreateCovenantMemberRoleNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberRoleInfo", type: {:nullable, :message}}
  ],

"BattalionMemberCovenantMemberRoleSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionMemberInfoSynchronizeNotify"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}}
  ],

"PartyOptionUpdateFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatForceSynchronizeBuildingWorkRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantItemUseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ParameterInfo", type: {:nullable, :message}}
  ],

"TutorialBeginFirstOneFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ResultCodesByTutorialCuid", type: {:map, :cuid, {:enum, "ResultCodeType"}}}
  ],

"RealmIntegrationHidePopupResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatExpeditionRepeatScheduleOpenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"GuiseUnequipFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatResetContentsUnlockResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "UnusedContentsUnlockKinds", type: :unknown}
  ],

"FollowerSquadResetRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatMonsterBookSetAcquisitionProgressRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "NpcCuid", type: {:struct, "FTzCuid"}},
    %{name: "KillCount", type: {:int, 4}}
  ],

"PlayerItemUseRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ParameterInfo", type: {:nullable, :message}}
  ],

"CovenantCurrencyInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"SkillAffectInfo" => [
    
  ],

"CovenantAppointCovenantMemberRoleResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantMemberRoleName", type: :FString}
  ],

"CashShopDescriptionTextInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Text", type: :FString}
  ],

"CheatFavorBossChaseGaugeChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "BossChaseGauge", type: {:int, 4}}
  ],

"BuffReflectNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffCuid", type: {:struct, "FTzCuid"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "HealthPointsDelta", type: {:int, 4}}
  ],

"StrongholdBattleCovenantBattalionConfirmConveneFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SpellstoneAdditionalHealthAndManaStatsInfo" => [
    %{name: "HealthPointsAffectIncreaseAmount", type: :float},
    %{name: "HealthPointsAffectIncreaseRatio", type: :float},
    %{name: "ManaPointsAffectIncreaseAmount", type: :float},
    %{name: "ManaPointsAffectIncreaseRatio", type: :float}
  ],

"BuffAffectInfo" => [
    
  ],

"CheatSetLocalServerPushRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsEnabled", type: :unknown}
  ],

"CovenantLivingTotemCraftResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"PvpRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CombatOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CombatOptionInfo", type: {:nullable, {:struct, "FTzCombatOptionInfo"}}}
  ],

"CovenantLeaderDividendInfo" => [
    %{name: "__base__", type: {:struct, "FTzDividendInfo"}}
  ],

"CheatGetCrossRealmSeasonMaxEnterablePlayerCapacityResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MaxEnterablePlayerCapacity", type: {:int, 4}}
  ],

"PlayerResurrectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SelectedItemCuid", type: {:struct, "FTzCuid"}}
  ],

"AnniversaryAchievementPrivateChannelOpenRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"DeathPenaltyRecoverRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"CheatCovenantRealmTransferBlockResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantSupportSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantSupportInfos", type: {:nullable, {:struct, "FTzPlayerCovenantSupportInfo"}}}
  ],

"QuickSlotModifyFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatOpenAllFogInDistrictRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmIntegrationRealmAccountInfo" => [
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "PreviousRealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerInfos", type: {:list, {:struct, "RealmIntegrationPlayerInfo"}}},
    %{name: "RealmTransferDateTime", type: :FDateTime},
    %{name: "DeleteDateTime", type: {:nullable, :FDateTime}}
  ],

"MarketSellCancelRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}}
  ],

"NavMeshTileCheckResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CheckedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"PartyRecommendInviteeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmPlayerId", type: {:struct, "FTzRealmPlayerId"}},
    %{name: "PlayerName", type: :FString}
  ],

"CachedMessages" => [
    %{name: "Container", type: :unknown}
  ],

"GearEnhancementSuccessNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :FString},
    %{name: "GearInfo", type: {:nullable, {:struct, "FTzGearInfo"}}},
    %{name: "DisplaySystemMessage", type: :unknown},
    %{name: "DisplayChatMessage", type: :unknown}
  ],

"CheatCollectionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SelectedMountItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "ActivatedCollectionCategoryCuids", type: :unknown},
    %{name: "CollectionProgressInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCollectionProgressInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"SharedTargetCharacterInfo" => [
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "Entity", type: {:enum, "ETzEntityType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}}
  ],

"BattalionBattalionWarpFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"VeilAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "FTzAffectSourceInfo"}}
  ],

"RealmCovenantId" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantVuid", type: {:struct, "FTzVuid"}}
  ],

"StrongholdBuildingUpgradeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "TargetLevel", type: {:int, 4}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"WeeklyContributionPointsDividendResultInfo" => [
    %{name: "__base__", type: {:struct, "FTzDividendResultInfo"}},
    %{name: "MinAmount", type: {:uint, 8}},
    %{name: "MaxAmount", type: {:uint, 8}}
  ],

"TutorialCompleteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: {:struct, "FTzCuid"}}
  ],

"GearEnchantTransferRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SourceItemGuid", type: {:uint, 8}},
    %{name: "TargetItemGuid", type: {:uint, 8}}
  ],

"CheatAcquireAllFollowersResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatAcquireCovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveTargetInfoChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "StrategicObjectiveTargetInfo", type: {:nullable, {:struct, "FTzStrategicObjectiveTargetInfo"}}}
  ],

"CheatChangeBuildingHealthPointsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantTradeGoodsBuyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantDiplomacyConfirmReinforcementInvitationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "IsApproved", type: :unknown}
  ],

"MailSendRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ToPlayerName", type: :FString},
    %{name: "ToCovenantName", type: :FString},
    %{name: "Title", type: :FString},
    %{name: "Body", type: :FString}
  ],

"CheatNpcCombatLogResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"QuickSlotUpdateInfo" => [
    %{name: "AddedQuickSlotInfos", type: {:map, {:enum, "QuickSlotIndexType"}, {:struct, "TSharedPtr<FTzQuickSlotInfo"}}},
    %{name: "ModifiedQuickSlotInfos", type: {:map, {:enum, "QuickSlotIndexType"}, {:struct, "TSharedPtr<FTzQuickSlotInfo"}}},
    %{name: "RemovedQuickSlotIndices", type: {:list, {:enum, "QuickSlotIndexType"}}}
  ],

"PlayerCovenantInfo" => [
    %{name: "InvitedCovenantGuidAndInvitedDateTimes", type: {:map, {:uint, 8}, :datetime}},
    %{name: "JoinAppliedCovenantGuids", type: :unknown},
    %{name: "CovenantReturnHavenCuid", type: {:struct, "FTzCuid"}}
  ],

"FindRegionCrossablePathResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Destination_cm", type: :FVector},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "CrossRegionUseReturnPathResult", type: {:nullable, {:struct, "FTzCrossRegionPathResultInfo"}}},
    %{name: "CrossRegionUseIntraRegionWarpPathResult", type: {:nullable, {:struct, "FTzCrossRegionPathResultInfo"}}},
    %{name: "CrossRegionPathResult", type: {:nullable, {:struct, "FTzCrossRegionPathResultInfo"}}},
    %{name: "CrossRegionUseWarpItemPathResult", type: {:nullable, {:struct, "FTzCrossRegionPathResultInfo"}}}
  ],

"ChatRecordsMetaData" => [
    %{name: "RecordsBeginIndex", type: {:uint, 8}},
    %{name: "RecordsEndIndex", type: {:uint, 8}},
    %{name: "LastViewedRecordIndex", type: {:uint, 8}}
  ],

"CheatMonsterBookResetCategoryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}}
  ],

"BattalionJoinApplicationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionMemberSummaryInfo", type: {:nullable, {:struct, "FTzBattalionMemberSummaryInfo"}}}
  ],

"StrongholdSummonWaveDefenseEndNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAcquireAllCovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ServerDrivenPlayHuntingStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}},
    %{name: "HuntingStartTime", type: :FDateTime},
    %{name: "InitialHealthPointsPotionCount", type: {:uint, 8}}
  ],

"StrongholdBattleSummonOutpostStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackPhaseStartNotify"}}
  ],

"ArquiruneActivateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"PlayerMarketTransactionSellCancelProcessNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"StrongholdGeneralShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "FTzShopInfo"}}}
  ],

"CheatChangeCampaignConditionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ConditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ProgressCount", type: {:uint, 8}}
  ],

"CheatChangeBulkCharacterMoveNotifyIntervalRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Interval_msec", type: {:uint, 8}}
  ],

"WorldMapMarkerRemoveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"ErGameServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "FTzErServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"CovenantMemberRoleInfo" => [
    %{name: "CovenantMemberRoleKind", type: {:enum, "ETzCovenantMemberRoleKindType"}},
    %{name: "Name", type: :FString},
    %{name: "CovenantPermissionsInfo", type: {:nullable, {:struct, "FTzCovenantPermissionsInfo"}}},
    %{name: "CreateDateTime", type: :FDateTime}
  ],

"CheatCreateItemResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"CovenantLeaveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ExperiencePointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"ControlOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "GroundSkillControlKind", type: {:enum, "ETzGroundSkillControlKindType"}}
  ],

"ItemLockSwitchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "IsInRealmAccountWarehouse", type: :unknown},
    %{name: "IsLocked", type: :unknown}
  ],

"DeathPenaltyRecordInfoRemoveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"CheatSetTransmutationRecordResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PeriodCuid", type: {:struct, "FTzCuid"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"MailBuildingCraftLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailBuildingWorkLayoutInfo"}},
    %{name: "CraftItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"PartyInviteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmPlayerId", type: {:struct, "FTzRealmPlayerId"}}
  ],

"DestroyerInfosInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "DestroyerInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzDestroyerInfo"}}}
  ],

"WarpCancelFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ResultCode", type: {:enum, "ETzResultCodeType"}}
  ],

"CheatToggleShowQuestDebugRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MarketPriceQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "GearEnhancementGrade", type: {:nullable, {:int, 2}}}
  ],

"RankingQueryByNameResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RankingTopicCuid", type: {:struct, "FTzCuid"}},
    %{name: "DateTime", type: {:nullable, :FDateTime}},
    %{name: "TargetRankingInfo", type: {:nullable, :message}},
    %{name: "SelfRankingInfo", type: {:nullable, :message}}
  ],

"SkillAutoUseRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RootSkillCuid", type: {:struct, "FTzCuid"}}
  ],

"PlayerStanceInfo" => [
    %{name: "AcquiredStances", type: {:list, {:enum, "StanceType"}}},
    %{name: "InstalledStance", type: {:enum, "ETzStanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :unknown}
  ],

"CheatInstanceEventRunActionsResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantBanishMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "UpdatePlayerLastCovenantWithdrawalDateTime", type: :unknown}
  ],

"StrongholdBattleAttackEndDateTimeChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "AttackEndDateTime", type: :FDateTime},
    %{name: "AttackGroupLivingTotemHealthPoints", type: {:uint, 8}},
    %{name: "IsAffectedFromLivingTotemSkill", type: :unknown}
  ],

"CovenantBattalionExpeditionInfo" => [
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "ExpeditionJoinDateTime", type: {:nullable, :FDateTime}},
    %{name: "AnotherBattalionGuids", type: {:list, {:uint, 8}}},
    %{name: "ExpeditionPhase", type: {:enum, "ETzBattalionExpeditionPhaseType"}},
    %{name: "ExpeditionStartLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "ExpeditionStandByNpcGuid", type: {:uint, 8}},
    %{name: "ExpeditionLivingTotemGuid", type: {:uint, 8}}
  ],

"CrossRealmCovenantDiplomacyApplyAllianceRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"DeathRecordInfo" => [
    %{name: "AffectSourceInfo", type: {:nullable, :message}},
    %{name: "LostExperiencePointsPercentage", type: {:int, 4}},
    %{name: "LostExperiencePoints", type: {:uint, 8}},
    %{name: "DeathPenaltyExemptKind", type: {:enum, "ETzDeathPenaltyExemptKindType"}}
  ],

"SkillAffectTargetMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "FTzSkillMoveAffectInfo"}},
    %{name: "AffectTargetMoveAffectKind", type: {:enum, "ETzAffectTargetMoveAffectKindType"}}
  ],

"SeasonPassLevelRewardParameter" => [
    %{name: "__base__", type: {:struct, "FTzAcquireSourceAdditionalParameter"}},
    %{name: "RewardedLevels", type: {:map, {:enum, "SeasonPassRewardKindType"}, {:struct, "TSet<int"}}}
  ],

"CheatUpdatePlayerMissionCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CampaignStartOptionInfo" => [
    %{name: "IsAllowVolunteerJoinApply", type: :unknown},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown},
    %{name: "IsNotExposeToBattalionList", type: :unknown},
    %{name: "IsBattalionAutoInviteCovenantMembers", type: :unknown}
  ],

"PaidAttendanceHideNotificationMarkerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: {:struct, "FTzCuid"}}
  ],

"LZ4CompressHandshakeResult" => [
    %{name: "__base__", type: :unknown},
    %{name: "TozLZ4.Handshake.LZ4CompressHandshakeResult", type: :unknown}
  ],

"MonsterBookInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuidToNodeStateInfos", type: {:list, {:struct, "MonsterBookNodeStateInfo"}}},
    %{name: "CategoryCuidToCollectionInfo", type: {:map, :cuid, {:struct, "TSharedPtr<FTzMonsterBookCollectionInfo"}}}
  ],

"SpawnLayerAlreadyActivatedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsPermanentSpawnLayer", type: :unknown},
    %{name: "SpawnLayerCuids", type: {:list, :cuid}}
  ],

"StrongholdBuildingConstructRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsCompleteImmediately", type: :unknown}
  ],

"CovenantGiftReceiveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ReceiveGiftGuids", type: {:list, {:uint, 8}}}
  ],

"StrongholdBattleLeaveNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantItemUseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"ThreatListClearNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantConfirmInvitationFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "LastCovenantWithdrawalDateTime", type: {:nullable, :FDateTime}}
  ],

"StrongholdBattleInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "StrongholdBattleSummaryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdBattleSummaryInfo"}}}
  ],

"BattalionMemberLocationInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzBattalionMemberInfoSynchronizeNotify"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}}
  ],

"CovenantAddInvitationsNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantInvitationInfos", type: {:list, {:struct, "CovenantInvitationInfo"}}}
  ],

"CheatCovenantCreateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BuildingWorkSummaryInfo" => [
    %{name: "WorkplaceCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingWorkKind", type: {:enum, "ETzBuildingWorkKindType"}},
    %{name: "IsCovenantRecommended", type: :unknown}
  ],

"TerritoryErosionItemConfigurationModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "TerritoryErosionItemConfigurationInfo", type: {:nullable, {:struct, "FTzTerritoryErosionItemConfigurationInfo"}}}
  ],

"ServerDrivenPlayStateInfo" => [
    
  ],

"CovenantDonationRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}},
    %{name: "DonateEvenIfHavenInventoryIsFull", type: :unknown}
  ],

"CovenantDiplomacyReinforcementInvitationRejectNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString},
    %{name: "IsCallByExpired", type: :unknown}
  ],

"ErosionAbyssCocoonSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "AbyssCocoonGuid", type: {:uint, 8}}
  ],

"StrongholdBattleEndRewardNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsAnyRewardSentByMail", type: :unknown},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"PartyQueryMemberCandidateListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PartyMemberCandidateKind", type: {:enum, "ETzPartyMemberCandidateKindType"}}
  ],

"InGameNotificationInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "InGameNotificationCategory", type: {:enum, "ETzInGameNotificationCategoryType"}},
    %{name: "AdditionalCuidParams", type: {:list, :cuid}},
    %{name: "AdditionalGuidParam", type: {:uint, 8}},
    %{name: "NotificationExpireDateTime", type: {:nullable, :FDateTime}}
  ],

"CheatClearAllStanceAndSkillRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"BattalionCheckReadyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ServerDrivenPlayAutoResupplyUsedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AutoResupplyUsedCount", type: {:int, 4}}
  ],

"CheatActivateArquiruneResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantCampaignInfo" => [
    %{name: "ActiveCampaignProgressInfos", type: {:list, :cuid}},
    %{name: "UpdateDateTime", type: :FDateTime},
    %{name: "CovenantCampaignProgressInfo", type: {:nullable, :message}},
    %{name: "CovenantCampaignTicketCount", type: {:int, 4}}
  ],

"DisplayRealmTransferQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PlayerCovenantSupportInfo" => [
    %{name: "HasCovenantSupportableFollower", type: :unknown},
    %{name: "CovenantSupportedCount", type: {:nullable, {:struct, "FTzLimitedCountingInfo"}}}
  ],

"UpdateLastViewedChatRecordsIndexResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdSummonWaveDefenseNpcSummonWaveProgressSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "CurrentWaveNpcKnockOutProgress", type: {:map, :cuid, {:int, 4}}}
  ],

"HonorableDieRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatRealmIntegrationPreprocessingResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"SkillUseOptionAddNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillUseOptionInfo", type: {:nullable, {:struct, "FTzSkillUseOptionInfo"}}}
  ],

"BattalionBattalionWarpNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WarpLocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "ExpireDateTime", type: :FDateTime}
  ],

"InfoAuthenticate" => [
    %{name: "AuthenticateInfo", type: {:nullable, :message}}
  ],

"MailServerDrivenPlayLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "HuntingSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayTime_sec", type: {:int, 4}},
    %{name: "GainedExperiencePoints", type: {:uint, 8}},
    %{name: "GainedSpiritualBondPower", type: {:uint, 8}},
    %{name: "GainedCurrencies", type: {:map, :cuid, {:uint, 8}}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"CovenantCampaignProgressInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CampaignCuid", type: {:struct, "FTzCuid"}},
    %{name: "CampaignStageCuid", type: {:struct, "FTzCuid"}},
    %{name: "FieldUid", type: {:struct, "FTzFieldUid"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "RelatedHavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatStrongholdApplyTaxResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"BattalionOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzPlayerBattalionOptionInfo"}}}
  ],

"TutorialBeginFirstOneRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "TutorialCuids", type: {:list, :cuid}}
  ],

"PreemptiveAttackTargetSelectNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeMemberNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"StackableItemQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemQuickSlotDetailInfo"}}
  ],

"RealmStateInfo" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "Ip", type: :FString},
    %{name: "ServerState", type: {:enum, "ETzServerStateType"}},
    %{name: "ServerTagKind", type: {:enum, "ETzServerTagKindType"}}
  ],

"ArquiruneActivateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAddOnScreenDebugMessageNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Message", type: :FString},
    %{name: "Key", type: {:int, 4}},
    %{name: "Duration_sec", type: {:int, 4}},
    %{name: "Color", type: {:int, 4}},
    %{name: "NewerOnTop", type: :unknown}
  ],

"CovenantRemoveInvitationNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"BattalionTargetLocationSetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "FTzTargetLocationInfo"}}}
  ],

"ShopClosedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ETzShopKindType"}},
    %{name: "Reason", type: {:enum, "ETzShopClosedReasonType"}}
  ],

"QuestTeleportToQuestWayPointResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"TransmutationCouponItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "ItemGrade", type: {:enum, "ETzItemGradeType"}}
  ],

"CheatUpgradeBuildingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatFillHealthPointsAndManaPointsToFullRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatEnchantItemRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "ETzEquipmentPresetIndexType"}},
    %{name: "GearSlot", type: {:enum, "ETzGearSlotType"}},
    %{name: "CostItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}}
  ],

"ControlOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ControlOptionInfo", type: {:nullable, {:struct, "FTzControlOptionInfo"}}}
  ],

"MailBuildingNonCraftLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailBuildingWorkLayoutInfo"}},
    %{name: "PreviousLevel", type: {:int, 4}},
    %{name: "CurrentLevel", type: {:int, 4}}
  ],

"PotionAutoUsageOptionInfo" => [
    %{name: "IsAutoUse", type: :unknown},
    %{name: "MaxPointsRatioToAutoUse_pe2", type: {:int, 2}},
    %{name: "MaxPointsRatioToAutoUseInPvp_pe2", type: {:int, 2}}
  ],

"BasicAchievementPrivateChannelKeepaliveRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatShowLocationAndFacingDirectionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PlayerDeleteConditionCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MountItemChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdSummaryBuildingInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSpawnerCuid", type: {:struct, "FTzCuid"}},
    %{name: "BuildingSubscriptionSummaryInfo", type: {:nullable, {:struct, "FTzBuildingSubscriptionSummaryInfo"}}}
  ],

"ServerDrivenPlayWaitingForResupplyStateInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayStateInfo"}}
  ],

"CharacterStatsInfo" => [
    
  ],

"ItemAcquireSourceInfo" => [
    %{name: "ItemAcquireMethod", type: {:enum, "ETzItemAcquireMethodType"}},
    %{name: "SourceCuid", type: {:struct, "FTzCuid"}},
    %{name: "AcquireSourceAdditionalParameter", type: {:nullable, :message}}
  ],

"CovenantDeleteCovenantMemberRoleRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantMemberRoleName", type: :FString}
  ],

"ZoneUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ZoneInfo", type: {:nullable, {:struct, "FTzZoneInfo"}}}
  ],

"CheatSpawnDoodadResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantBattalionExpeditionJoinRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpeditionJoinRequestInfo", type: {:nullable, {:struct, "FTzExpeditionJoinRequestInfo"}}}
  ],

"CheatUpdateCovenantMissionCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CampaignConditionProgressInfo" => [
    %{name: "CampaignConditionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ProgressCount", type: {:uint, 8}},
    %{name: "StartDateTime", type: {:nullable, :FDateTime}},
    %{name: "EndDateTime", type: {:nullable, :FDateTime}}
  ],

"CheatAccomplishSeasonPassAchievementResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"InstanceFieldTimeLimitExpireNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ExpireTargetTime", type: :FDateTime}
  ],

"CheatSpawnFromSpawnerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantUpdateJoinKindNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantJoinKind", type: {:enum, "ETzCovenantJoinKindType"}}
  ],

"InventoryExpandRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UserInventoryKind", type: {:enum, "ETzUserInventoryKindType"}},
    %{name: "SlotCount", type: {:int, 4}}
  ],

"MarketSellRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "ETzMarketKindType"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "FTzItemGuidSelector"}}},
    %{name: "SellCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "SellCurrencyAmount", type: {:uint, 8}},
    %{name: "RegistrationFeeCurrencyCuid", type: {:struct, "FTzCuid"}},
    %{name: "RegistrationFeeCurrencyAmount", type: {:uint, 8}}
  ],

"ErServerAuthenticateInfo" => [
    %{name: "__base__", type: :unknown},
    %{name: "LocalAreaNetworkAddress", type: :FString}
  ],

"CheatStrongholdBattleAttackDeclareRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "AttackDeclareHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "DiscardStrongholdCuidIfMax", type: {:struct, "FTzCuid"}}
  ],

"TozMessage" => [
    %{name: "TozNetwork.Protocol.TozMessage", type: :unknown}
  ],

"CovenantCreateResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "FTzCovenantInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "LastCovenantWithdrawalDateTime", type: {:nullable, :FDateTime}}
  ],

"CovenantRubyShopMerchandiseInfo" => [
    %{name: "MerchandiseCuid", type: {:struct, "FTzCuid"}},
    %{name: "DiscountRate", type: {:int, 4}},
    %{name: "Price", type: {:int, 4}}
  ],

"ShopCashMerchandiseRestoreResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RestorePaymentInfo", type: {:nullable, {:struct, "FTzToyMerchandisePaymentInfo"}}},
    %{name: "MerchandiseBuyResultInfo", type: {:nullable, {:struct, "FTzMerchandiseBuyResultInfo"}}}
  ],

"RealmTransferRealmInfoListResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "RealmInfos", type: {:list, nil}},
    %{name: "RealmAccountInfos", type: {:list, {:struct, "UniverseAccountRealmAccountInfo"}}},
    %{name: "AppliedRealmAccountGuids", type: {:list, {:uint, 8}}}
  ],

"TalkCompleteCheckRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "TalkCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatSpawnNpcResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdBattleAttackLadderCarSiegeWeaponSlotInfo" => [
    %{name: "__base__", type: {:struct, "FTzStrongholdBattleAttackSiegeWeaponSlotInfo"}},
    %{name: "LadderCarPillarNpcGuids", type: {:list, {:uint, 8}}}
  ],

"CheatChangeStrongholdAllBuildingLevelResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatClearSeasonPassAchievementsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"ReturnItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemUseParameterInfo"}},
    %{name: "CovenantReturnHavenCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatAnniversaryAchievementAccomplishResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"StrongholdTaxInfo" => [
    %{name: "TaxInfo", type: {:nullable, {:struct, "FTzTaxInfo"}}},
    %{name: "ModifierPlayerName", type: :FString}
  ],

"CheatChangeFocusTargetManaPointsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ManaPoints", type: {:uint, 8}}
  ],

"CheatTerritoryContaminationChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"UniverseInfo" => [
    %{name: "Universe", type: {:enum, "ETzUniverseType"}},
    %{name: "UniverseName", type: :FString}
  ],

"CovenantCampChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CovenantCampCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmAccountWarehouseAutoStoreSettingsInfo" => [
    %{name: "Settings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"NpcOccupationScoreCovenantViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzNpcOccupationScoreCovenantInfo"}},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}}
  ],

"CheatTestGearEnhancementRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GearCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"CovenantCampOccupancyInfo" => [
    %{name: "__base__", type: {:struct, "FTzHavenOccupancyInfo"}},
    %{name: "CovenantCampChangeCooldownExpireDateTime", type: :FDateTime}
  ],

"DisplayOptionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBaseGameOptionInfo"}},
    %{name: "IsRelatedTerritoryVisibleInWorldMap", type: :unknown},
    %{name: "IsAllianceCovenantVisibleInMiniMap", type: :unknown},
    %{name: "ItemAcquireNotifyAnonymityOption", type: :unknown},
    %{name: "NameTagHealthBarDisplayOptionInfo", type: {:nullable, {:struct, "FTzNameTagHealthBarDisplayOptionInfo"}}},
    %{name: "IsOccupiedStrongholdVisibleInChat", type: :unknown},
    %{name: "IsLivingTotemIconEmphasized", type: :unknown}
  ],

"DiplomacyChatRoomKickCovenantsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "CovenantGuids", type: {:list, {:uint, 8}}}
  ],

"WorldMapMarkerInstallRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "ETzWorldMapMarkerKindType"}},
    %{name: "Location_cm", type: :FVector},
    %{name: "SectorCuid", type: {:struct, "FTzCuid"}}
  ],

"PlayerRealmTransferCheckInfo" => [
    %{name: "Name", type: :FString},
    %{name: "IsInCovenant", type: :unknown},
    %{name: "IsMarketCheckNeeded", type: :unknown},
    %{name: "HasReceivableAttachmentsMail", type: :unknown}
  ],

"CheatResurrectAllFollowerRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerName", type: :FString}
  ],

"FindRegionCrossablePathRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :FVector},
    %{name: "LocationRegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "Destination_cm", type: :FVector},
    %{name: "DestinationRegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"CombatOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombatOptionInfo", type: {:nullable, {:struct, "FTzCombatOptionInfo"}}}
  ],

"RegionContentTimeRechargingItemUseResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "FTzItemGuidSelector"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"HeadPieceDisplayOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsHeadPieceDisplayed", type: :unknown}
  ],

"CheatEnterCovenantCampaignRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PlayerSkillUseStatisticsNxLogInfo" => [
    %{name: "ArquiruneGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SkillKind", type: {:enum, "ETzSkillKindType"}},
    %{name: "SkillUseCount", type: {:uint, 8}},
    %{name: "HitCount", type: {:uint, 8}},
    %{name: "HitDamage", type: {:uint, 8}},
    %{name: "CriticalCount", type: {:uint, 8}},
    %{name: "CriticalDamage", type: {:uint, 8}},
    %{name: "BlockCount", type: {:uint, 8}},
    %{name: "BlockDamage", type: {:uint, 8}},
    %{name: "DodgeCount", type: {:uint, 8}}
  ],

"CheatChangeAmityRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ClanCuid", type: {:struct, "FTzCuid"}},
    %{name: "Amity", type: {:uint, 8}}
  ],

"ErosionNpcSummonWaveSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "NpcSummonWaveStartTime", type: :FDateTime},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"SkillStageFlowCancelNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SkillSiid", type: {:int, 4}},
    %{name: "SkillStageFlowSiid", type: {:int, 4}},
    %{name: "Stage", type: {:int, 2}},
    %{name: "LoopCounter", type: {:int, 4}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "IsCanceledStageAffectApplied", type: :unknown}
  ],

"GatheringSiteFollowerCountNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "WorkingFollowerCount", type: {:int, 4}}
  ],

"CheatTeleportToQuestMissionLocationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"PushNotificationOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ModifiedPushNotificationOptionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ModifiedPushNotificationOptionIsEnabled", type: :unknown}
  ],

"PlayerInventoryInfo" => [
    %{name: "InventoryInfo", type: {:nullable, {:struct, "FTzInventoryInfo"}}},
    %{name: "AdditionalSlotCount", type: {:int, 4}},
    %{name: "AdditionalWeightLimit", type: {:int, 4}}
  ],

"IntraRegionPathResultInfo" => [
    %{name: "RegionCuid", type: {:struct, "FTzCuid"}},
    %{name: "ResultCode", type: {:enum, "ETzResultCodeType"}},
    %{name: "ReturnItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "CovenantReturnHavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "StartWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "DestinationWarpPointCuid", type: {:struct, "FTzCuid"}},
    %{name: "NearestRoadJunctionToStartLocationId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToDestinationId", type: {:int, 4}},
    %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "PathNotByRoad", type: {:list, :vector}},
    %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:int, 4}}}
  ],

"MountDeboardedInfo" => [
    %{name: "__base__", type: {:struct, "FTzMountStateInfo"}},
    %{name: "MountDeboardReason", type: {:enum, "ETzMountDeboardReasonType"}},
    %{name: "IsImmediateMountDespawn", type: :unknown},
    %{name: "MountDespawnLocation", type: :FVector}
  ],

"ItemTransmuteResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ETzItemGradeType"}},
    %{name: "ItemTransmutationResultInfos", type: {:list, {:struct, "ItemTransmutationResultInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "RecordPeriodCuidAndCount", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}}
  ],

"MailStrongholdProtectionRestrictionNoticeLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "RestrictionAnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "RestrictionStartDateTime", type: :FDateTime},
    %{name: "RestrictionEndDateTime", type: :FDateTime}
  ],

"StackableItemInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemInfo"}},
    %{name: "StackCount", type: {:uint, 8}}
  ],

"CheatUpsertGoodsBuyCountResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CovenantStartCampaignRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "CampaignStageCuid", type: {:struct, "FTzCuid"}},
    %{name: "CampaignStartOptionInfo", type: {:nullable, :message}}
  ],

"PowerSavingModeRewardInfo" => [
    %{name: "__base__", type: {:struct, "FTzServerDrivenPlayRewardInfo"}}
  ],

"CovenantUpdateForbiddenAetherBoxCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}}
  ],

"CheatSummonPlayerResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :FString}
  ],

"BasicAchievementPrivateChannelOpenResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "PrivateChannelKeepaliveInterval_sec", type: {:int, 4}}
  ],

"CovenantRealmTransferReadyToRealmTransferRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "UseItem", type: :unknown},
    %{name: "UseCurrency", type: :unknown}
  ],

"BattalionJoinApplicationRejectNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "JoinApplicationRejectReason", type: {:enum, "ETzJoinApplicationRejectReasonType"}}
  ],

"CheatCheckServerTimeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatAddHavenBuildingWorkProgressGaugeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "HavenCuid", type: {:struct, "FTzCuid"}},
    %{name: "AddGauge", type: {:uint, 8}}
  ],

"TerritoryErosionItemConfigurationQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "TerritoryErosionItemConfigurationInfo", type: {:nullable, {:struct, "FTzTerritoryErosionItemConfigurationInfo"}}}
  ],

"ChatRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ChatKind", type: {:enum, "ETzChatKindType"}},
    %{name: "InfoToShare", type: :FString},
    %{name: "Text", type: :FString}
  ],

"CovenantQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuidList", type: {:list, {:uint, 8}}}
  ],

"PlayerLimitedCounterInfo" => [
    %{name: "LimitedCountingInfos", type: {:map, {:enum, "PlayerLimitedCountingKindType"}, {:struct, "TSharedPtr<FTzLimitedCountingInfo"}}}
  ],

"DiplomacyChatRoomNameChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdInfo" => [
    %{name: "__base__", type: {:struct, "FTzHavenOccupancyInfo"}},
    %{name: "HeadquartersLevel", type: {:int, 4}},
    %{name: "FavorBranchLevel", type: {:int, 4}},
    %{name: "CurrentStrongholdTaxInfo", type: {:nullable, {:struct, "FTzStrongholdTaxInfo"}}},
    %{name: "ReservedStrongholdTaxInfo", type: {:nullable, {:struct, "FTzStrongholdTaxInfo"}}},
    %{name: "StrongholdProtectionInfo", type: {:nullable, {:struct, "FTzStrongholdProtectionInfo"}}},
    %{name: "OccupyDateTime", type: :FDateTime},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "ETzStrongholdBattleAttackPhaseType"}}
  ],

"CovenantTradeDealRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "FTzCovenantTradeDealRecordQueryInfo"}}},
    %{name: "GoodsDealInfo", type: {:list, {:struct, "CovenantTradeGoodsDealInfo"}}}
  ],

"CovenantSettleAccountInfo" => [
    %{name: "ResourceHistoryInfos", type: {:map, :datetime, {:struct, "TSharedPtr<FTzResourceHistoryInfo"}}}
  ],

"CheatDetachAllBuffsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CovenantSynchronizeLivingTotemInfoNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantLivingTotemInfo", type: {:nullable, :message}}
  ],

"PvpScoreRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "FTzRankingViewInfo"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Classe", type: {:enum, "ETzClasseType"}},
    %{name: "Name", type: :FString},
    %{name: "CovenantName", type: :FString},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "PvpScore", type: {:int, 4}},
    %{name: "AdditionalSourceInfo", type: {:nullable, :message}}
  ],

"CovenantOrganizationStatsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantOrganizationStatsDetailInfo", type: {:nullable, {:struct, "FTzCovenantOrganizationStatsDetailInfo"}}}
  ],

"FollowerDispatchAbortFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"MarketGoodsDeletedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GoodsGuids", type: :unknown}
  ],

"BattalionChangeOptionRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "FTzBattalionOptionInfo"}}}
  ],

"CheatCovenantRubyShopResetUseResetCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ShopCuid", type: {:struct, "FTzCuid"}}
  ],

"BattalionLeaderChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsAccept", type: :unknown},
    %{name: "TargetPlayerGuid", type: {:uint, 8}}
  ],

"PlayerMarketInfo" => [
    %{name: "WaitingRegistrationOrForSaleGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzMarketSellerGoodsInfo"}}},
    %{name: "SoldOrExpiredGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzMarketSellerGoodsInfo"}}},
    %{name: "TransactionHistories", type: {:list, {:struct, "MarketTransactionInfo"}}},
    %{name: "FavoriteItemInfosByMarketKind", type: {:list, {:struct, "MarketFavoriteItemInfo"}}},
    %{name: "PlayerMarketTransactionProcessInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerMarketTransactionProcessInfo"}}}
  ],

"BattalionTargetLocationUnsetNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "Index", type: {:int, 4}}
  ],

"StrongholdBattleAttackSiegeWeaponSlotInfo" => [
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "SiegeWeaponItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "SiegeWeaponGuid", type: {:uint, 8}},
    %{name: "TargetSpawnerCuid", type: {:struct, "FTzCuid"}}
  ],

"PvpBattleKillDeathCountInfo" => [
    %{name: "PvpBattlePlayerId", type: {:struct, "FTzPvpBattlePlayerId"}},
    %{name: "PvpBattleCovenantId", type: {:struct, "FTzPvpBattleCovenantId"}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "DeathCount", type: {:int, 4}}
  ],

"ServerDrivenPlayRecordsInfo" => [
    %{name: "PlayDay", type: :FDateTime},
    %{name: "HuntingSiteCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayDuration_sec", type: {:int, 4}},
    %{name: "NpcKillCount", type: {:uint, 8}},
    %{name: "GainedExperiencePoints", type: {:uint, 8}},
    %{name: "GainedExperiencePointsFromSpiritualBondPower", type: {:uint, 8}},
    %{name: "GainedGold", type: {:uint, 8}},
    %{name: "GainedGoldFromSpiritualBondPower", type: {:uint, 8}},
    %{name: "GainedItems", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "ConsumedSpiritualBondPower", type: {:uint, 8}},
    %{name: "ConsumedAffectItems", type: {:map, {:enum, "AffectItemKindType"}, {:uint, 8}}}
  ],

"StrongholdBattleBattalionDismissNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}}
  ],

"CheatAcquireCovenantLeaderRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"MailMarkAsImportantResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MailGuid", type: {:uint, 8}}
  ],

"GuiseChangeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "GuiseCuid", type: {:struct, "FTzCuid"}}
  ],

"FieldMigrationReservedNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FieldUid", type: {:struct, "FTzFieldUid"}},
    %{name: "TeleportInfo", type: {:nullable, {:struct, "FTzTeleportInfo"}}},
    %{name: "GameServerConnectionInfo", type: {:nullable, {:struct, "FTzConnectionInfo"}}}
  ],

"CheatPlayerLocationMonitoringDeleteAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"PlayerCurrencyContainerUpdateInfo" => [
    %{name: "PointCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPointCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}}
  ],

"ItemInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Cuid", type: {:struct, "FTzCuid"}},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: :unknown},
    %{name: "ExpireDateTime", type: {:nullable, :FDateTime}},
    %{name: "AcquiredDateTime", type: :FDateTime},
    %{name: "IsLocked", type: :unknown}
  ],

"MonsterBookAnalyzeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CategoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "CostInfo", type: {:nullable, {:struct, "FTzCuidAndCountInfo"}}}
  ],

"CheatDistrictBlockRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsBlocked", type: :unknown}
  ],

"CheatCovenantCompleteCampaignResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatTutorialCompleteAllRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"RealmAccountWarehouseItemRetrieveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseInventoryUpdateInfo", type: {:nullable, {:struct, "FTzInventoryUpdateInfo"}}}
  ],

"RealmIntegrationBattleWarpRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"FollowerAcquireResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "AcquiredFollowerCuid", type: {:struct, "FTzCuid"}}
  ],

"StrongholdTeleportToAltarResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"CheatUnlockContentsRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ETzContentsUnlockKindType"}}
  ],

"MailFollowerDeathLayoutInfo" => [
    %{name: "__base__", type: {:struct, "FTzMailLayoutInfo"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "FTzLocationInfo"}}},
    %{name: "KillerName", type: :FString},
    %{name: "KillerCovenantName", type: :FString},
    %{name: "KillerCovenantEmblemInfo", type: {:nullable, {:struct, "FTzCovenantEmblemInfo"}}},
    %{name: "LootedRewardItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"CovenantCampChangeRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantCampCuid", type: {:struct, "FTzCuid"}}
  ],

"FollowerMovePathInfo" => [
    %{name: "Location", type: :FVector},
    %{name: "StartLocation", type: :FVector},
    %{name: "DestinationLocation", type: :FVector},
    %{name: "RoadJunctionIds", type: {:list, {:int, 4}}},
    %{name: "PathToFirstRoadJunction", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "TargetJunctionNo", type: {:int, 4}}
  ],

"CheatPlayerRealmTransferBlockResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FollowerSquadUpdateRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"ShopCashMerchandiseReceiveResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ReceiveGuidList", type: {:list, {:uint, 8}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "FTzReceivedRewardInfo"}}}
  ],

"SubscriptionCommandRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Channel", type: {:enum, "ETzSubscriptionChannelType"}},
    %{name: "Command", type: {:enum, "ETzSubscriptionCommandType"}},
    %{name: "Parameter", type: {:struct, "FTzCuid"}}
  ],

"CovenantUpdateIntroductionNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Introduction", type: :FString},
    %{name: "HarmfulTextKind", type: {:enum, "ETzHarmfulTextKindType"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"UniverseAccountRealmAccountInfo" => [
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "UniverseAccountPlayerInfos", type: {:list, {:struct, "UniverseAccountPlayerInfo"}}}
  ],

"ItemCategorySelector" => [
    %{name: "__base__", type: {:struct, "FTzMultipleItemSelector"}},
    %{name: "ItemCategory", type: {:enum, "ETzItemCategoryType"}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"ChatQueryEntityInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"ItemAutoUseDeregisterResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "ItemCuid", type: {:struct, "FTzCuid"}}
  ],

"CheatSetExperiencePointsBlockedRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsExperiencePointsBlocked", type: :unknown}
  ],

"NormalDoodadStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "NormalDoodadState", type: {:enum, "ETzNormalDoodadStateType"}}
  ],

"FavoriteStatKindChangeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "StatKind", type: {:enum, "ETzAdjustableStatKindType"}},
    %{name: "IsRegistered", type: :unknown}
  ],

"FollowerItemInfo" => [
    %{name: "__base__", type: {:struct, "FTzStackableItemInfo"}},
    %{name: "FollowerItemAdditionalInfo", type: {:nullable, {:struct, "FTzFollowerItemAdditionalInfo"}}}
  ],

"CovenantDiplomacyJoinAllianceNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :FString}
  ],

"CheatSetCovenantWithdrawalDateTimeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"ErServerSessionInitializeInfo" => [
    %{name: "__base__", type: :unknown},
    %{name: "UtcNow", type: :FDateTime}
  ],

"StrongholdBattleCovenantBattalionInfo" => [
    %{name: "__base__", type: {:struct, "FTzBattalionInfo"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "StrategicObjectiveInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzStrategicObjectiveInfo"}}},
    %{name: "NotJoinedMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzBattalionMemberInfo"}}},
    %{name: "MemberStatisticsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzStrongholdBattleCovenantBattalionMemberStatisticsInfo"}}}
  ],

"MountBoardingRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "IsLeftBoarding", type: :unknown},
    %{name: "DriverFacingDirection", type: :FRotator},
    %{name: "BoardingLocation_cm", type: :FVector},
    %{name: "IsImmediateBoarding", type: :unknown}
  ],

"FavorQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "FavorList", type: {:list, {:struct, "FavorInfo"}}},
    %{name: "FavorMissionList", type: {:list, {:struct, "FavorMissionInfo"}}},
    %{name: "BossChaseGauge", type: {:int, 4}},
    %{name: "TerritoryCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsFavorBossActivated", type: :unknown},
    %{name: "HasAcceptedFavorBossToday", type: :unknown},
    %{name: "DailyAcceptableFavorRemainingCount", type: {:int, 4}},
    %{name: "FavorRefreshCostIndex", type: {:int, 4}}
  ],

"FollowerKillingReportInfo" => [
    %{name: "__base__", type: {:struct, "FTzFollowerKillingInfo"}},
    %{name: "DeathReason", type: {:enum, "ETzFollowerDeathReasonType"}},
    %{name: "KillerEntityGuid", type: {:uint, 8}},
    %{name: "KillerCovenantGuid", type: {:uint, 8}}
  ],

"MonsterBookNodeAnalysisLockSwitchRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "NodeCuid", type: {:struct, "FTzCuid"}},
    %{name: "IsAnalysisLocked", type: :unknown}
  ],

"HandshakeResult" => [
    %{name: "Success", type: :unknown}
  ],

"PlayerServerDrivenPlayInfo" => [
    %{name: "RemainingDailyDuration_sec", type: {:int, 4}},
    %{name: "ServerDrivenPlayInfo", type: {:nullable, {:struct, "FTzServerDrivenPlayInfo"}}}
  ],

"CheatNoticeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdSummonWaveDefenseStartNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdSummonWaveDefenseCuid", type: {:struct, "FTzCuid"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "StrongholdSummonWaveDefenseStartDateTime", type: :FDateTime}
  ],

"GearAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FTzItemAdditionalInfo"}},
    %{name: "GearQuality", type: {:enum, "ETzGearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "IsEroded", type: :unknown},
    %{name: "GearEnchantGrade", type: {:enum, "ETzGearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}},
    %{name: "GearSubOptionInfos", type: {:list, {:struct, "GearSubOptionInfo"}}},
    %{name: "SpecialGearEnhancementUseInfoByCuid", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSpecialGearEnhancementUseInfo"}}},
    %{name: "ErodedCountByEnhancementGrade", type: {:map, {:int, 2}, {:int, 4}}}
  ],

"PlayerLocationMonitoringRegisterRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}}
  ],

"MountUpdateSkillSlotInfoRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MountSkillSlotIndex", type: {:enum, "ETzMountSkillSlotIndexType"}},
    %{name: "IsUsedForContinuousCombat", type: :unknown}
  ],

"StrongholdBattleUseSiegeWeaponSlotNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}},
    %{name: "DeploymentKind", type: {:enum, "ETzStrongholdBattleDeploymentKindType"}},
    %{name: "StrongholdBattleAttackSiegeWeaponSlotInfo", type: {:nullable, :message}},
    %{name: "SiegeWeaponCounts", type: {:map, :cuid, {:uint, 8}}}
  ],

"CovenantCurrencyDonationResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "FTzCombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "FTzPlayerCurrencyContainerUpdateInfo"}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:nullable, {:struct, "FTzItemAddInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :unknown},
    %{name: "CovenantCurrencyUpdateInfo", type: {:nullable, {:struct, "FTzPointCurrencyContainerUpdateInfo"}}},
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "MultipleReward", type: {:int, 4}}
  ],

"CovenantRealmTransferCheckInfo" => [
    %{name: "CovenantTradeGoodsSalesInfos", type: {:list, {:struct, "CovenantTradeGoodsSalesInfo"}}},
    %{name: "HasRegisteredShopGoodsInCovenantShop", type: :unknown},
    %{name: "HasRegisteredShopGoodsInGeneralShop", type: :unknown},
    %{name: "HasJoinedStrongholdBattle", type: :unknown},
    %{name: "HasJoinedExpedition", type: :unknown}
  ],

"CheckIsInCovenantRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmCuid", type: {:struct, "FTzCuid"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AnniversaryStrongholdOccupationRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "AnniversaryCuid", type: {:struct, "FTzCuid"}},
    %{name: "AnniversaryBeginDateTime", type: :FDateTime},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"CovenantTradeGoodsListQueryResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "FTzCovenantTradeGoodsQueryInfo"}}},
    %{name: "GoodsInfos", type: {:list, {:struct, "CovenantTradeGoodsInfo"}}}
  ],

"CovenantAcquireCovenantMemberRoleRewardRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"InstanceEventCompleteNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "EventCuid", type: {:struct, "FTzCuid"}}
  ],

"CrossRealmCovenantDiplomacyWithdrawAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"FactionSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzEntitySynchronizeMessage"}},
    %{name: "Faction", type: {:enum, "ETzFactionType"}}
  ],

"RealmInfoPubSubChannelInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelInitialDataNotify"}},
    %{name: "RealmInfo", type: {:nullable, {:struct, "FTzRealmInfo"}}}
  ],

"PubSubChannelDataNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "Channel", type: {:enum, "ETzSubscriptionChannelType"}},
    %{name: "Parameter", type: {:nullable, {:struct, "FTzCuid"}}}
  ],

"CheatDeactivateArquiruneRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "ArquiruneCuid", type: {:struct, "FTzCuid"}}
  ],

"RealmAccountRealmTransferLimitedItemCountRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "RealmTransferKind", type: {:enum, "ETzRealmTransferKindType"}}
  ],

"PlayerMarketSaleGoodsListRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}}
  ],

"CheatAbandonStrongholdRequest" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "StrongholdCuid", type: {:struct, "FTzCuid"}}
  ],

"PartyTargetLocationSetFailResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}}
  ],

"RewardItemIndexWithCount" => [
    %{name: "__base__", type: {:struct, "FTzItemIndexWithCount"}},
    %{name: "IsCovenantReward", type: :unknown},
    %{name: "ItemAdditionalInfo", type: {:nullable, {:struct, "FTzItemCreateAdditionalInfo"}}}
  ],

"FollowerMovePathInfoResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "MovePathInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzFollowerMovePathInfo"}}}
  ],

"CheatTestGearEnchantGradeResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessageWithResultCode"}},
    %{name: "CostItemCuid", type: {:struct, "FTzCuid"}},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "UpgradeCounts", type: {:map, {:enum, "GearEnchantGradeType"}, {:int, 4}}}
  ],

"PlayerCovenantWatchSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "CovenantGuids", type: :unknown}
  ],

"InventoryOverflowInfo" => [
    %{name: "OverflowedItemInfoList", type: {:list, {:struct, "ItemInfo"}}}
  ],

"InteractableDoodadInfo" => [
    %{name: "__base__", type: {:struct, "FTzDoodadInfo"}},
    %{name: "RemainingInteractionCompleteCount", type: {:int, 4}}
  ],

"WorldMapPvpBattleDisplayKindUpdateNotify" => [
    %{name: "__base__", type: {:struct, "FTzPubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: {:struct, "FTzCuid"}},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "PvpBattleDisplayKind", type: {:enum, "ETzPvpBattleDisplayKindType"}}
  ],

"CheatDeregisterCheatEnabledPlayerNameResponse" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CheatEnabledPlayerNames", type: :unknown}
  ],

"SkillStageFlowNotify" => [
    %{name: "__base__", type: {:struct, "FTzErTozMessage"}},
    %{name: "SkillCuid", type: {:struct, "FTzCuid"}},
    %{name: "SkillSiid", type: {:int, 4}},
    %{name: "SkillStageFlowSiid", type: {:int, 4}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SubTargetingLocations_cm", type: {:list, :vector}},
    %{name: "AffectExemptLocations_cm", type: {:list, {:struct, "FVector2D"}}},
    %{name: "SkillStageInfos", type: {:list, {:struct, "SkillStageInfo"}}},
    %{name: "ServerUtcNow", type: :FDateTime}
  ]
}