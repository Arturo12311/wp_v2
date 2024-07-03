%{
  "CovenantCurrencyInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyInfo", type: {:nullable, {:struct, "CovenantCurrencyInfo"}}}
  ],

"StrongholdBattleEnterStrongholdAreaNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "StandByEndDateTime", type: :datetime}
  ],

"WpcInfo" => [
    %{name: "BillingId", type: :string},
    %{name: "CharacterIdForHistory", type: :string},
    %{name: "ProductType", type: {:int, 4}},
    %{name: "CoinType", type: :string}
  ],

"PlayerCampaignTicketInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CampaignTicketInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCampaignTicketInfo"}}}
  ],

"SpawnLayerDeactivateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsPermanentSpawnLayer", type: :bool},
    %{name: "SpawnLayerCuid", type: :cuid}
  ],

"CheatCancelStrongholdProtectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"PlayerCovenantWatchRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"BuffStatsInfo" => [
    %{name: "Duration", type: {:struct, "FTimespan"}},
    %{name: "Interval_msec", type: {:int, 4}},
    %{name: "IsImmuneToHealthPointsLoss", type: :bool},
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
    %{name: "ProtectHealthPointsSettingStatKind", type: {:enum, "AdjustableStatKindType"}},
    %{name: "ProtectHealthPointsSettingRatio", type: :float},
    %{name: "ProtectHealthPointsSettingAmount", type: {:int, 4}}
  ],

"SendDiplomacyChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "SendChatMessageRequest"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"TargetLocationInfo" => [
    %{name: "Index", type: {:int, 4}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CheatPaidAttendanceAddAttendanceCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: :cuid},
    %{name: "AddAttendanceCount", type: {:int, 4}}
  ],

"CrossRealmCovenantDiplomacyWithdrawHostilityResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatAcceptQuestResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "QuestsInfo"}}}
  ],

"MarketSellWithdrawResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"AchievementSourceInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"TerritoryErosionRemoveNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ErosionGuid", type: {:uint, 8}}
  ],

"CrossRealmCovenantDiplomacyConfirmAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"PowerSavingModeLootNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RewardInfo", type: {:nullable, {:struct, "PowerSavingModeRewardInfo"}}}
  ],

"OneShotSpecialMoveDoodadInfo" => [
    %{name: "__base__", type: {:struct, "InteractableDoodadInfo"}}
  ],

"FollowerDispatchOrderInfo" => [
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "UseDispatchAutomation", type: :bool}
  ],

"CheatBatchBossSpawnTimeRollbackRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatRealmIntegrationPreprocessingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SeasonPassAchievementRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassCuid", type: :cuid},
    %{name: "SeasonPassAchievementGroupCuid", type: :cuid},
    %{name: "AchievementCuid", type: :cuid}
  ],

"EquipmentPresetInfo" => [
    %{name: "GuiseCuid", type: :cuid},
    %{name: "MountItemCuid", type: :cuid},
    %{name: "GearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}}
  ],

"BattalionBattalionWarpRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"WorldMapMarkerEditSettingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :string}
  ],

"InstanceFieldLeaveExpireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpireTargetTime", type: :datetime}
  ],

"CovenantBattalionQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SummaryInfoList", type: {:list, {:struct, "BattalionSummaryInfo"}}}
  ],

"DestroyerInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DestroyerInfo", type: {:nullable, :message}}
  ],

"MonsterBookNodeAcquireRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "IsAcquireByItem", type: :bool}
  ],

"PartySynchronizeMemberCharacterStateNotify" => [
    %{name: "__base__", type: {:struct, "PartySynchronizeMemberNotify"}},
    %{name: "State", type: {:enum, "CharacterStateType"}}
  ],

"ServerDrivenPlayEndedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string},
    %{name: "RewardInfo", type: {:nullable, :message}}
  ],

"CheatResetAetherOptionByCategoryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuid", type: :cuid}
  ],

"CovenantJoinedStrongholdCampaignBattleInfo" => [
    %{name: "__base__", type: {:struct, "CovenantJoinedStrongholdBattleInfo"}}
  ],

"CovenantSynchronizeMemberPartyGuidNotify" => [
    %{name: "__base__", type: {:struct, "CovenantSynchronizeMemberNotify"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"ClasseChangeItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "BeforeGearGuidToAfterGearCuids", type: {:map, {:uint, 8}, :cuid}},
    %{name: "BeforeArquiruneCuidToAfterArquiruneCuids", type: {:map, :cuid, :cuid}}
  ],

"TozTcpHello" => [
    %{name: "EngineData", type: :unknown},
    %{name: "UserData", type: :unknown}
  ],

"ChatMessageNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatMessageInfos", type: {:list, {:struct, "ChatMessageInfo"}}}
  ],

"UniverseAccountLogoutRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LogMessage", type: :string}
  ],

"MountDeboardingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantSynchronizeHavenOrganizationStatsNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "HavenOrganizationStatsDetailInfo", type: {:nullable, {:struct, "HavenOrganizationStatsDetailInfo"}}}
  ],

"CheatTeleportToNpcResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "NpcCuid", type: :cuid}
  ],

"CheatExpeditionExecuteNextWaveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MonsterBookInfo" => [
    %{name: "CategoryCuidToNodeStateInfos", type: {:list, {:struct, "MonsterBookNodeStateInfo"}}},
    %{name: "CategoryCuidToCollectionInfo", type: {:map, :cuid, {:struct, "TSharedPtr<FTzMonsterBookCollectionInfo"}}},
    %{name: "CategoryCuidToFreeAnalysisCount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CategoryCuidToAnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"CheatPlayerRealmTransferBlockRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ApplyAll", type: :bool},
    %{name: "Block", type: :bool}
  ],

"CheatKillSurroundingCharactersResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerDeleteReserveCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"GearEnchantRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "CostItemGuid", type: {:uint, 8}}
  ],

"ShopShoppingModeKickoutNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "Reason", type: {:enum, "ShopKickoutReasonType"}}
  ],

"CrossRealmSeasonInfo" => [
    %{name: "SeasonCuid", type: :cuid},
    %{name: "RegionContentKind", type: {:enum, "RegionContentKindType"}},
    %{name: "IsUnderMaintenance", type: :bool},
    %{name: "PreseasonStartUtcDateTime", type: :datetime},
    %{name: "StartUtcDateTime", type: :datetime},
    %{name: "EndUtcDateTime", type: :datetime},
    %{name: "PostseasonEndUtcDateTime", type: :datetime},
    %{name: "MatchingGroupNameTextCuid", type: :cuid},
    %{name: "MatchedRealmCuids", type: :unknown},
    %{name: "SeasonInfoPageUrl", type: :string}
  ],

"CheatSetLoggingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ErLogTag", type: :string},
    %{name: "IsLogging", type: :bool}
  ],

"ItemBoundAndErodedSelector" => [
    %{name: "__base__", type: {:struct, "MultipleItemSelector"}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "IsBound", type: :bool},
    %{name: "IsStorable", type: :unknown},
    %{name: "IsEroded", type: :unknown},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"MerchandiseBuyCountInfo" => [
    %{name: "SubCategoryCuid", type: :cuid},
    %{name: "MerchandiseCuid", type: :cuid},
    %{name: "BuyOrCraftLimitLevel", type: {:enum, "BuyOrCraftLimitLevelType"}},
    %{name: "Count", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"BattalionCovenantDiplomacyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AllianceCovenantGuids", type: :unknown}
  ],

"AnniversaryAchievementPrivateChannelCloseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BuildingConstructRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "BuildingLevelToConstruct", type: {:int, 4}}
  ],

"CheatClearCovenantWarehouseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PvpBattleKillDeathInfo" => [
    %{name: "VictimPvpBattlePlayerId", type: {:struct, "PvpBattlePlayerId"}},
    %{name: "VictimPvpBattleCovenantId", type: {:struct, "PvpBattleCovenantId"}},
    %{name: "KillerPvpBattlePlayerId", type: {:struct, "PvpBattlePlayerId"}},
    %{name: "KillerPvpBattleCovenantId", type: {:struct, "PvpBattleCovenantId"}},
    %{name: "DateTime", type: :datetime},
    %{name: "DeathLocation_cm", type: :vector}
  ],

"MarketFavoriteItemInfo" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "RegisterDateTime", type: :datetime}
  ],

"CheatChangeServerDrivenPlayRemainingDurationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RemainingDuration_sec", type: {:int, 4}}
  ],

"CastAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "AffectSourceInfo"}}
  ],

"CheatMonsterBookSetFreeAnalysisCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "FreeAnalysisCount", type: {:int, 4}}
  ],

"MarketTransactionInfo" => [
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "MarketTransactionKind", type: {:enum, "MarketTransactionKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "ItemStackCount", type: {:int, 4}},
    %{name: "ItemAdditionalInfo", type: {:nullable, :message}},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyAmount", type: {:uint, 8}},
    %{name: "SettledCurrencyAmount", type: {:uint, 8}},
    %{name: "TransactionDateTime", type: :datetime}
  ],

"CharacterMoveCurvedToLocationParameterInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveToLocationParameterInfo"}},
    %{name: "IntermediateLocation_cm", type: :vector}
  ],

"AccelerationUseFollowerWorkRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "AccelerationActionKind", type: {:enum, "AccelerationActionKindType"}},
    %{name: "CuidAndCountInfo", type: {:nullable, {:struct, "CuidAndCountInfo"}}}
  ],

"AnniversaryAchievementInfo" => [
    %{name: "__base__", type: {:struct, "AchievementInfo"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :datetime},
    %{name: "AnniversaryAchievementCycleEndDateTime", type: :datetime},
    %{name: "AnniversaryAchievementBeginDateTime", type: :datetime},
    %{name: "AnniversaryAchievementEndDateTime", type: :datetime}
  ],

"NpcInfo" => [
    %{name: "__base__", type: {:struct, "CharacterInfo"}},
    %{name: "NpcCuid", type: :cuid},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "MovePatternCuid", type: :cuid},
    %{name: "AffiliatedBuildingGuid", type: {:uint, 8}},
    %{name: "AffiliatedBuildingCuid", type: :cuid},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "SummonerGuid", type: {:uint, 8}},
    %{name: "FactionProxyInfo", type: {:nullable, {:struct, "FactionProxyInfo"}}},
    %{name: "NpcBossChaseGrade", type: {:int, 4}},
    %{name: "JoinedExpeditionGuid", type: {:uint, 8}},
    %{name: "AffiliatedBattalionGuid", type: {:uint, 8}},
    %{name: "IsInSeekHidingAttackTargetState", type: :bool},
    %{name: "AttackerPlayerGuids", type: :unknown}
  ],

"CrossRealmSeasonRealmIntegrationBattleEntryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "CrossRealmSeasonEntryUpdateDataNotify"}},
    %{name: "PlayerCount", type: {:int, 4}}
  ],

"CovenantBuildingWorkInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "BuildingWorkInfo"}}}
  ],

"ShopBuyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "RegisteredGoodsGuidToCounts", type: {:map, {:uint, 8}, {:uint, 8}}},
    %{name: "SystemGoodsCuidToCounts", type: {:map, :cuid, {:uint, 8}}},
    %{name: "MostExpensiveGoodsItemIndex", type: {:nullable, :message}}
  ],

"RealmIntegrationCancelRealmAccountDeletionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"CovenantDonationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CovenantWarehouseItemAddInfo", type: {:nullable, {:struct, "ItemAddInfo"}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:nullable, {:struct, "ItemAddInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :bool},
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"PartyConfirmInvitationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "IsApproved", type: :bool}
  ],

"AccountAffectDetachNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AccountAffectGuid", type: {:uint, 8}}
  ],

"StrongholdSummaryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "OccupyingCovenantVuid", type: {:struct, "Vuid"}},
    %{name: "OccupyingCovenantName", type: :string},
    %{name: "OccupyingCovenantLevel", type: {:int, 4}},
    %{name: "OccupyingCovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "BuildingSubscriptionSummaryInfos", type: {:list, {:struct, "BuildingSubscriptionSummaryInfo"}}}
  ],

"CovenantRegisteredGoodsRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "ItemGuidSelector"}}},
    %{name: "SellCurrencyCuid", type: :cuid},
    %{name: "SellPrice", type: {:int, 4}},
    %{name: "GoodsBuyLimitCount", type: {:nullable, {:uint, 8}}}
  ],

"ItemIndexWithCount" => [
    %{name: "__base__", type: {:struct, "ItemIndex"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"CovenantLivingTotemStatsInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "LivingTotemCuid", type: {:nullable, {:struct, "Cuid"}}},
    %{name: "LivingTotemRole", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x29));uVar7=local_198&0xff;}uVar1=local_190;pcVar3=local_188;if((uVar7&1)==0){uVar1=uVar7>>1;pcVar3=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "LivingTotemTier", type: {:nullable, {:int, 4}}}
  ],

"ContentsUnlockNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ContentsUnlockKinds", type: :unknown}
  ],

"CovenantGiftInfo" => [
    %{name: "SpecialGiftBoxCuid", type: :cuid},
    %{name: "SpecialGiftBoxPoints", type: {:int, 4}},
    %{name: "CovenantGiftExperiencePoints", type: {:uint, 8}}
  ],

"SessionInitializeInfo" => [
    %{name: "unknown_name", type: :unknown}
  ],

"MailAttachmentCurrencyInfo" => [
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"RealmIntegrationBattleScoreInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "ScoreInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzRealmIntegrationBattleRealmScoreInfo"}}}
  ],

"SkillReplaceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BeforeSkillCuid", type: :cuid},
    %{name: "AfterSkillCuid", type: :cuid}
  ],

"SquadSharedAttackTargetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}}
  ],

"CovenantDiplomacyInfos" => [
    %{name: "RequestInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantDiplomacyInfo"}}},
    %{name: "ResponseInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantDiplomacyInfo"}}}
  ],

"CheatCastVeilRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid}
  ],

"CheatFinishFollowerWorkResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"InventoryOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InventoryOptionInfo", type: {:nullable, {:struct, "InventoryOptionInfo"}}}
  ],

"ChatServerLoginResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ChatServerIp", type: :string},
    %{name: "ChatServerPort", type: {:int, 4}},
    %{name: "ChatServerAuthenticateKey", type: {:int, 4}}
  ],

"NgsNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Data", type: {:list, {:struct, "unsigned_char"}}}
  ],

"PartyTargetLocationSetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "TargetLocationInfo"}}}
  ],

"OccupiableNpcRandomBuffStateUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "IsRandomBuffNpc", type: :bool},
    %{name: "NxLogBaseParameterInfo", type: {:nullable, :message}}
  ],

"CheatChangeStrongholdTaxRateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "TaxInfo", type: {:nullable, {:struct, "TaxInfo"}}}
  ],

"CheatApplyCovenantResearchSetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"QuestCinePlayingSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "IsQuestCinePlaying", type: :bool}
  ],

"CovenantCurrencyInfo" => [
    %{name: "PointCurrencyContainerInfo", type: {:map, :cuid, {:uint, 8}}}
  ],

"FollowerMovePathInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuids", type: {:list, {:uint, 8}}}
  ],

"CheatStrongholdBattleCarriageLivingTotemTeleportToPlayerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FavorBossQuestAllAcceptRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RedrawableItemInventoryUpdateInfo" => [
    %{name: "AddedRedrawableItemInfoList", type: {:list, {:struct, "RedrawableItemInfo"}}},
    %{name: "RemovedRedrawableItemGuidList", type: {:list, {:uint, 8}}}
  ],

"StrongholdBattleAttackSpireStartNotify" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackPhaseStartNotify"}}
  ],

"StrongholdBattleTeleportToSpireRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpireWarpNpcGuid", type: {:uint, 8}},
    %{name: "RequestSpireCuid", type: :cuid}
  ],

"BossSpawnInfoUpdatedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "BossSpawnInfo", type: {:nullable, :message}}
  ],

"CheatChangeServerTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Time", type: :string}
  ],

"BattalionInviteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"CheatSetEnvironmentVariableRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Name", type: :string},
    %{name: "Value", type: :string}
  ],

"CheatMonsterBookSetNodeLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "NodeStateInfo", type: {:nullable, {:struct, "MonsterBookNodeAcquiredStateInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "MonsterBookCollectionInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"ServerDrivenPlayStartResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ServerDrivenPlayInfo", type: {:nullable, {:struct, "ServerDrivenPlayInfo"}}},
    %{name: "LastPlayerInteractionDateTime", type: :datetime}
  ],

"StrongholdReserveProtectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "Hour", type: {:int, 4}},
    %{name: "Minute", type: {:int, 4}}
  ],

"ChatRoomRecordsInitializationInfo" => [
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChannelIndex", type: {:struct, "unsigned_short"}},
    %{name: "ChatRecordsMetaData", type: {:nullable, {:struct, "ChatRecordsMetaData"}}},
    %{name: "FirstRecordIndex", type: {:uint, 8}},
    %{name: "LastRecordIndex", type: {:uint, 8}},
    %{name: "ChatMessageInfos", type: {:list, {:struct, "ChatMessageInfo"}}}
  ],

"CheatClearCollectionByCollectionCategoryCuidFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantTradeSalesListQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatStartOccupiableNpcBossBattleResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveSetFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerDeleteConditionCheckResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsPlayerDeleteBlockingLevel", type: :bool},
    %{name: "IsInCovenant", type: :unknown},
    %{name: "HasSaleGoodsInMarket", type: :unknown}
  ],

"ExpeditionNpcSummonWaveStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Info", type: {:nullable, {:struct, "ExpeditionNpcSummonWaveInfo"}}}
  ],

"SharedTargetPlayerInfo" => [
    %{name: "__base__", type: {:struct, "SharedTargetCharacterInfo"}},
    %{name: "Name", type: :string},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"SeekHidingAttackTargetStateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "IsSeekHidingAttackTargetState", type: :bool}
  ],

"CovenantDiplomacyWithdrawAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ExpeditionJoinedBattalionsAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "CovenantBattalionPublicSummaryInfo", type: {:nullable, :message}}
  ],

"PartyAppointLeaderFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"ProtocolCheckHandshakeResult" => [
    %{name: "__base__", type: {:struct, "HandshakeResult"}},
    %{name: "ClientHash", type: :unknown}
  ],

"CovenantUpdateNoticeFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"NameTagHealthBarDisplayOptionInfo" => [
    %{name: "IsOwnUniformDisplayedInStrongholdBattle", type: :bool},
    %{name: "IsDisplayModeAutoSelect", type: :unknown},
    %{name: "DisplayMode", type: {:enum, "NameTagHealthBarDisplayModeType"}},
    %{name: "DetailInfos", type: {:map, {:enum, "NameTagHealthBarDisplayModeType"}, {:struct, "TSharedPtr<FTzNameTagHealthBarDisplayOptionDetailInfo"}}},
    %{name: "NpcHealthBarDisplayScope", type: {:enum, "NpcHealthBarDisplayScopeType"}},
    %{name: "IsAllNpcNamesDisplayed", type: :unknown},
    %{name: "IsDisplayedFissionStatusFriendlyOrBetter", type: :unknown}
  ],

"CovenantUpdateCovenantPermissionsInfosRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantPermissionsInfos", type: {:map, :string, {:struct, "TSharedPtr<FTzCovenantPermissionsInfo"}}}
  ],

"PlayerDeleteReserveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "ReservedDeleteDateTime", type: {:nullable, :datetime}}
  ],

"StrongholdBuildingUpdateBuildingAccessPermissionsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingAccessPermissionKinds", type: {:map, :cuid, {:enum, "BuildingAccessPermissionKindType"}}}
  ],

"PowerSavingModeEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"TeaseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatClearEquippedSpellstonesResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"TutorialCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"TimeTriggerWorldActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"ServerDrivenPlayAppCloseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatAcquireCovenantLeaderResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantDiplomacyConfirmAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeRecommendedResourceKindNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}}
  ],

"CovenantUpdateCovenantMemberRoleNameFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ReinforcementInfo" => [
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "IsInBattle", type: :bool},
    %{name: "RewardCurrencies", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CreateDateTime", type: :datetime}
  ],

"PlayerBattalionOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "PurposeTexts", type: {:map, {:int, 4}, :string}}
  ],

"CheatUpdatePlayerMissionRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CovenantCampBuildingCraftCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingCraftCuid", type: :cuid}
  ],

"CovenantDiplomacyWithdrawHostilityNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"DestroyerEnterDistrictNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "DistrictCuid", type: :cuid}
  ],

"NpcOccupationScoreCovenantInfo" => [
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "MemberCounts", type: {:int, 4}},
    %{name: "OccupationScore", type: {:int, 4}},
    %{name: "FirstGainedScoreDateTime", type: :datetime}
  ],

"LimitedCountingInfo" => [
    %{name: "CountingValue", type: {:uint, 8}},
    %{name: "LastCountingDateTime", type: :datetime}
  ],

"CheatSpawnDoodadRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DoodadSpawnerCuid", type: :cuid},
    %{name: "Count", type: {:int, 4}}
  ],

"CovenantGiftReceiveRewardInfo" => [
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"CovenantTradeGoodsGuidWithItemCuidInfo" => [
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: :cuid}
  ],

"CharacterMoveToInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveInfo"}},
    %{name: "CurrentFacingDirectionYaw_rad", type: :float},
    %{name: "MoveKind", type: {:enum, "MoveKindType"}}
  ],

"CovenantTradeGoodsInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "ItemIndexWithCount", type: {:nullable, :message}},
    %{name: "SalesPrice", type: {:uint, 8}},
    %{name: "SellerInfo", type: {:nullable, :message}},
    %{name: "RegistrationDateTime", type: :datetime}
  ],

"CovenantOccupyStrongholdNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdInfo", type: {:nullable, {:struct, "StrongholdInfo"}}}
  ],

"MailDeleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "MailBoxKindType"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}}
  ],

"CheatSetArquiAttunementLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiAttunementCuid", type: :cuid},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"BoundAndErodedInheritanceBatchCraftResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}},
    %{name: "CraftResultInfos", type: {:list, {:struct, "CraftResultInfo"}}},
    %{name: "CraftCountInfo", type: {:nullable, {:struct, "CraftCountInfo"}}}
  ],

"InstanceEventNpcActionStartNotify" => [
    %{name: "__base__", type: {:struct, "InstanceEventActionStartNotify"}},
    %{name: "NpcGuid", type: {:uint, 8}}
  ],

"ErLoginServerReauthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErLoginServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"BattalionConfirmInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}},
    %{name: "BattalionInvitationInfo", type: {:nullable, {:struct, "BattalionInvitationInfo"}}},
    %{name: "BattalionInvitationAdditionalInfo", type: {:nullable, {:struct, "BattalionInvitationAdditionalInfo"}}}
  ],

"CheatSetRealmAccountPresentRegisterBlockRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Block", type: :bool}
  ],

"VolatileInGameNotificationInfo" => [
    %{name: "__base__", type: {:struct, "InGameNotificationInfo"}}
  ],

"AutoBuyInfo" => [
    %{name: "GoodsCuid", type: :cuid},
    %{name: "Count", type: {:int, 4}}
  ],

"SeasonPassQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SeasonPassInfo", type: {:nullable, {:struct, "SeasonPassInfo"}}},
    %{name: "SeasonPassAchievementInfos", type: {:list, {:struct, "SeasonPassAchievementInfo"}}}
  ],

"PvpRecordPlayerInfo" => [
    %{name: "__base__", type: {:struct, "PvpRecordCharacterInfo"}},
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "PvpScore", type: {:uint, 8}},
    %{name: "PvpScoreDelta", type: {:uint, 8}}
  ],

"BuildingCraftRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}},
    %{name: "BuildingCraftCuid", type: :cuid},
    %{name: "BuildingCraftCount", type: {:uint, 8}}
  ],

"CheatChangeCovenantLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"StrongholdBattleAttackStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "AttackEndDateTime", type: :datetime}
  ],

"CheatAttachBuffRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuffCuid", type: :cuid},
    %{name: "StackCount", type: {:int, 4}}
  ],

"CheatAcquireFollowerSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerSetCuid", type: :cuid},
    %{name: "CountPerEach", type: {:uint, 8}}
  ],

"QuestCancelRecordInfo" => [
    %{name: "Count", type: {:int, 4}},
    %{name: "LastCancelDateTime", type: :datetime}
  ],

"OccupiableNpcOccupationCovenantInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "NxLogBaseParameterInfo", type: {:nullable, :message}}
  ],

"CovenantRecommendResourceKindRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}}
  ],

"RedrawableItemSelectResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"RealmIntegrationSelectRealmAccountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "RealmAccountInfo", type: {:nullable, {:struct, "RealmAccountInfo"}}},
    %{name: "PlayerSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerSummaryInfo"}}},
    %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
    %{name: "CanCheatCommand", type: :bool},
    %{name: "RealmIntegrationRealmAccountInfos", type: {:list, {:struct, "RealmIntegrationRealmAccountInfo"}}}
  ],

"CheatMonsterBookSetFreeAnalysisCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "FreeAnalysisCount", type: {:uint, 8}}
  ],

"FindClosestLocationOnNavMeshRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CheatCastVeilResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantJoinedStrongholdBattleInfoAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "JoinedStrongholdBattleInfos", type: {:list, {:struct, "CovenantJoinedStrongholdBattleInfo"}}}
  ],

"CheatAcquireAllCovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ZlibCompressHandshakeMessage" => [
    %{name: "Level", type: {:int, 4}},
    %{name: "MinimumCompressibleLength", type: {:int, 4}}
  ],

"WarpReturnRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WarpHelperGuid", type: {:uint, 8}}
  ],

"CheatAddCovenantGiftLevelExperiencePointsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AddCovenantGiftLevelExperiencePoints", type: {:uint, 8}}
  ],

"CovenantDiplomacyRejectAllianceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatApplyCollectionSetFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PvpBattleCovenantInfo" => [
    %{name: "PvpBattleCovenantId", type: {:struct, "PvpBattleCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"CheatChangeSeasonPassLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}}
  ],

"StrongholdBattleGroupInfo" => [
    %{name: "CovenantVuid", type: {:struct, "Vuid"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantCreateDateTime", type: :datetime},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "AetherBoxCount", type: {:int, 4}},
    %{name: "MaxAetherBoxCount", type: {:int, 4}},
    %{name: "TacticalSkillBadgeCount", type: {:int, 4}},
    %{name: "MaxTacticalSkillBadgeCount", type: {:int, 4}},
    %{name: "NextResurrectTime", type: :datetime},
    %{name: "MemberCount", type: {:int, 4}},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "LivingTotemCuid", type: :cuid}
  ],

"CovenantUpdateNameNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantName", type: :string},
    %{name: "NeedChangeName", type: :bool}
  ],

"SkillShieldWallAffectInfo" => [
    %{name: "__base__", type: {:struct, "SkillAffectInfo"}},
    %{name: "AffectTargetGuid", type: {:uint, 8}},
    %{name: "AffectSourceGuid", type: {:uint, 8}},
    %{name: "ShieldWallGuid", type: {:uint, 8}},
    %{name: "OriginalAffectTargetGuid", type: {:uint, 8}},
    %{name: "IsHit", type: :bool},
    %{name: "IsAffectingTargetStats", type: :bool}
  ],

"CheatAddRegionContentBasePlayTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantItemDeleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}}
  ],

"CheatRankingBuffApplySwitchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsApplied", type: :bool}
  ],

"HavenEventRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "HavenEventCuid", type: :cuid}
  ],

"RankingQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid},
    %{name: "RoundNumber", type: {:nullable, {:int, 4}}},
    %{name: "RankingUpperBound", type: {:int, 4}},
    %{name: "RankingLowerBound", type: {:int, 4}}
  ],

"CovenantJoinAtFrontNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleInfo", type: {:nullable, :message}}
  ],

"CovenantDiplomacyDeclareHostilityFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FinishableSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "FinishableExpireDateTime", type: {:nullable, :datetime}}
  ],

"CovenantDiplomacyCancelAllianceApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CovenantWorldMapMarkerAddNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "WorldMapMarkerInfo", type: {:nullable, {:struct, "WorldMapMarkerInfo"}}}
  ],

"StrongholdBattleSiegeWeaponLocationInfo" => [
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "NpcCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"ClanSelectionQuestAcceptRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestCuid", type: :cuid}
  ],

"BattalionMemberInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "BattalionMemberCoreInfo"}}},
    %{name: "AdditionalInfo", type: {:nullable, {:struct, "BattalionMemberAdditionalInfo"}}}
  ],

"NpcOccupationViewInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "NpcOccupationViewInfo", type: {:nullable, {:struct, "NpcOccupationViewInfo"}}}
  ],

"CombinedInventoryUpdateInfo" => [
    %{name: "InventoryUpdateInfosByInventoryKind", type: {:map, {:enum, "UserInventoryKindType"}, {:struct, "TSharedPtr<FTzInventoryUpdateInfo"}}},
    %{name: "RedrawableInventoryUpdateInfosByItemCategory", type: {:map, {:enum, "ItemCategoryType"}, {:struct, "TSharedPtr<FTzRedrawableItemInventoryUpdateInfo"}}}
  ],

"RealmAccountLoginResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FrontServerConnectionInfo", type: {:nullable, {:struct, "ConnectionInfo"}}}
  ],

"CovenantUpdateOutLinkFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CrossRealmRankingQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RankingTopicCuid", type: :cuid},
    %{name: "DateTime", type: {:nullable, :datetime}},
    %{name: "RankingInfos", type: {:list, {:struct, "RankingInfo"}}}
  ],

"CovenantCancelInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuids", type: {:list, {:uint, 8}}}
  ],

"FollowerExperiencePointsItemConsumeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MonsterBookNodeAcquirableStateInfo" => [
    %{name: "__base__", type: {:struct, "MonsterBookNodeStateInfo"}},
    %{name: "NpcCuidToKillCount", type: {:map, :cuid, {:int, 4}}}
  ],

"BattalionCreateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}}
  ],

"PlayerInterServerMigrationInfo" => [
    %{name: "SourceServerKey", type: {:struct, "unsigned_short"}},
    %{name: "DestinationServerKey", type: {:struct, "unsigned_short"}},
    %{name: "GameServerAuthenticateKey", type: {:int, 4}}
  ],

"CovenantTradeCustomerInfo" => [
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "LeadPlayerName", type: :string}
  ],

"CheatDespawnBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid}
  ],

"RealmIntegrationQueryRealmAccountInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatSpawnStrongholdBuildingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdOccupancyInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "CovenantVuid", type: {:struct, "Vuid"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantLevel", type: {:int, 4}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"CovenantSynchronizeJoinAppliedPlayerLevelChangedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Level", type: {:int, 4}}
  ],

"CheatChangeLastLevelForLevelUpNotifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerMissionRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "MissionRewardInfos", type: {:list, {:struct, "MissionRewardInfo"}}}
  ],

"CheatRemoveVeilResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"StrongholdBattleCombatLogNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CombatLogInfo", type: {:nullable, {:struct, "CombatLogInfo"}}}
  ],

"CheatClearUserInventoryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UserInventoryKind", type: {:enum, "UserInventoryKindType"}}
  ],

"EntitySpawnNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "EntityInfo", type: {:nullable, :message}},
    %{name: "EntitySpawnReason", type: {:enum, "EntitySpawnRemoveReasonType"}}
  ],

"CovenantDiplomacyApplyAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"BattalionSwapFormationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SquadOrderA", type: {:int, 4}},
    %{name: "SquadMemberOrderA", type: {:int, 4}},
    %{name: "SquadOrderB", type: {:int, 4}},
    %{name: "SquadMemberOrderB", type: {:int, 4}}
  ],

"CheatUnlockAllContentsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"StrongholdBuildingCraftRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "BuildingCraftCuid", type: :cuid},
    %{name: "BuildingCraftCount", type: {:uint, 8}},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"CovenantLivingTotemInfo" => [
    %{name: "LivingTotemCuid", type: :cuid},
    %{name: "LivingTotemTier", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"CovenantCompleteCampaignNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CampaignGuid", type: {:uint, 8}},
    %{name: "CampaignCuid", type: :cuid},
    %{name: "CampaignStageCuid", type: :cuid},
    %{name: "IsSuccess", type: :bool},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}},
    %{name: "CampaignProgressDuration_sec", type: {:int, 4}}
  ],

"MarketManagementKey" => [
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "MarketKey", type: {:uint, 8}}
  ],

"CovenantGiftQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGiftInfo", type: {:nullable, {:struct, "CovenantGiftInfo"}}},
    %{name: "LastCovenantGiftInfo", type: {:nullable, {:struct, "CovenantGiftInfo"}}}
  ],

"CheatClearEquippedSpellstonesRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SystemCastAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "CastAffectSourceInfo"}},
    %{name: "AffectSourceSystemCastKind", type: {:enum, "AffectSourceSystemCastKindType"}}
  ],

"CovenantQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"RankingSourceInfo" => [
    %{name: "Key", type: {:uint, 8}},
    %{name: "Score", type: {:uint, 8}},
    %{name: "AdditionalInfo", type: {:nullable, :message}},
    %{name: "UpdateTime", type: :datetime}
  ],

"StrongholdBattleBuildingCombatStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "BuildingKind", type: {:enum, "BuildingKindType"}},
    %{name: "IsInCombatInProgressState", type: :bool}
  ],

"CheatClearAllStanceAndSkillResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatCreateAndEquipGearRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearCuid", type: :cuid},
    %{name: "BoundAndEroded", type: {:enum, "BoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "GearSlot", type: {:enum, "GearSlotType"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}}
  ],

"MarketGoodsInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketGoodsQueryInfo", type: {:nullable, {:struct, "MarketGoodsQueryInfo"}}},
    %{name: "DateTime", type: {:nullable, :datetime}},
    %{name: "MarketGoodsInfos", type: {:list, {:struct, "MarketGoodsInfo"}}}
  ],

"ServerDrivenPlayRecordsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"StrongholdBattleCampaignFieldDisposingNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FieldDisposingDateTime", type: :datetime}
  ],

"CheatSummonPlayerNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionCuid", type: :cuid},
    %{name: "Location_cm", type: :vector}
  ],

"EntitySynchronizeMessage" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"MonsterBookNodeAcquiredStateInfo" => [
    %{name: "__base__", type: {:struct, "MonsterBookNodeStateInfo"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "LastRewardedLevel", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "LastLevelUpDateTime", type: :datetime}
  ],

"BuildingWorkSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "BuildingWorkInfo"}}}
  ],

"CheatUpdateAchievementMissionProgressCountsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FieldInitializeInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FieldInitializeInfo", type: {:nullable, {:struct, "FieldInitializeInfo"}}}
  ],

"AnniversaryAchievementInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryAchievementInfos", type: {:list, {:struct, "AnniversaryAchievementInfo"}}}
  ],

"CharacterMoveToDirectionInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveToInfo"}},
    %{name: "DirectionYaw_rad", type: :float},
    %{name: "Destination_cm", type: :vector}
  ],

"CovenantBattalionExpeditionJoinResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatRealmAccountRealmTransferInfoChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmTransferCuid", type: :cuid},
    %{name: "RealmTransferCount", type: {:int, 4}},
    %{name: "LastRealmTransferDateTime", type: {:nullable, :datetime}}
  ],

"RankingInfo" => [
    %{name: "PreviousRanking", type: {:nullable, {:int, 4}}},
    %{name: "CurrentRanking", type: {:nullable, {:int, 4}}},
    %{name: "ViewInfo", type: {:nullable, :message}}
  ],

"MailsDeleteInTabResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}}
  ],

"ProtocolConstants" => [
    %{name: "TozNetwork.Protocol.ProtocolConstants", type: :unknown}
  ],

"PlayerSlotExpandResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerSlotExpansionCostCurrencyAmount", type: {:uint, 8}},
    %{name: "AdditionalPlayerSlotCount", type: {:int, 4}}
  ],

"CheatSetHavenBuildingAndItemResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RegionContentPlayInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionPlayTimeInfos", type: {:map, {:enum, "RegionContentKindType"}, {:struct, "TSharedPtr<FTzRegionContentPlayInfo"}}}
  ],

"MarketBuyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ErChatServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "ErServerSessionInitializeInfo"}},
    %{name: "ChatEntityInfo", type: {:nullable, {:struct, "ChatEntityInfo"}}},
    %{name: "BlockedChatEntityInfos", type: {:list, {:struct, "BlockedChatEntityInfo"}}}
  ],

"CovenantSearchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Keyword", type: :string}
  ],

"CheatStartCovenantCampaignRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CampaignStageCuid", type: :cuid},
    %{name: "IsAllowVolunteerJoinApply", type: :bool},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :bool}
  ],

"AlertPlayerRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeletedPlayerGuids", type: {:list, {:uint, 8}}}
  ],

"ItemUpdateInfo" => [
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "RemovedItemCuids", type: {:list, :cuid}}
  ],

"MountStateInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"CrossRealmRankingQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid},
    %{name: "RankingUpperBound", type: {:int, 4}},
    %{name: "RankingLowerBound", type: {:int, 4}}
  ],

"StrongholdBattleActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"CheatInstallAllArquirunesResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "InstalledArquiruneCuids", type: {:list, :cuid}}
  ],

"DestroyerExpireNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CharacterRotateInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveInfo"}},
    %{name: "Duration_msec", type: {:int, 4}},
    %{name: "IsClockwise", type: :bool},
    %{name: "MoveKind", type: {:enum, "MoveKindType"}}
  ],

"CheatDeregisterCheatEnabledPlayerNameRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerName", type: :string}
  ],

"StrongholdZoneAverageTaxInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyDeclareHostilityNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CovenantGiftBoxInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "MissionCuid", type: :cuid},
    %{name: "MissionStep", type: {:int, 4}},
    %{name: "GiftBoxCuid", type: :cuid},
    %{name: "ExpireDateTime", type: :datetime},
    %{name: "SenderPlayerGuid", type: {:uint, 8}},
    %{name: "SenderPlayerName", type: :string},
    %{name: "IsReceived", type: :bool},
    %{name: "ReceiveRewardInfo", type: {:nullable, :message}}
  ],

"BuildingDemolishRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}}
  ],

"CheatClearDeathPenaltyRecordRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantWatchInfo" => [
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TotalKillCount", type: {:int, 4}},
    %{name: "CovenantWatchKillingInfos", type: {:list, {:struct, "CovenantWatchKillingInfo"}}},
    %{name: "CreateDateTime", type: :datetime}
  ],

"CovenantBattalionExpeditionDeployStopLivingTotemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatAttachBuffResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "BuffCuid", type: :cuid}
  ],

"CheatAnniversaryAchievementAccomplishRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AchievementCuid", type: :cuid},
    %{name: "MissionProgressCounts", type: {:list, {:uint, 8}}}
  ],

"ErFrontServerSessionCancelWaitingQueueResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RectangleRange" => [
    %{name: "unknown_name", type: :fintvector2d},
    %{name: "UpperIndex", type: :fintvector2d}
  ],

"BattalionDismissRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"GearSlotPresetUnequipNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}}
  ],

"SpellstoneSlotPageInfo" => [
    %{name: "SpellstoneSlotInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzSpellstoneSlotInfo"}}}
  ],

"TutorialBeginRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"CovenantWatchDetailInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantWatchDetailInfos", type: {:list, {:struct, "CovenantWatchDetailInfo"}}}
  ],

"CheatChangeCashShopCheckBuyLimitOptionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsIgnoreToCheckBuyLimit", type: :bool}
  ],

"CovenantCampChangeResultInfo" => [
    %{name: "SourceCovenantCampCuid", type: :cuid},
    %{name: "DestinationCovenantCampCuid", type: :cuid},
    %{name: "MigratedHavenOperationInfo", type: {:nullable, {:struct, "HavenOperationInfo"}}}
  ],

"AlertPlayerQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AlertPlayerInfos", type: {:list, {:struct, "AlertPlayerInfo"}}},
    %{name: "CrossRealmAlertPlayerInfos", type: {:list, {:struct, "AlertPlayerInfo"}}}
  ],

"CheatSetHavenBuildingAndItemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid}
  ],

"CheatAddCovenantGiftSpecialGiftBoxPointsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AddSpecialGiftBoxPointsPoints", type: {:int, 4}}
  ],

"CheatDestroyPointsChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DestroyPoints", type: {:int, 4}},
    %{name: "PlayerName", type: :string}
  ],

"CrossRealmCovenantSearchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSearchInfos", type: {:list, {:struct, "CovenantSearchInfo"}}}
  ],

"CheatSetIgnoreCovenantMarketUsableJoinElapsedTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "IgnoreCovenantMarketUsableJoinElapsedTime", type: :bool}
  ],

"RealmAccountPresentCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PresentCode", type: :string},
    %{name: "Password", type: :string}
  ],

"CheatRealmIntegrationAddRealmAccountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatCovenantCreateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "CovenantInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"PathNodeInfo" => [
    %{name: "PathNodeKind", type: {:enum, "PathNodeKindType"}},
    %{name: "PolyFlag", type: {:struct, "unsigned_short"}},
    %{name: "AreaKind", type: {:struct, "unsigned_char"}},
    %{name: "Location_cm", type: :vector}
  ],

"CheatOccupyStrongholdResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyWithdrawAllianceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"RealmAccountRealmTransferCheckInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmTransferInfo", type: {:nullable, :message}},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmTransferCheckInfo"}}},
    %{name: "CanOutboundRealmTransferable", type: {:enum, "ResultCodeType"}}
  ],

"WorldMapPvpBattlePlayerInfoAddNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "PvpBattlePlayerInfo", type: {:nullable, :message}}
  ],

"PlayerDeleteReserveCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"HavenEventApplyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "HavenEventInfo", type: {:nullable, :message}}
  ],

"FollowerSquadSlotExpandResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"CovenantRegisteredGoodsModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ModifiedGoodsInfo", type: {:nullable, {:struct, "RegisteredGoodsInfo"}}}
  ],

"ThreadMailDeleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailKind", type: {:enum, "MailKindType"}},
    %{name: "UpperBoundDateTime", type: :datetime}
  ],

"CovenantUpdateNoticeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Notice", type: :string}
  ],

"StrongholdBattleSiegeWeaponDestroyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "EntityCuid", type: :cuid},
    %{name: "DestroyerNameInfo", type: {:nullable, {:struct, "CharacterNameInfo"}}},
    %{name: "DestroyerCovenantName", type: :string}
  ],

"RoadLinkInfo" => [
    %{name: "DestinationRoadJunctionId", type: {:int, 4}},
    %{name: "IsOneShotSpecialMove", type: :bool},
    %{name: "LinkedCuidHashCode", type: {:int, 4}}
  ],

"PlayerHarmfulTextOnChatViolationInfo" => [
    %{name: "ViolationCount", type: {:int, 4}},
    %{name: "BlockPostEndTime", type: {:nullable, :datetime}}
  ],

"PartyBanishMemberRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatServerDrivenPlayResupplyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BossSpawnInfo" => [
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "SpawnDateTime", type: {:nullable, :datetime}},
    %{name: "ForceDespawnDateTime", type: {:nullable, :datetime}}
  ],

"RealmAccountWarehouseInfo" => [
    %{name: "InventoryInfo", type: {:nullable, {:struct, "InventoryInfo"}}},
    %{name: "AdditionalSlotCount", type: {:int, 4}}
  ],

"ManaPointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ManaPoints", type: {:uint, 8}}
  ],

"FindPathResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToStartLocationId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToDestinationId", type: {:int, 4}},
    %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "PathNotByRoad", type: {:list, :vector}},
    %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:int, 4}}}
  ],

"PlayerSkillSlotUpdateInfo" => [
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "SkillSlotIndex", type: {:enum, "PlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "PlayerSkillSlotInfo"}}}
  ],

"StrongholdBattleBuildingStateInfo" => [
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "MaxHealthPoints", type: {:uint, 8}},
    %{name: "HealthPoints", type: {:uint, 8}},
    %{name: "FieldUid", type: {:struct, "FieldUid"}}
  ],

"SpecialMovePointsExhaustionAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "AffectSourceInfo"}}
  ],

"CovenantUpdateMemberRoleNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :string},
    %{name: "CovenantMemberRoleLastUpdatedDateTime", type: :datetime}
  ],

"CheatAcquireAndSetToSquadFollowerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"QuestTeleportToQuestWayPointRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestMissionCuid", type: :cuid}
  ],

"SpellstoneUnequipRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RootSkillCuid", type: :cuid},
    %{name: "SpellstoneGuid", type: {:uint, 8}}
  ],

"CovenantQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"CheatStartOccupiableNpcBossBattleRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionCuid", type: :cuid},
    %{name: "BossMatchGroup", type: {:int, 4}}
  ],

"PartyInviteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}}
  ],

"CovenantSynchronizeForbiddenAetherBoxCountUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}}
  ],

"RealmAccountWarehouseAutoStoreSettingUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AutoStoreSettings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"RealmAccountPresentQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmAccountPresentInfos", type: {:list, {:struct, "RealmAccountPresentSummaryInfo"}}}
  ],

"PubSubChannelUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelDataNotify"}}
  ],

"CrossRealmPvpRankingAdditionalSourceInfo" => [
    %{name: "__base__", type: {:struct, "PvpRankingAdditionalSourceInfo"}},
    %{name: "RealmCuid", type: :cuid}
  ],

"CheatClearCovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ResourceHistoryInfo" => [
    %{name: "IncomeHistories", type: {:map, {:enum, "ResourceKindType"}, {:uint, 8}}},
    %{name: "ExpenseHistories", type: {:map, {:enum, "ResourceKindType"}, {:struct, "TMap<ETzResourceExpenseKindType"}}}
  ],

"FavoriteStatKindsResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StatView", type: {:enum, "AdjustableStatViewType"}}
  ],

"CheatCreateCovenantWarehouseItemResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}}
  ],

"GoodsBuyCountsInfo" => [
    %{name: "GoodsBuyCounts", type: {:map, {:enum, "BuyOrCraftLimitLevelType"}, {:struct, "TMap<FTzCuid"}}},
    %{name: "RegisteredGoodsBuyCounts", type: {:map, {:enum, "BuyOrCraftLimitLevelType"}, {:struct, "TMap<FTzRegisteredGoodsBuyCountKey"}}}
  ],

"StrongholdReserveProtectionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CharacterMoveOrbitalToLocationParameterInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveToLocationParameterInfo"}},
    %{name: "IsClockwise", type: :bool}
  ],

"CheatAccountAffectAttachRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AccountAffectCuid", type: :cuid}
  ],

"FollowerTeleportToHeadquartersNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerReturnReason", type: {:enum, "FollowerReturnReasonType"}},
    %{name: "LeaveToHeadquartersDateTime", type: :datetime},
    %{name: "ArrivedAtHeadquartersDateTime", type: :datetime}
  ],

"QuestAcceptFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}}
  ],

"RewardCurrencyInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "Amount", type: {:uint, 8}}
  ],

"CovenantWatchKillingInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "LastUpdateDateTime", type: :datetime}
  ],

"WarehouseMigrationInfo" => [
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"UpdateLastViewedChatRecordsIndexRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatRecordsIndices", type: {:list, {:struct, "ChatRecordsIndex"}}}
  ],

"CheatClearSeasonPassLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"EnvironmentVariablesNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Variables", type: {:map, :string, :string}}
  ],

"ChatRecordsIndex" => [
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChannelIndex", type: {:struct, "unsigned_short"}},
    %{name: "RecordsIndex", type: {:uint, 8}}
  ],

"TerritoryErosionItemConfigurationQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveResetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}}
  ],

"PaidAttendanceBuyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: :cuid}
  ],

"CheatAddServerTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Time_msec", type: {:uint, 8}}
  ],

"NavMeshTileInfo" => [
    %{name: "RowIndex", type: {:int, 4}},
    %{name: "ColumnIndex", type: {:int, 4}},
    %{name: "LayerInfos", type: {:list, {:struct, "NavMeshTileLayerInfo"}}}
  ],

"CheatResetAllAetherOptionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"HandCustomizeInfo" => [
    %{name: "HandBase", type: :vector},
    %{name: "Thumb", type: {:nullable, {:struct, "FingerCustomizeInfo"}}},
    %{name: "IndexFinger", type: {:nullable, {:struct, "FingerCustomizeInfo"}}},
    %{name: "MiddleFinger", type: {:nullable, {:struct, "FingerCustomizeInfo"}}},
    %{name: "RingFinger", type: {:nullable, {:struct, "FingerCustomizeInfo"}}},
    %{name: "PinkyFinger", type: {:nullable, {:struct, "FingerCustomizeInfo"}}}
  ],

"StrongholdZoneAverageTaxInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AverageTaxInfo", type: {:nullable, {:struct, "ZoneTaxInfo"}}}
  ],

"MailQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "Mails", type: {:list, {:struct, "MailInfo"}}},
    %{name: "HasMore", type: :bool}
  ],

"CheatClearSkillSlotQuickSlotAutoUseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatAcquireFollowerSetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleAttackResourceInfo" => [
    %{name: "BattleDuration_min", type: {:int, 4}},
    %{name: "AetherBoxCount", type: {:uint, 8}},
    %{name: "TacticalSkillBadgeCount", type: {:uint, 8}},
    %{name: "SiegeWeaponCounts", type: {:map, :cuid, {:uint, 8}}}
  ],

"AnniversaryAchievementPointRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AnniversaryAchievementPointInfo", type: {:nullable, {:struct, "AnniversaryAchievementPointInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CovenantSynchronizeMemberRefreshedContributionInfosNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberContributionInfos", type: {:list, {:struct, "CovenantMemberContributionInfo"}}}
  ],

"CovenantAppointLeaderNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "OldCovenantLeaderGuid", type: {:uint, 8}},
    %{name: "NewCovenantLeaderGuid", type: {:uint, 8}}
  ],

"GameNotificationOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GameNotificationOptionInfo", type: {:nullable, {:struct, "GameNotificationOptionInfo"}}}
  ],

"SeasonPassLevelRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CheatClearDeathPenaltyRecordResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleGroupMemberCountChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "MemberCount", type: {:int, 4}}
  ],

"CollectionPhaseProgressNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionCuid", type: :cuid},
    %{name: "RewardStatCuid", type: :cuid}
  ],

"CovenantWatchSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetPlayerGuidToCreateDateTimes", type: {:map, {:uint, 8}, :datetime}}
  ],

"FindShortestTravelPathToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :vector},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"ShopSellRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"CovenantLeaderDividendResultInfo" => [
    %{name: "__base__", type: {:struct, "DividendResultInfo"}}
  ],

"RedrawableItemRedrawResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "UpdatedRedrawableItemInfo", type: {:nullable, {:struct, "RedrawableItemInfo"}}}
  ],

"CrossRealmAlertPlayerRegisterInfo" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "RegisteredDateTime", type: :datetime}
  ],

"CovenantSummaryInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfo", type: {:nullable, {:struct, "CovenantSummaryInfo"}}}
  ],

"LastDeathRecordDeleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionCheckReadyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CharacterRotateTowardsLocationInfo" => [
    %{name: "__base__", type: {:struct, "CharacterRotateInfo"}},
    %{name: "TargetLocation_cm", type: :vector}
  ],

"MailSendResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PersonalMailSendCount", type: {:int, 4}},
    %{name: "CovenantMailSendCount", type: {:int, 4}},
    %{name: "SendCountUpdateDateTime", type: :datetime},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CovenantSearchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSearchInfos", type: {:list, {:struct, "CovenantSearchInfo"}}}
  ],

"CheatOpenSeasonPassAchievementsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FavorMissionInfo" => [
    %{name: "Vuid", type: {:struct, "Vuid"}},
    %{name: "FavorVuid", type: {:struct, "Vuid"}},
    %{name: "HuntingSiteCuidList", type: {:list, :cuid}},
    %{name: "TargetCuidList", type: {:list, :cuid}},
    %{name: "LevelOfTargetNpc", type: {:int, 4}},
    %{name: "ClanCuid", type: :cuid}
  ],

"CheatInstallArquiruneResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"CovenantRejectJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AnniversaryStrongholdOccupationRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AnniversaryStrongholdOccupationRecordInfo", type: {:nullable, {:struct, "AnniversaryStrongholdOccupationRecordInfo"}}}
  ],

"DropParameter" => [
    %{name: "__base__", type: {:struct, "AcquireSourceAdditionalParameter"}},
    %{name: "NpcCuid", type: :cuid}
  ],

"CovenantReturnHavenChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantReturnHavenCuid", type: :cuid}
  ],

"CheatCheckServerTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "NowServerTime", type: :string}
  ],

"CovenantUpdateEmblemInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantEmblemSelectionInfo", type: {:nullable, {:struct, "CovenantEmblemSelectionInfo"}}}
  ],

"FindRegionCrossablePathToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :vector},
    %{name: "LocationRegionCuid", type: :cuid},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"ErGameServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "ErServerSessionInitializeInfo"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CovenantTradeSalesManageResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SalesManagementKind", type: {:enum, "CovenantTradeSalesManagementKindType"}},
    %{name: "GoodsGuidsAndResultCodes", type: {:map, {:uint, 8}, {:enum, "ResultCodeType"}}}
  ],

"CheatChangeFocusTargetHealthPointsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"TozPing" => [
    %{name: "Nonce", type: {:int, 4}},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"StrongholdBuildingUpgradeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerEquipmentInfo" => [
    %{name: "SelectedEquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}},
    %{name: "EquipmentPresetInfos", type: {:map, {:enum, "EquipmentPresetIndexType"}, {:struct, "TSharedPtr<FTzEquipmentPresetInfo"}}},
    %{name: "HasPreviouslyEquippedGuise", type: :bool}
  ],

"BuffFaceCasterMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "BuffMoveAffectInfo"}},
    %{name: "FaceDirection", type: :vector}
  ],

"CheatTeleportFollowerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RedrawableItemRedrawRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CostCurrencyCuid", type: :cuid}
  ],

"CharacterRotateTowardsEntityInfo" => [
    %{name: "__base__", type: {:struct, "CharacterRotateTowardsLocationInfo"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"MailStrongholdBattleEndRewardLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailStrongholdBattleLayoutInfo"}},
    %{name: "StrongholdBattleResult", type: {:enum, "StrongholdBattleResultType"}},
    %{name: "Rank", type: {:int, 4}},
    %{name: "GainedCovenantExperiencePoints", type: {:uint, 8}}
  ],

"DeleteFromChatBlockListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ErosionInstalledWithoutPermissionAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ErosionInfos", type: {:list, {:struct, "ErosionInfo"}}}
  ],

"DeathPenaltyRecordInfoChangedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GuidToChangedRecordKinds", type: {:map, {:uint, 8}, {:enum, "DeathPenaltyRecordKindType"}}}
  ],

"RoadJunctionInfo" => [
    %{name: "Id", type: {:int, 4}},
    %{name: "Location_cm", type: :vector},
    %{name: "Radius_cm", type: :float},
    %{name: "AreaCuidHashCode", type: {:int, 4}},
    %{name: "DistrictCuidHashCode", type: {:int, 4}}
  ],

"PushNotificationOptionInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "IsEnabled", type: :bool},
    %{name: "IsNotifiedEvenWhenConnected", type: :bool}
  ],

"OccupiableNpcInfoBulkUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "OccupiableNpcInfos", type: {:list, {:struct, "OccupiableNpcInfo"}}},
    %{name: "NxLogBaseParameterInfo", type: {:nullable, :message}}
  ],

"CheatRegisterCheatEnabledPlayerNameResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CheatEnabledPlayerNames", type: :unknown}
  ],

"CharacterThreatListAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ThreateningCharacterGuid", type: {:uint, 8}}
  ],

"TeaseMessageRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TeaseMessage", type: :string}
  ],

"ItemInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemInfo", type: {:nullable, :message}}
  ],

"CheatDeleteChatCovenantRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CheatResetContentsUnlockRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RealmAccountOptionInfo" => [
    %{name: "PushNotificationOptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzPushNotificationOptionInfo"}}}
  ],

"QuestTeleportToReentryLocationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestMissionCuid", type: :cuid}
  ],

"DestroyerBecomeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"BattalionInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "BattalionInfo", type: {:nullable, {:struct, "AffiliatedBattalionInfo"}}}
  ],

"CheatTeleportToSpawnerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "Radius_cm", type: :float}
  ],

"PartyCreateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "PartyOptionInfo"}}}
  ],

"CheatAccomplishAllFavorRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantInvitationInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "InviterGuid", type: {:uint, 8}},
    %{name: "InviterName", type: :string},
    %{name: "InviteDateTime", type: :datetime}
  ],

"CheatUnOccupyOccupiableNpcRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid}
  ],

"MailFollowerWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "GainedCovenantExperiencePoints", type: {:uint, 8}},
    %{name: "GainedFollowerExperiencePoints", type: {:uint, 8}}
  ],

"CheatChangeSpiritualBondPowerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"MarketGoodsInfo" => [
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "SellPlayerName", type: :string},
    %{name: "ItemCuid", type: :cuid},
    %{name: "IsStorable", type: :bool},
    %{name: "ItemAdditionalInfo", type: {:nullable, :message}},
    %{name: "ItemStackCount", type: {:int, 4}},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyAmount", type: {:uint, 8}},
    %{name: "ExpireDateTime", type: :datetime},
    %{name: "Index", type: {:nullable, {:int, 4}}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"CovenantBattalionExpeditionLivingTotemDepartureRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"AnniversaryRecordHistoryQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryRecordCuid", type: :cuid}
  ],

"CovenantCampBuildingCraftCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BuildingCraftCountAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "AchievementSourceInfo"}},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"KickCovenantsFromDiplomacyChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CovenantGuids", type: {:list, {:uint, 8}}}
  ],

"CheatResetGoodsBuyCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PlayerSkillSlotUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "PlayerSkillSlotIndex", type: {:enum, "PlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "PlayerSkillSlotInfo"}}}
  ],

"TutorialStepForwardFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: :cuid},
    %{name: "PreviousStepNumber", type: {:int, 4}}
  ],

"CheatCreateAndEquipGearResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "EquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}}
  ],

"ArquiruneDeactivateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"ServerDrivenPlayEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RemainingDailyDuration_sec", type: {:int, 4}},
    %{name: "EndedState", type: {:enum, "ServerDrivenPlayState"}},
    %{name: "EndReason", type: {:enum, "ServerDrivenPlayEndReasonType"}}
  ],

"OccupiableNpcSummaryInfo" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :datetime}},
    %{name: "IsRandomBuffNpc", type: :bool},
    %{name: "OccupationState", type: {:enum, "NpcOccupationStateType"}}
  ],

"DeathPenaltyDeleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DeletedDeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"CheatResurrectAllFollowerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantUpdateOutLinkNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantOutLinkInfo", type: {:nullable, {:struct, "CovenantOutLinkInfo"}}}
  ],

"EquipmentPresetSelectRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}}
  ],

"AnniversaryStrongholdOccupationCovenantInfo" => [
    %{name: "OccupyingCovenantInfo", type: {:nullable, :message}},
    %{name: "OccupationDateTime", type: :datetime},
    %{name: "IsOccupyAltarPhaseInProgress", type: :bool},
    %{name: "AttackGroupInfos", type: {:list, {:struct, "CovenantDisplayInfo"}}}
  ],

"ThreadMailDeleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailKind", type: {:enum, "MailKindType"}}
  ],

"QuestTeleportToReentryLocationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MountRendezvousInfo" => [
    %{name: "__base__", type: {:struct, "MountStateInfo"}},
    %{name: "MountItemCuid", type: :cuid},
    %{name: "MountSpawnLocation_cm", type: :vector},
    %{name: "IsLeftBoarding", type: :bool},
    %{name: "MountBoardingLocation_cm", type: :vector},
    %{name: "PlayerBoardingLocation_cm", type: :vector},
    %{name: "RendezvousLocation_cm", type: :vector},
    %{name: "RendezvousStartDateTime", type: :datetime},
    %{name: "BoardingDateTime", type: :datetime},
    %{name: "PlayerRunSpeedBeforeBoarded_cmpmsec", type: :float},
    %{name: "IsImmediateBoarding", type: :unknown},
    %{name: "IsMovingBoarding", type: :unknown}
  ],

"CheatDistributeStrongholdMarketTaxRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyRejectAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CovenantSupportInfoChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HasCovenantSupportableFollower", type: :bool}
  ],

"StrongholdBattleStatisticsDeadEventInfo" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleStatisticsEventInfo"}},
    %{name: "KillerGuid", type: {:uint, 8}}
  ],

"StanceSwitchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Stance", type: {:enum, "StanceType"}}
  ],

"CheatTeleportToPlayerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string},
    %{name: "Radius_cm", type: :float}
  ],

"CheatStartCovenantCampaignResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatResetAetherOptionByCategoryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: :cuid}
  ],

"SeasonPassAchievementRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}}
  ],

"SessionKickNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "BanInfo", type: {:nullable, :message}}
  ],

"TutorialCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"FollowerDispatchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"QueryChatRecordsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailGuid", type: {:uint, 8}}
  ],

"SeasonPassQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MapFogOpenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FogCuid", type: :cuid}
  ],

"StrongholdBattleJoinedCovenantHistoryInfo" => [
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "CovenantVuid", type: {:struct, "Vuid"}},
    %{name: "CovenantName", type: :string},
    %{name: "JoinedDateTime", type: :datetime},
    %{name: "IsDismissed", type: :bool},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"ItemTransmuteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ItemGradeType"}},
    %{name: "ItemGuids", type: {:list, {:uint, 8}}}
  ],

"BattalionLeaderChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BaseGameOptionInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"MarketSellReregisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegistrationFeeCurrencyInfoByGoodsGuid", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCuidAndCountInfo"}}}
  ],

"CspSupporterInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdBuildingDemolishRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"CheatOccupyOccupiableNpcRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid}
  ],

"RealmAccountWarehouseUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmAccountWarehouseInventoryUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}}
  ],

"CheatSummonPlayerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string}
  ],

"MailCovenantDiaDividendLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "DividendAmount", type: {:uint, 8}}
  ],

"FieldMigrationReadyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatCloseAllFogRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RealmAccountIntegrationInfo" => [
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "PreviousRealmCuid", type: :cuid},
    %{name: "CurrentRealmCuid", type: :cuid},
    %{name: "RealmTransferDateTime", type: :datetime},
    %{name: "HidePopup", type: :bool},
    %{name: "Deleted", type: :bool}
  ],

"QuestMissionCompletableLocationCheckResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestMissionCuid", type: :cuid}
  ],

"CspSupporterInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Code", type: {:int, 4}},
    %{name: "Message", type: :string},
    %{name: "CspSupporterInfo", type: {:nullable, {:struct, "CspSupporterInfo"}}}
  ],

"CheatClearRealmIntegrationBattleAllScoreRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SummonedNpcExpireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcCuid", type: :cuid}
  ],

"CheatOpenFogResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FogCuid", type: :cuid}
  ],

"CheatFinishFollowerWorkRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AdditionalWorkAmount_w", type: {:int, 4}},
    %{name: "PlayerName", type: :string}
  ],

"BuildingSubscriptionInfo" => [
    %{name: "BuildingGuid", type: {:uint, 8}},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "HealthPoints", type: {:uint, 8}},
    %{name: "MaxHealthPoints", type: {:uint, 8}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "BuildingWorkInfo"}}},
    %{name: "BuildingAccessPermissionKind", type: {:enum, "BuildingAccessPermissionKindType"}},
    %{name: "LastChangeDateTime", type: :datetime}
  ],

"StrongholdBattleAttackEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}}
  ],

"CovenantMarkerNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarkerKind", type: {:enum, "CovenantMarkerKindType"}}
  ],

"BattalionSwapFormationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrderA", type: {:int, 4}},
    %{name: "SquadMemberOrderA", type: {:int, 4}},
    %{name: "SquadOrderB", type: {:int, 4}},
    %{name: "SquadMemberOrderB", type: {:int, 4}}
  ],

"StackableItemMultipleUseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "ItemGuidSelector"}}},
    %{name: "ParameterInfo", type: {:nullable, :message}}
  ],

"BattalionConfirmJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "IsConfirmJoinApplication", type: :bool}
  ],

"CheatUnlockAllContentsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "UnusedContentsUnlockKinds", type: :unknown}
  ],

"CovenantDiplomacyWithdrawHostilityResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"AlertPlayerUnregisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}}
  ],

"ErTozMessageWithResultCode" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ResultCode", type: {:enum, "ResultCodeType"}}
  ],

"CashShopRefundableMerchandiseStorageBoxInfo" => [
    %{name: "SlotInfos", type: {:list, {:struct, "CashShopRefundableMerchandiseStorageBoxSlotInfo"}}}
  ],

"PowerSavingModeEndRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"StrongholdBattleAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdBattleSummaryInfo", type: {:nullable, {:struct, "StrongholdBattleSummaryInfo"}}}
  ],

"RankingQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RankingTopicCuid", type: :cuid},
    %{name: "DateTime", type: {:nullable, :datetime}},
    %{name: "RankingInfos", type: {:list, {:struct, "RankingInfo"}}},
    %{name: "SelfRankingInfo", type: {:nullable, :message}}
  ],

"RsaPublicKeyNotify" => [
    %{name: "PublicKeyXmlString", type: :unknown}
  ],

"AnniversaryQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "AnniversaryInfos", type: {:list, {:struct, "AnniversaryInfo"}}},
    %{name: "AnniversaryPointAndRankingInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryPointAndRankingInfo"}}},
    %{name: "AnniversaryAchievementPointInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryAchievementPointInfo"}}}
  ],

"CovenantUpdateLastPlunderDeclaredDateTimeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LastPlunderDeclaredDateTime", type: :datetime}
  ],

"OccupiableNpcOccupationScoreUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "OccupationScore", type: {:int, 4}},
    %{name: "NpcOccupationScoreCovenantViewInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzNpcOccupationScoreCovenantViewInfo"}}}
  ],

"AnniversaryPointRankingRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryBeginDateTime", type: :datetime},
    %{name: "RankingUpperBound", type: {:int, 4}},
    %{name: "RankingLowerBound", type: {:int, 4}}
  ],

"OccupiableNpcInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "NpcOccupationViewInfo", type: {:nullable, {:struct, "NpcOccupationViewInfo"}}}
  ],

"CheatCovenantRealmTransferBlockRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ApplyAll", type: :bool},
    %{name: "CovenantRealmTransferStepString", type: :string}
  ],

"FollowerSquadUpdateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"CovenantTradeCategoryQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "CategoryItemInfos", type: {:list, {:struct, "CovenantTradeCategoryItemInfo"}}}
  ],

"MarketSellSettleRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsGuids", type: :unknown}
  ],

"CheatUnsetStatResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatResetDiscoveredSelfieDoodadSpawnersRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SpawnLayerInfo" => [
    %{name: "SpawnLayerCuid", type: :cuid},
    %{name: "IsActivated", type: :bool},
    %{name: "LastActivatedDateTime", type: {:nullable, :datetime}},
    %{name: "LastDeactivatedDateTime", type: {:nullable, :datetime}}
  ],

"TerritoryBossActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"BattalionConfirmCheckReadyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MemberReadyKind", type: {:enum, "BattalionMemberReadyKindType"}}
  ],

"ProtocolCheckRequest" => [
    %{name: "Hash", type: :unknown}
  ],

"CovenantBattalionExpeditionQueryNearestHavenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: :cuid}
  ],

"PartyTargetLocationSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CheatClearFollowerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CollectionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzFollowerCollectionInfo"}}}
  ],

"CheatCreateAndEquipGearSetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}}
  ],

"PartyInvitationInfo" => [
    %{name: "PartyName", type: :string},
    %{name: "Purpose", type: {:enum, "PartyPurposeType"}},
    %{name: "RegionCuid", type: :cuid},
    %{name: "InvitePlayerName", type: :string},
    %{name: "PartyItemDistributionInfo", type: {:nullable, {:struct, "PartyOrBattalionItemDistributionInfo"}}}
  ],

"MovePathInfo" => [
    %{name: "StartLocation", type: :vector},
    %{name: "DestinationLocation", type: :vector},
    %{name: "RoadJunctionIds", type: {:list, {:int, 4}}},
    %{name: "PathToFirstRoadJunction", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}}
  ],

"CovenantSupportQueryInfo" => [
    %{name: "BuildingWorkOrderInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzBuildingWorkOrderInfo"}}},
    %{name: "CovenantSupportInfos", type: {:list, {:struct, "CovenantSupportInfo"}}}
  ],

"CheatTeleportToHavenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: :cuid}
  ],

"CheatAddRegionContentBasePlayTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionContentKind", type: {:enum, "RegionContentKindType"}},
    %{name: "AddPlayTime_sec", type: {:int, 4}}
  ],

"ErFrontServerSessionInitializeInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmAccountInfo", type: {:nullable, {:struct, "RealmAccountInfo"}}},
    %{name: "PlayerSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerSummaryInfo"}}},
    %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
    %{name: "CanCheatCommand", type: :bool},
    %{name: "RealmIntegrationRealmAccountInfos", type: {:list, {:struct, "RealmIntegrationRealmAccountInfo"}}}
  ],

"CheatChangeActivationSpawnLayerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ConvenienceOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "HealthPointsPotionAutoUsageOptionInfo", type: {:nullable, {:struct, "PotionAutoUsageOptionInfo"}}},
    %{name: "ManaPointsPotionAutoUsageOptionInfo", type: {:nullable, {:struct, "PotionAutoUsageOptionInfo"}}},
    %{name: "AutoUseReplaceSpentItemPolicyOption", type: {:enum, "AutoUseReplaceSpentItemPolicyType"}},
    %{name: "SkillAutoUseManaPointsRestrictOptionInfo", type: {:nullable, {:struct, "SkillAutoUseManaPointsRestrictOptionInfo"}}},
    %{name: "PartyAutoCreationOnlyCovenantMemberOrFriend", type: :bool},
    %{name: "PartyAutoCreationAutoApprovalJoinApplication", type: :unknown},
    %{name: "PartyInvitationAllowKind", type: {:enum, "PartyInvitationAllowKindType"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MountItemCuid", type: :cuid}
  ],

"StrongholdBattleUpdateSiegeWeaponSlotNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "StrongholdBattleAttackSiegeWeaponSlotInfo", type: {:nullable, :message}}
  ],

"CheatUpdateAchievementMissionProgressCountsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AchievementCuid", type: :cuid},
    %{name: "MissionProgressCounts", type: {:list, {:uint, 8}}}
  ],

"CovenantLivingTotemCraftRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "LivingTotemCuid", type: :cuid},
    %{name: "ExpectedLivingTotemTier", type: {:int, 4}}
  ],

"QuickSlotPageUpdateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PartyQueryMemberCandidateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmPlayerName", type: {:nullable, {:struct, "RealmPlayerName"}}},
    %{name: "PartyMemberCoreInfo", type: {:nullable, {:struct, "PartyMemberCoreInfo"}}}
  ],

"CovenantSynchronizeLevelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"CovenantBattalionExpeditionLivingTotemArrivalNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DepartureHavenCuid", type: :cuid},
    %{name: "ArrivalSealedSiteCuid", type: :cuid}
  ],

"AnniversaryInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "AnniversaryBeginDateTime", type: :datetime},
    %{name: "AnniversaryEndDateTime", type: :datetime},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :datetime},
    %{name: "AnniversaryAchievementCycleEndDateTime", type: :datetime},
    %{name: "AnniversaryStrongholdOccupationCovenantInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryStrongholdOccupationCovenantInfo"}}}
  ],

"CovenantWarehouseSummaryUpdateInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "UpdatedItemInfos", type: {:map, :cuid, {:uint, 8}}},
    %{name: "RemovedItemCuids", type: {:list, :cuid}}
  ],

"CheatCovenantPayDividendRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DividendInfo", type: {:nullable, :message}}
  ],

"PartyJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "PartyMemberInfo"}}}
  ],

"EqualDistributionDividendResultInfo" => [
    %{name: "__base__", type: {:struct, "DividendResultInfo"}},
    %{name: "AmountPerMember", type: {:uint, 8}}
  ],

"CovenantMemberAnniversaryPointContributionInfo" => [
    %{name: "__base__", type: {:struct, "CovenantMemberAnniversaryPointInfo"}},
    %{name: "AnniversaryPointContribution", type: {:uint, 8}}
  ],

"CharacterPrivateStatsInfo" => [
    %{name: "__base__", type: {:struct, "CharacterStatsInfo"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantDiplomacyInfos", type: {:nullable, {:struct, "CovenantDiplomacyInfos"}}}
  ],

"TlsLikeEncryptPremasterSecret" => [
    %{name: "PremasterSecret", type: :unknown}
  ],

"CombatLootOptionInfo" => [
    %{name: "MaxWeightPercentage", type: {:int, 2}},
    %{name: "MinCoreMaterialItemGrade", type: {:enum, "ItemGradeType"}},
    %{name: "IncludePotion", type: :bool},
    %{name: "IncludeBuffItem", type: :unknown},
    %{name: "MinArquiruneGrade", type: {:enum, "ItemGradeType"}},
    %{name: "MinSpellstoneGrade", type: {:enum, "ItemGradeType"}},
    %{name: "DefaultDisplayDropItemName", type: :unknown}
  ],

"PaidAttendanceBuyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "PaidAttendanceInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CashShopMerchandisePaymentInfo" => [
    %{name: "__base__", type: {:struct, "MerchandisePaymentInfo"}},
    %{name: "SubCategoryCuid", type: :cuid},
    %{name: "CuidAndCountInfo", type: {:nullable, {:struct, "CuidAndCountInfo"}}},
    %{name: "ItemUseParameterInfo", type: {:nullable, :message}}
  ],

"ServerDrivenPlayEndRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatFavorDailyCheckDateTimeResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatAnniversaryAchievementAccomplishAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfo", type: {:nullable, {:struct, "CovenantSummaryInfo"}}},
    %{name: "IsJoinApplied", type: :bool},
    %{name: "IsInvited", type: :bool},
    %{name: "LeaderCustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "LeaderCostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
    %{name: "LeaderLevel", type: {:int, 4}},
    %{name: "LeaderGender", type: {:enum, "GenderType"}},
    %{name: "LeaderClasse", type: {:enum, "ClasseType"}}
  ],

"InventoryExpandResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "UserInventoryKind", type: {:enum, "UserInventoryKindType"}},
    %{name: "MaxInventorySlotCount", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatResetCovenantCampaignTicketCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"GracefulShutdownMessage" => [
    %{name: "TozNetwork.ServerGroup.GracefulShutdownMessage", type: :unknown}
  ],

"TrustedDeviceRegisterNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FissionedStateUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsFissioned", type: :bool}
  ],

"CrossRealmChatRoomRecordsInitializationInfo" => [
    %{name: "__base__", type: {:struct, "ChatRoomRecordsInitializationInfo"}},
    %{name: "CountForFree", type: {:int, 4}}
  ],

"ItemTransmutationResultInfo" => [
    %{name: "IsSuccess", type: :bool},
    %{name: "ResultLevel", type: {:int, 2}},
    %{name: "PreviousLevel", type: {:int, 2}},
    %{name: "RewardItemCuid", type: :cuid},
    %{name: "FailRewardPointCurrencies", type: {:map, :cuid, {:uint, 8}}}
  ],

"SeasonPassLevelRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "SeasonPassRewardKind", type: {:enum, "SeasonPassRewardKindType"}}
  ],

"CheatDeleteChatCovenantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PvpRecordInfo" => [
    %{name: "CharacterInfos", type: {:list, {:struct, "PvpRecordCharacterInfo"}}},
    %{name: "RecordDateTime", type: :datetime}
  ],

"ItemAdditionalInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"BattalionCheckReadyResultNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CheckReadyResult", type: {:map, {:enum, "BattalionMemberReadyKindType"}, {:int, 4}}}
  ],

"CovenantUpdateIntroductionFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatReleaseOccupiableNpcInactivityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid}
  ],

"LootNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SourceEntityGuid", type: {:uint, 8}},
    %{name: "GainedExperiencePoints", type: {:uint, 8}},
    %{name: "GainedExperiencePointsFromFinisher", type: {:uint, 8}},
    %{name: "GainedSpiritualBondPower", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "AcquiredCovenantRewardInfo", type: {:nullable, {:struct, "CovenantRewardInfo"}}},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "IsErosionInstallerReward", type: :bool}
  ],

"CovenantSynchronizeRankingNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}}
  ],

"OccupiableNpcBossBattleRewardNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}},
    %{name: "ReceivedRewardInfos", type: {:list, {:struct, "ReceivedRewardInfo"}}}
  ],

"CheatAnniversaryAchievementResetAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatRankingBuffApplySwitchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "IsApplied", type: :bool}
  ],

"MessageCacheElement" => [
    %{name: "CacheTicks", type: {:int, 4}}
  ],

"NpcSpeechBalloonInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "NpcSpeechBalloonTextFormatInfo", type: {:nullable, :message}}
  ],

"CheatRemoveRankingDummyDataResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdCancelProtectionReservationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"MailBuildingResearchLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailBuildingWorkLayoutInfo"}},
    %{name: "ResearchCuid", type: :cuid},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"OccupiableNpcBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "BossSpawnInfo"}},
    %{name: "DespawnDateTime", type: {:nullable, :datetime}}
  ],

"BuffMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "BuffAffectInfo"}},
    %{name: "Destination_cm", type: :vector}
  ],

"VersionNameInfo" => [
    %{name: "__base__", type: {:struct, "BaseInfo"}},
    %{name: "ProjectName", type: :unknown},
    %{name: "BranchName", type: :unknown},
    %{name: "LastToken", type: :unknown}
  ],

"CheatCommandPresetEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatPlayerLocationChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CheatServerDrivenPlayResupplyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PartyCancelJoinApplicationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatUnlockContentsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ContentsUnlockKindType"}}
  ],

"PlayerFavorInfo" => [
    %{name: "DistrictFavorDatabaseInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzDistrictFavorDatabaseInfo"}}},
    %{name: "ActiveFavorDatabaseInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzFavorDatabaseInfo"}}}
  ],

"CovenantBattalionSummaryInfo" => [
    %{name: "__base__", type: {:struct, "BattalionSummaryInfo"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, :message}}
  ],

"StrongholdBattleDefenseGunBulletAmountChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "DefenseGunBulletCount", type: {:uint, 8}}
  ],

"CovenantRealmTransferCheckInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmTransferInfo", type: {:nullable, :message}},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmTransferCheckInfo"}}},
    %{name: "CovenantRealmTransferCheckInfo", type: {:nullable, {:struct, "CovenantRealmTransferCheckInfo"}}},
    %{name: "CanOutboundRealmTransferable", type: {:enum, "ResultCodeType"}},
    %{name: "DestinationRealmPlayerCount", type: {:int, 4}},
    %{name: "IsAppliedRealmAccountPresentToRealm", type: :bool}
  ],

"FollowerImmediateResurrectionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"MarketGoodsSummaryInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketGoodsSummaryQueryInfo", type: {:nullable, :message}}
  ],

"AutoSellSettingsInfo" => [
    %{name: "Settings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"TozTimeAdjustment" => [
    %{name: "Adjustment", type: :unknown}
  ],

"CheatTestGearEnchantRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}}
  ],

"CheatChangeActivationSpawnLayerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnLayerCuid", type: :cuid},
    %{name: "IsActivated", type: :bool}
  ],

"SkillAffectTargetAffectInfo" => [
    %{name: "__base__", type: {:struct, "SkillAffectInfo"}},
    %{name: "AffectTargetGuid", type: {:uint, 8}},
    %{name: "AffectSourceGuid", type: {:uint, 8}},
    %{name: "IsHit", type: :bool},
    %{name: "SkillAffectTargetStatsAffectInfo", type: {:nullable, {:struct, "SkillAffectTargetStatsAffectInfo"}}},
    %{name: "SkillAffectTargetMoveAffectInfo", type: {:nullable, {:struct, "SkillAffectTargetMoveAffectInfo"}}},
    %{name: "SkillAffectTargetStateAffectInfo", type: {:nullable, :message}}
  ],

"InstanceEventActionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ActionCuid", type: :cuid},
    %{name: "IsSuccess", type: :bool}
  ],

"CovenantGiftReceiveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "UpdateCovenantGiftInfo", type: {:nullable, {:struct, "CovenantGiftInfo"}}},
    %{name: "ReceiveGiftInfos", type: {:list, {:struct, "CovenantGiftReceiveInfo"}}}
  ],

"CharacterMoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CharacterGuid", type: {:uint, 8}},
    %{name: "CharacterMoveInfo", type: {:nullable, :message}}
  ],

"RealmAccountWarehouseExpandRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "SlotCount", type: {:int, 4}}
  ],

"CheatResetTerritoryBossResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"InteractionCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"CheatResetTerritoryBossRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MarketStrongholdTaxInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SlayingGradeSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "SlayingGrade", type: {:int, 2}}
  ],

"CheatClearRealmIntegrationBattleDeathCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SessionLogoutResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"UnlockedContentsNewMarkCheckResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ContentsUnlockKindType"}}
  ],

"StrongholdBattleOccupyAltarStartNotify" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackPhaseStartNotify"}}
  ],

"PartyJoinFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"PrivateChannelKeepaliveFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ChannelKind", type: {:enum, "PrivateChannelKindType"}}
  ],

"CrossRealmSeasonEntryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}}
  ],

"MountDeboardingInfo" => [
    %{name: "__base__", type: {:struct, "MountStateInfo"}},
    %{name: "MountDeboardReason", type: {:enum, "MountDeboardReasonType"}},
    %{name: "IsImmediateMountDespawn", type: :bool},
    %{name: "MountDespawnLocation_cm", type: :vector}
  ],

"FindRoadPathResultInfo" => [
    %{name: "Destination_cm", type: :vector},
    %{name: "RoadPathInfos", type: {:list, {:struct, "RoadPathInfo"}}},
    %{name: "PathNodeInfosToFirstRoadJunctionInfo", type: {:list, {:struct, "PathNodeInfo"}}},
    %{name: "TravelDistance_cm", type: :float}
  ],

"CheatCreateAndEquipGuiseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GuiseCuid", type: :cuid}
  ],

"MiniTalkCompleteCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MiniTalkCuid", type: :cuid}
  ],

"CovenantCancelInvitationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CancelFailedPlayerGuids", type: {:list, {:uint, 8}}}
  ],

"StrongholdStrongholdBattleNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "StrongholdBattleAttackPhaseType"}}
  ],

"ResurrectorSelectionExpiredNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BattalionSetAssemblyLocationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"ItemUseParameterInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"StrongholdWorldMapFirstOccupationRewardEarliestReceivableDateTimeNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}}
  ],

"CheatInstallStanceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StanceKind", type: {:enum, "StanceKindType"}}
  ],

"RegionContentPlayTimeInfoByDateTime" => [
    %{name: "BaseRemainingDuration_datetime", type: :datetime},
    %{name: "RechargedRemainingDuration_datetime", type: :datetime}
  ],

"RealmAccountPresentCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatAcquireFollowerPieceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatSetInvulnerableResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsInvulnerable", type: :bool}
  ],

"SendChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "InfoToShare", type: :string},
    %{name: "Text", type: :string}
  ],

"ArquiAttunementInfo" => [
    %{name: "LevelByArquiAttunementCuid", type: {:map, :cuid, {:int, 4}}},
    %{name: "AetherOptionLevelByCategoryCuidAndOptionCuid", type: {:map, :cuid, {:struct, "TMap<FTzCuid"}}}
  ],

"CrossRealmCovenantDiplomacyCancelAllianceApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"MarketSettlementInfo" => [
    %{name: "PlayerSettledCurrencyAmount", type: {:uint, 8}},
    %{name: "BaseSettlementInfo", type: {:nullable, {:struct, "SettlementInfo"}}},
    %{name: "StrongholdSettlementInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSettlementInfo"}}}
  ],

"MarketGoodsSummaryInfoQueryNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketGoodsSummaryQueryInfo", type: {:nullable, :message}},
    %{name: "MarketGoodsSummaryInfos", type: {:list, {:struct, "MarketGoodsSummaryInfo"}}}
  ],

"CheatAcquireAndSetToSquadFollowerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "Count", type: {:uint, 8}},
    %{name: "SlotNumber", type: {:struct, "unsigned_char"}}
  ],

"CovenantHistoryCheckCompleteArchitectureResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantHistoryInfos", type: {:list, {:struct, "CovenantHistoryInfo"}}}
  ],

"SeamlessEntityInfo" => [
    %{name: "EntityInfo", type: {:nullable, :message}},
    %{name: "PlacedDistrictCuid", type: :cuid},
    %{name: "PlacedZoneCuid", type: :cuid}
  ],

"ErFrontServerSessionCancelWaitingQueueRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PlayerLocationMonitoringSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CovenantParticipationInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantParticipationInfos", type: {:list, {:struct, "CovenantParticipationInfo"}}}
  ],

"LocationInfo" => [
    %{name: "FieldUid", type: {:struct, "FieldUid"}},
    %{name: "Location_cm", type: :vector},
    %{name: "FacingDirection", type: {:struct, "FRotator"}}
  ],

"WorldMapMarkerEditSettingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "WorldMapMarkerInfo", type: {:nullable, {:struct, "WorldMapMarkerInfo"}}}
  ],

"CheatBatchBossSpawnTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGrade", type: {:enum, "NpcGradeType"}},
    %{name: "RetainDuration_sec", type: {:int, 4}},
    %{name: "NextSpawnDuration_sec", type: {:int, 4}}
  ],

"ExpeditionNpcSummonWaveSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Info", type: {:nullable, {:struct, "ExpeditionNpcSummonWaveInfo"}}}
  ],

"CovenantQueryInvitedCovenantSummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CashShopMerchandiseInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "TextCuid", type: :cuid},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "ToyProductId", type: :string},
    %{name: "CurrencyAmount", type: {:int, 4}},
    %{name: "RewardMileagePoint", type: {:int, 4}},
    %{name: "RewardCuid", type: :cuid},
    %{name: "RewardReceiveKind", type: {:enum, "ShopMerchandiseReceiveKindType"}},
    %{name: "IsAutoUsing", type: :bool},
    %{name: "CovenantGiftCuid", type: :cuid},
    %{name: "RequiredPlayerLevel", type: {:int, 4}},
    %{name: "RequiredPlayerSlayingGrade", type: {:int, 4}},
    %{name: "RequiredQuestCuid", type: :cuid},
    %{name: "RequiredGrowthGuideCuid", type: :cuid},
    %{name: "RequiredCovenantLevel", type: {:int, 4}},
    %{name: "BuyLimitResetCycle", type: {:enum, "BuyOrCraftLimitResetCycleType"}},
    %{name: "TotalBuyLimitLevel", type: {:enum, "TotalBuyLimitLevelType"}},
    %{name: "TotalBuyLimitCount", type: {:int, 4}},
    %{name: "BuyLimitLevel", type: {:enum, "BuyOrCraftLimitLevelType"}},
    %{name: "BuyLimitCount", type: {:int, 4}},
    %{name: "MaxBuyCount", type: {:int, 4}}
  ],

"SkillAutoUseRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: :cuid}
  ],

"MarketGoodsSummaryInfo" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "GearAdditionalInfo", type: {:nullable, {:struct, "GearAdditionalInfo"}}},
    %{name: "LowestUnitListPrice_pe2", type: {:uint, 8}},
    %{name: "GoodsCount", type: {:int, 4}}
  ],

"TerritoryErosionItemConfigurationModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FavorQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid}
  ],

"FavoriteCollectionRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionCuid", type: :cuid},
    %{name: "IsRegistered", type: :bool}
  ],

"RealmIntegrationReserveRealmAccountDeletionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "DeleteDateTime", type: :datetime}
  ],

"CovenantMemberAnniversaryPointRankingInfo" => [
    %{name: "__base__", type: {:struct, "CovenantMemberAnniversaryPointInfo"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "AnniversaryPoint", type: {:uint, 8}}
  ],

"RealmInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid}
  ],

"CheatResetCashShopMerchandiseTotalBuyLimitCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MerchandiseCuid", type: :cuid}
  ],

"PartyMemberInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "PartyMemberCoreInfo"}}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "State", type: {:enum, "CharacterStateType"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
    %{name: "CustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "ErosionInfo"}}}
  ],

"TutorialHoldResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TutorialFilterKind", type: {:enum, "TutorialFilterKindType"}},
    %{name: "FilterValue", type: :string}
  ],

"TutorialStepForwardNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuid", type: :cuid},
    %{name: "PreviousStepNumber", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"BattalionConfirmCheckReadyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CheckReadyExpireDateTime", type: :datetime}
  ],

"ContaminationActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"TerritoryNoticeModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "Notice", type: :string}
  ],

"LevelSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NewLevel", type: {:int, 4}},
    %{name: "LastLevelUpDateTime", type: :datetime}
  ],

"TerritoryErosionInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "ErosionInfos", type: :unknown}
  ],

"PlayedCutSceneAddResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CutSceneCuid", type: :cuid}
  ],

"CheatResetAllCooldownRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SpellstoneAdditionalStatsInfo" => [
    %{name: "SpellstoneAdditionalSkillStatsInfo", type: {:nullable, {:struct, "SpellstoneAdditionalSkillStatsInfo"}}}
  ],

"HeadPieceDisplayOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsHeadPieceDisplayed", type: :bool}
  ],

"CovenantOrganizationStatsDetailInfo" => [
    %{name: "Stats", type: {:map, {:enum, "CovenantOrganizationStatSourceType"}, {:struct, "TMap<FTzCuid"}}}
  ],

"StrongholdTaxUpdateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatDistrictBlockResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantUpdateStrongholdInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdInfo", type: {:nullable, {:struct, "StrongholdInfo"}}}
  ],

"ExpeditionBossNpcLocationInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BossNpcGuid", type: {:uint, 8}},
    %{name: "BossNpcCuid", type: :cuid},
    %{name: "IsAlive", type: :bool},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CovenantBattalionCreateNotify" => [
    %{name: "__base__", type: {:struct, "BattalionCreateNotify"}},
    %{name: "CovenantBattalionInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantBattalionNotifyInfo"}}}
  ],

"MarketGoodsSummaryQueryInfo" => [
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "MainGroupCuid", type: :cuid},
    %{name: "SubGroupCuid", type: :cuid},
    %{name: "ItemCuid", type: :cuid}
  ],

"CharacterMoveToLocationParameterInfo" => [
    %{name: "Destination_cm", type: :vector}
  ],

"CheatExpeditionCloseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SealedSiteCuid", type: :cuid}
  ],

"SkillCasterLocationProxyInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "Location_cm", type: :vector}
  ],

"BuildingDowngradeRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}},
    %{name: "BuildingLevelToDowngrade", type: {:int, 4}}
  ],

"CheatSetLoggingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ErLogTag", type: :string},
    %{name: "IsLogging", type: :bool}
  ],

"SpellstoneAdditionalBuffStatsInfo" => [
    %{name: "DurationIncreaseAmount_msec", type: {:int, 4}},
    %{name: "DurationIncreaseRatio", type: :float},
    %{name: "IntervalDecreaseAmount_msec", type: {:int, 4}},
    %{name: "IntervalDecreaseRatio", type: :float},
    %{name: "IsImmuneToHealthPointsLoss", type: :bool},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RewardInfo", type: {:nullable, :message}}
  ],

"TutorialsInfo" => [
    %{name: "CompletedTutorialCuids", type: {:list, :cuid}},
    %{name: "CurrentTutorialCuid", type: :cuid},
    %{name: "CurrentTutorialStepNo", type: {:int, 4}}
  ],

"GearEnchantPreserveItemInfo" => [
    %{name: "__base__", type: {:struct, "ItemInfo"}},
    %{name: "GearEnchantPreserveItemAdditionalInfo", type: {:nullable, {:struct, "GearEnchantPreserveItemAdditionalInfo"}}}
  ],

"CheatTutorialBeginRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"CheatSetArquiAttunementLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiAttunementCuid", type: :cuid},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CrossRealmCovenantDiplomacyDeclareHostilityFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "PlayerBattalionOptionInfo"}}}
  ],

"CovenantAcquireCovenantMemberRoleRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :bool},
    %{name: "LastAcquiredDateTime", type: :datetime}
  ],

"PartyQuickJoinRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheckIsInCovenantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"ChatNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatInfo", type: {:nullable, :message}}
  ],

"AttackTargetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AttackTargetGuid", type: {:uint, 8}}
  ],

"ZoneTaxInfo" => [
    %{name: "AverageShopValueAddedTaxRate", type: :float},
    %{name: "AverageCraftedItemValueAddedTaxRate", type: :float},
    %{name: "AverageGatheringSiteEntranceFee", type: {:int, 4}}
  ],

"ChatEntityInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "PlayerInfo", type: {:nullable, {:struct, "ChatEntityPlayerInfo"}}},
    %{name: "CovenantGuid", type: {:nullable, {:uint, 8}}},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}}
  ],

"CheatAnniversaryAchievementAccomplishAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ArquiAttunementLevelUpRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiAttunementCuid", type: :cuid},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CovenantSupportApplyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSupportedFollowerGuids", type: {:list, {:uint, 8}}}
  ],

"CrossRealmSeasonRealmIntegrationBattleEntryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "CrossRealmSeasonEntryInitialDataNotify"}},
    %{name: "PlayerCount", type: {:int, 4}}
  ],

"DiplomacyChatCovenantSummaryInfo" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "LeaderChatEntityGuid", type: {:uint, 8}},
    %{name: "JoiningStatus", type: {:enum, "JoiningStatusType"}}
  ],

"CovenantMarketHistoryInfo" => [
    %{name: "__base__", type: {:struct, "CovenantHistoryInfo"}},
    %{name: "PlayerName", type: :string},
    %{name: "ItemCuid", type: :cuid},
    %{name: "ItemCount", type: {:uint, 8}},
    %{name: "GearQuality", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x41));uVar10=local_198&0xff;}uVar2=local_190;pcVar11=local_188;if((uVar10&1)==0){uVar2=uVar10>>1;pcVar11=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "EnhancementGrade", type: {:nullable, {:int, 2}}},
    %{name: "IsRegister", type: :bool},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyCount", type: {:uint, 8}}
  ],

"MarketFavoriteItemUnregisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"CashShopRefundableMerchandiseStorageBoxUpdateInfo" => [
    %{name: "AddSlotInfoList", type: {:list, {:struct, "CashShopRefundableMerchandiseStorageBoxSlotInfo"}}},
    %{name: "DeleteSlotGuidList", type: {:list, {:uint, 8}}}
  ],

"WorldMapMarkerInstallResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "InstalledWorldMapMarkerInfo", type: {:nullable, {:struct, "WorldMapMarkerInfo"}}}
  ],

"AutoDonateSettingOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "ItemFilterCuidToItemGrade", type: {:map, :cuid, {:enum, "ItemGradeType"}}},
    %{name: "IsContainEnhancedItem", type: :bool},
    %{name: "IsContainEnchantedItem", type: :unknown},
    %{name: "IsContainBasicCollectableItem", type: :unknown}
  ],

"FollowerAcquireRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerItemCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyApplyAllianceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatClearSeasonPassAchievementsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"GatheredResourceItemAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "AchievementSourceInfo"}},
    %{name: "ResourceKind", type: {:enum, "ResourceKindType"}}
  ],

"CheatSetStatResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBuildingPurificationCompleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
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
    %{name: "BattalionMemberCoreInfo", type: {:nullable, {:struct, "BattalionMemberCoreInfo"}}}
  ],

"CovenantTradeGoodsListQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "CovenantTradeGoodsQueryInfo"}}}
  ],

"CheatAddServerTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"GameNotificationOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GameNotificationOptionInfo", type: {:nullable, {:struct, "GameNotificationOptionInfo"}}}
  ],

"CovenantAppointCovenantMemberRoleRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantMemberRoleName", type: :string}
  ],

"MailCovenantGoldDividendLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "TotalAmount", type: {:uint, 8}},
    %{name: "DividendAmount", type: {:uint, 8}}
  ],

"WarpNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SourceWarpPointCuid", type: :cuid},
    %{name: "DestinationWarpPointCuid", type: :cuid}
  ],

"MailStrongholdBattleDeclarationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailStrongholdBattleLayoutInfo"}},
    %{name: "DefenseCovenantName", type: :string},
    %{name: "DefenseCovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "AttackCovenantName", type: :string},
    %{name: "AttackCovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"StrongholdBattleTeleportToSpireResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SkillCooldownSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CooldownSkillCuid", type: :cuid},
    %{name: "SkillCuid", type: :cuid},
    %{name: "CooldownDateTimeRangeInfo", type: {:nullable, {:struct, "DateTimeRangeInfo"}}},
    %{name: "CooldownUpdatedReason", type: {:enum, "CooldownUpdatedReasonType"}}
  ],

"CovenantGoodsRegistrationInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "RegisteredGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzRegisteredGoodsInfo"}}},
    %{name: "ServiceState", type: {:enum, "CovenantRegisteredGoodsServiceStateType"}}
  ],

"CheatRealmAccountRealmTransferInfoChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmTransferCuid", type: :cuid},
    %{name: "RealmTransferCount", type: {:int, 4}},
    %{name: "LastRealmTransferDateTime", type: {:nullable, :datetime}}
  ],

"UnlockedContentsNewMarkCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ContentsUnlockKindType"}}
  ],

"CovenantDiplomacyInviteReinforcementResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"TlsLikeEncryptHandshakeResult" => [
    %{name: "__base__", type: {:struct, "HandshakeResult"}},
    %{name: "TozNetwork.Handshake.TlsLikeEncryptor.TlsLikeEncryptHandshakeResult", type: :unknown}
  ],

"OccupiableNpcSummaryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "OccupiableNpcSummaryInfo", type: {:nullable, :message}}
  ],

"SpellstoneEquipRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RootSkillCuid", type: :cuid},
    %{name: "SpellstoneGuid", type: {:uint, 8}},
    %{name: "SpellstoneSlotInfo", type: {:nullable, {:struct, "SpellstoneSlotInfo"}}}
  ],

"RealmIntegrationReserveRealmAccountDeletionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"DestroyPointsUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "OldPoints", type: {:int, 4}},
    %{name: "NewPoints", type: {:int, 4}}
  ],

"CovenantDiplomacyConfirmAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"BlockBuildingNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "IsBlock", type: :bool},
    %{name: "BuildingBlockKind", type: {:enum, "BuildingBlockKindType"}}
  ],

"CheatClearRealmIntegrationBattleDeathCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RedrawableItemConfirmRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"CheatSpawnBuildingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatChangeCrossRealmSeasonMaxEnterablePlayerCapacityResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MountDeboardingByBuffInfo" => [
    %{name: "__base__", type: {:struct, "MountDeboardingInfo"}},
    %{name: "BuffCuid", type: :cuid}
  ],

"CheatChangeFocusTargetHealthPointsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantTradeDealRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "CovenantTradeDealRecordQueryInfo"}}}
  ],

"CharacterNameInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "Name", type: :string}
  ],

"StrongholdRewardStatNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "IsOccupiedByNpcCovenant", type: :bool}
  ],

"DeleteDiplomacyChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"StrongholdBattleCovenantBattalionSummaryInfo" => [
    %{name: "__base__", type: {:struct, "BattalionSummaryInfo"}},
    %{name: "CampaignStageCuid", type: :cuid},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}}
  ],

"MailsMarkAsReadInTabNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "UpperBoundDateTime", type: :datetime}
  ],

"NpcOccupationCovenantViewInfo" => [
    %{name: "__base__", type: {:struct, "NpcOccupationCovenantInfo"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"CheatMonsterBookSetNodeLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"GearErodedRestoreRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "MaterialItemGuid", type: {:uint, 8}}
  ],

"CheatCommandPresetRelayFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PresetTitle", type: :string}
  ],

"StrongholdBattleAttackInfo" => [
    %{name: "DeclareHavenCuid", type: :cuid},
    %{name: "AttackGroupInfo", type: {:nullable, {:struct, "StrongholdBattleAttackGroupInfo"}}},
    %{name: "Phase", type: {:enum, "StrongholdBattleAttackPhaseType"}},
    %{name: "DeclareDateTime", type: :datetime},
    %{name: "StandByEndDateTime", type: :datetime},
    %{name: "EndDateTime", type: :datetime},
    %{name: "CarriageLivingTotemNpcGuid", type: {:uint, 8}},
    %{name: "StrongholdBattleStartLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "TargetBuildingSpawnerCuids", type: {:map, {:enum, "StrongholdBattleAttackPhaseType"}, :cuid}},
    %{name: "OccupyAltarCurrentScore", type: {:int, 4}}
  ],

"EqualDistributionDividendInfo" => [
    %{name: "__base__", type: {:struct, "DividendInfo"}}
  ],

"CheatDespawnBuildingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SkillComboResetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsExpired", type: :bool},
    %{name: "ComboSeedSkillCuid", type: :cuid}
  ],

"MissionProgressCountChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MissionCuid", type: :cuid},
    %{name: "ProgressCount", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"CheatExpeditionOpenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpeditionCuid", type: :cuid},
    %{name: "SealedSiteCuid", type: :cuid}
  ],

"CheatInstallArquiruneRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"StrongholdBuildingPurifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "PurificationLevel", type: {:int, 4}}
  ],

"AllRealmInfoPubSubChannelUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "RealmStateInfos", type: {:list, {:struct, "RealmStateInfo"}}}
  ],

"StrongholdSummonWaveDefenseInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}}
  ],

"CovenantMemberAnniversaryPointInfo" => [
    %{name: "CovenantMemberGuid", type: {:uint, 8}},
    %{name: "CovenantMemberName", type: :string},
    %{name: "UpdateTime", type: :datetime}
  ],

"PartyConfirmInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "PartyInvitationInfo", type: {:nullable, {:struct, "PartyInvitationInfo"}}}
  ],

"PlayerCurrencyContainerUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatRemoveRankingDummyDataRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid}
  ],

"MarketFavoriteItemRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"CheatOverwriteCrossRealmRankingBoardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FollowerWorkAmountAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "AchievementSourceInfo"}},
    %{name: "FollowerWorkKind", type: {:enum, "FollowerWorkKindType"}}
  ],

"InfoAuthenticateComplete" => [
    %{name: "Success", type: :bool},
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
    %{name: "__base__", type: {:struct, "RankingAdditionalSourceInfo"}},
    %{name: "DeadCount", type: {:int, 4}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "AssistCount", type: {:int, 4}}
  ],

"PartySynchronizeMemberCoreInfoNotify" => [
    %{name: "__base__", type: {:struct, "PartySynchronizeMemberNotify"}},
    %{name: "CoreInfo", type: {:nullable, {:struct, "PartyMemberCoreInfo"}}}
  ],

"CheatResetCashShopMerchandiseBuyLimitCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "UpdatedMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"CheatTeleportByOffsetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PreviousLocation_cm", type: :vector},
    %{name: "Offset_cm", type: :vector}
  ],

"CovenantHistoryCheckCompleteArchitectureRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"PlayerSlotExpansionCostCurrencyAmountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantRealmTransferExecuteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UseItem", type: :bool},
    %{name: "UseCurrency", type: :bool},
    %{name: "CovenantName", type: :string}
  ],

"CheatDistributeStrongholdMarketTaxResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"MailCustomerServiceReplyLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}}
  ],

"CheatAllStancesAcquireResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}},
    %{name: "InstalledStance", type: {:enum, "StanceType"}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :bool},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "QuestsInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CheatPromoteFollowerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MarketBuyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "BuyCurrencyCuid", type: :cuid},
    %{name: "BuyCurrencyAmount", type: {:uint, 8}},
    %{name: "CovenantMarketFixedFeeCurrencyCuid", type: :cuid},
    %{name: "CovenantMarketFixedFeeCurrencyAmount", type: {:uint, 8}}
  ],

"PartyAppointLeaderRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MountUpdateSkillSlotInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MountSkillSlotIndex", type: {:enum, "MountSkillSlotIndexType"}},
    %{name: "IsUsedForContinuousCombat", type: :bool}
  ],

"CheatGetEnvironmentVariablesResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "Variables", type: {:map, :string, :string}}
  ],

"CheatDetachAllBuffsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmAccountWarehouseItemStoreResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseInventoryUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}}
  ],

"CheatTutorialCompleteAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyAdditionalInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"DatatoolHandshakeResponse" => [
    %{name: "ClientData", type: {:nullable, :message}}
  ],

"CovenantHistoryInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CreateDateTime", type: :datetime}
  ],

"CrossRegionPathResultInfo" => [
    %{name: "InterRegionStartWarpPointCuid", type: :cuid},
    %{name: "InterRegionDestinationWarpPointCuid", type: :cuid},
    %{name: "ReturnItemCuid", type: :cuid},
    %{name: "CovenantReturnHavenCuid", type: :cuid},
    %{name: "StartFindPathResult", type: {:nullable, {:struct, "IntraRegionPathResultInfo"}}},
    %{name: "DestinationFindPathResult", type: {:nullable, {:struct, "IntraRegionPathResultInfo"}}}
  ],

"PvpBattlePlayerId" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"StrongholdBattleCovenantBattalionMemberDisplayInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Gender", type: {:enum, "GenderType"}},
    %{name: "CustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
    %{name: "IsHeadPieceDisplayed", type: :bool}
  ],

"CheatRemoveVeilRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid}
  ],

"ItemDestroyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"BuildingUpgradeRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}},
    %{name: "BuildingLevelToUpgrade", type: {:int, 4}}
  ],

"PlayerSummaryInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Gender", type: {:enum, "GenderType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "Level", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
    %{name: "CovenantInvitable", type: :bool},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :string},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}},
    %{name: "LastLoginDateTime", type: {:nullable, :datetime}},
    %{name: "LastLogoutDateTime", type: {:nullable, :datetime}},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "RealmCuid", type: :cuid},
    %{name: "IsInServerDrivenPlay", type: :unknown},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}},
    %{name: "ReservedDeleteDateTime", type: {:nullable, :datetime}},
    %{name: "IsHeadPieceDisplayed", type: :unknown}
  ],

"ContaminationInfo" => [
    %{name: "Stage", type: {:enum, "ContaminationStageType"}},
    %{name: "UpdatedValue", type: {:int, 4}},
    %{name: "UpdatedDateTime", type: :datetime},
    %{name: "TotalDecrement_psec", type: {:int, 4}},
    %{name: "ContaminationNaturalDecreaseInfos", type: {:map, {:enum, "ContaminationNaturalDecreaseType"}, {:int, 4}}},
    %{name: "CastVeilDateTime", type: {:nullable, :datetime}},
    %{name: "RemoveVeilDateTime", type: {:nullable, :datetime}},
    %{name: "FullContamination", type: {:int, 4}}
  ],

"CovenantCampInitialInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "BuildingWorkInfoByWorkplaceCuid", type: {:map, :cuid, {:struct, "TSharedPtr<FTzBuildingWorkInfo"}}},
    %{name: "CovenantShopInfo", type: {:nullable, {:struct, "ShopInfo"}}}
  ],

"ErLoginServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "ErServerSessionInitializeInfo"}},
    %{name: "UniverseAccountInfo", type: {:nullable, {:struct, "UniverseAccountInfo"}}},
    %{name: "LatestLoggedInRealmCuid", type: :cuid},
    %{name: "RealmInfo", type: {:nullable, {:struct, "RealmInfo"}}},
    %{name: "PreregistrationInfo", type: {:nullable, {:struct, "PreregistrationInfo"}}},
    %{name: "Gsid", type: :string},
    %{name: "RealmIntegrationRealmInfos", type: {:list, {:struct, "RealmIntegrationRealmInfo"}}}
  ],

"SessionLogoutRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatClearCollectionFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StackableItemMultipleUseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "CovenantRewardInfo"}}},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "ExperiencePointsDelta", type: {:uint, 8}},
    %{name: "IsUpgradeSlayingGrade", type: :bool},
    %{name: "AmityDelta", type: {:map, :cuid, {:uint, 8}}},
    %{name: "SpiritualBondPowerDelta", type: {:uint, 8}},
    %{name: "CooldownExpireDateTimeRangeInfo", type: {:nullable, {:struct, "DateTimeRangeInfo"}}}
  ],

"CovenantQueryInvitedCovenantSummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfoAndInviteDateTimes", type: {:map, {:struct, "TSharedPtr<FTzCovenantSummaryInfo"}, {:struct, "(ESPMode)1"}}}
  ],

"MailStrongholdCannotPayMaintenanceCostLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "DebtAmount", type: {:uint, 8}}
  ],

"CheatApplyCovenantResearchSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ResearchSetCuid", type: :cuid}
  ],

"InventoryInfo" => [
    %{name: "ItemInfos", type: {:list, {:struct, "ItemInfo"}}},
    %{name: "MaxSlotCount", type: {:int, 4}}
  ],

"CheatClearCovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatChangeLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "ShowAllLevelUpEffect", type: :bool}
  ],

"SeasonPassLevelBuyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}}
  ],

"CheatTestRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RewardCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "RewardItemIndexWithCounts", type: {:list, {:struct, "RewardItemIndexWithCount"}}}
  ],

"CovenantRecommendBuildingWorkRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "BuildingWorkCuid", type: :cuid},
    %{name: "IsRecommended", type: :bool}
  ],

"CheatSwitchStanceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StanceKind", type: {:enum, "StanceKindType"}}
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
    %{name: "CoreInfo", type: {:nullable, {:struct, "BattalionMemberCoreInfo"}}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleName", type: :string},
    %{name: "SlayingGrade", type: {:int, 4}}
  ],

"CheatAcquireAllFollowerPieceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatStartStrongholdSummonWaveDefenseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantAddJoinApplicationsNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantJoinApplicationInfos", type: {:list, {:struct, "CovenantJoinApplicationInfo"}}}
  ],

"SelfieModeLeaveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"RegionContentPlayTimeInfo" => [
    %{name: "RegionContentKind", type: {:enum, "RegionContentKindType"}},
    %{name: "RegionContentPlayTimeInfo_sec", type: {:nullable, :message}},
    %{name: "RegionContentPlayTimeInfo_datetime", type: {:nullable, :message}},
    %{name: "RemainRechargePlayTimeLimit_sec", type: {:int, 4}}
  ],

"NonstackableItemQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "ItemQuickSlotDetailInfo"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"PlayerMarketTransactionHistoryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SpellstoneEquipResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: :cuid},
    %{name: "SpellstoneGuid", type: {:uint, 8}},
    %{name: "SpellstoneSlotInfo", type: {:nullable, {:struct, "SpellstoneSlotInfo"}}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"ItemAutoUseDeregisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"NormalDoodadInfo" => [
    %{name: "__base__", type: {:struct, "InteractableDoodadInfo"}},
    %{name: "NormalDoodadState", type: {:enum, "NormalDoodadStateType"}}
  ],

"BattalionInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "AllianceCovenantGuids", type: :unknown},
    %{name: "CovenantGrantedSkillCuids", type: :unknown},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "BattalionOptionInfo"}}},
    %{name: "SquadInfos", type: {:list, {:struct, "SquadInfo"}}},
    %{name: "MemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzBattalionMemberInfo"}}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "CheckReadyExpireDateTime", type: {:nullable, :datetime}},
    %{name: "IsJoinable", type: :bool},
    %{name: "BattalionWarpCooldownExpireTime", type: {:nullable, :datetime}}
  ],

"CheatTerritoryContaminationDecrementChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "ContaminationDecrement_psec", type: {:int, 4}}
  ],

"RealmAccountPresentCheckResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmAccountPresentRealmCuid", type: :cuid},
    %{name: "PlayersInfo", type: {:map, :string, {:struct, "TTuple<ETzClasseType"}}}
  ],

"CheatResetCashShopMerchandiseBuyLimitCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MerchandiseCuid", type: :cuid}
  ],

"OneShotSpecialMoveInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveToInfo"}},
    %{name: "Destination_cm", type: :vector},
    %{name: "DoodadCuid", type: :cuid}
  ],

"QuickSlotInfo" => [
    %{name: "SlotKind", type: {:enum, "QuickSlotKindType"}},
    %{name: "QuickSlotDetailInfo", type: {:nullable, :message}}
  ],

"SendCrossRealmChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "SendChatMessageRequest"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CovenantDiplomacyCancelReinforcementInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"NpcKillCountActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"CheatSetIgnoreCovenantMarketUsableJoinElapsedTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IgnoreCovenantMarketUsableJoinElapsedTime", type: :bool}
  ],

"CovenantBattalionInfo" => [
    %{name: "__base__", type: {:struct, "BattalionInfo"}},
    %{name: "ExpeditionInfo", type: {:nullable, :message}}
  ],

"OccupiableNpcOccupationStateUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid},
    %{name: "OccupationState", type: {:enum, "NpcOccupationStateType"}}
  ],

"QueryChatRoomRecordsInitializationInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatKind", type: {:enum, "ChatKindType"}}
  ],

"SeasonPassAchievementUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonPassAchievementInfo", type: {:nullable, :message}}
  ],

"CheatAddDeathPenaltyRecordRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RecordCount", type: {:int, 4}},
    %{name: "Level", type: {:nullable, {:int, 4}}},
    %{name: "DeathDateTime", type: {:nullable, :datetime}}
  ],

"CovenantEmblemSelectionInfo" => [
    %{name: "EmblemPresetCuid", type: :cuid},
    %{name: "EmblemCustomizeInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"TargetScanShareRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ScannedTargetGuids", type: {:map, {:int, 4}, {:uint, 8}}}
  ],

"CheatCloseFogResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FogCuid", type: :cuid}
  ],

"AccelerationUseHavenWorkResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "AccelerationActionKind", type: {:enum, "AccelerationActionKindType"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}},
    %{name: "PointCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PointCurrencyContainerUpdateInfo"}}}
  ],

"BattalionBattalionWarpConfirmRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ChatFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatCovenantRubyShopResetUseResetCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BuffRenewNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffInfo", type: {:nullable, {:struct, "BuffInfo"}}}
  ],

"CheatAccomplishQuestRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "QuestMissionSequence", type: {:int, 4}},
    %{name: "ReceiveReward", type: :bool}
  ],

"AttackTargetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AttackTargetGuid", type: {:uint, 8}}
  ],

"CovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantResearchCuid", type: :cuid},
    %{name: "HavenCuid", type: :cuid},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"ErLoginServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErServerAuthenticateInfo"}}
  ],

"FavorInfo" => [
    %{name: "Vuid", type: {:struct, "Vuid"}},
    %{name: "FavorTemplateCuid", type: :cuid},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "FavorAcceptedStrongholdCuid", type: :cuid},
    %{name: "FavorRandomRewardCuidCandidates", type: {:list, :cuid}}
  ],

"AlertPlayerUnregisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"BuildingResearchRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}},
    %{name: "ResearchCuid", type: :cuid},
    %{name: "ResearchLevel", type: {:int, 4}},
    %{name: "ResearchResumeGauge_mw", type: {:uint, 8}},
    %{name: "ResearchStartedDateTimeOnResume", type: {:nullable, :datetime}}
  ],

"PartyOrBattalionItemDistributionInfo" => [
    %{name: "PartyOrBattalionItemDistributionRule", type: {:enum, "PartyOrBattalionItemDistributionRuleType"}},
    %{name: "MinItemGradeToPrioritizeLeader", type: {:enum, "ItemGradeType"}}
  ],

"CheatKillFocusedCharacterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsSkipDyingAndFinishable", type: :bool}
  ],

"GearInfo" => [
    %{name: "__base__", type: {:struct, "ItemInfo"}},
    %{name: "GearAdditionalInfo", type: {:nullable, {:struct, "GearAdditionalInfo"}}}
  ],

"SelfieModeEnterNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"StrongholdProtectRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"MailToCovenantLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "ToCovenantName", type: :string}
  ],

"StrongholdBuildingDemolishResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"WarpRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WarpHelperGuid", type: {:uint, 8}},
    %{name: "WarpPointCuid", type: :cuid}
  ],

"ChatEntityCovenantInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :string},
    %{name: "EmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "StrongholdGradeType"}}
  ],

"StrongholdBattleAttackPhaseStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "BattalionMemberStatisticsInfos", type: {:list, {:struct, "StrongholdBattleCovenantBattalionMemberStatisticsInfo"}}}
  ],

"CovenantCancelJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"FollowerDispatchAutomationInfo" => [
    %{name: "DispatchAutomationState", type: {:enum, "FollowerDispatchAutomationStateType"}},
    %{name: "ProceedingDispatchAutomationCount", type: {:int, 4}},
    %{name: "MaxDispatchAutomationCount", type: {:int, 4}}
  ],

"RegisteredGoodsBuyCountInfo" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "Count", type: {:uint, 8}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"FindWarpPointsForAutoMoveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "StartWarpPointCuid", type: :cuid},
    %{name: "DestinationWarpPointCuid", type: :cuid},
    %{name: "Destination_cm", type: :vector}
  ],

"StrongholdBuildingPurifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleOccupyAltarChangeScoreNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "OccupyAltarCurrentScore", type: {:int, 4}}
  ],

"BattalionLeaveMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "BattalionLeaveReason", type: {:enum, "BattalionLeaveReasonType"}}
  ],

"GearMultipleEnhanceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearGuids", type: {:list, {:uint, 8}}},
    %{name: "MaterialItemCuid", type: :cuid},
    %{name: "MaterialItemGuids", type: {:list, {:uint, 8}}},
    %{name: "RequestEnhancementGrade", type: {:int, 2}}
  ],

"RedrawableItemConfirmResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ServerDrivenPlayFleeingStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}}
  ],

"FollowerKillingInfo" => [
    %{name: "KillerEntityName", type: :string},
    %{name: "KillerCovenantName", type: :string},
    %{name: "KillingLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CheatSetUrfModeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsUrfMode", type: :bool}
  ],

"CheatResetGoodsBuyCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatChangeCrossRealmSeasonMaxEnterablePlayerCapacityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonCuid", type: :cuid},
    %{name: "MaxEnterablePlayerCapacity", type: {:int, 4}}
  ],

"CovenantRubyShopOpenNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyJoinAllianceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatUserInventorySlotCountChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "UserInventoryKind", type: {:enum, "UserInventoryKindType"}},
    %{name: "MaxInventorySlotCount", type: {:int, 4}}
  ],

"StrongholdBattleRemoveNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"CashShopWindowDressingInfo" => [
    %{name: "SubCategoryCuid", type: :cuid},
    %{name: "MerchandiseCuid", type: :cuid},
    %{name: "MerchandiseGroup", type: {:int, 4}},
    %{name: "Step", type: {:int, 4}},
    %{name: "DisplayDateTime", type: :datetime},
    %{name: "StartDateTime", type: :datetime},
    %{name: "EndDateTime", type: :datetime},
    %{name: "IsShowDateTime", type: :bool},
    %{name: "ExtensionDescriptionCuid", type: :cuid},
    %{name: "TagKind", type: {:enum, "CashShopTagKindType"}},
    %{name: "RecommendSubCategoryCuid", type: :cuid},
    %{name: "RecommendSubCategorySortOrder", type: {:int, 4}},
    %{name: "IsHideAfterBuyCompleted", type: :unknown},
    %{name: "IsHideMerchandise", type: :unknown},
    %{name: "BackgroundColorKind", type: {:enum, "CashShopColorKindType"}},
    %{name: "FxKind", type: {:enum, "CashShopFxKindType"}},
    %{name: "FxColorKind", type: {:enum, "CashShopColorKindType"}},
    %{name: "BackgroundFxColorKind", type: {:enum, "CashShopColorKindType"}},
    %{name: "TagDisplayDuration_day", type: {:int, 4}}
  ],

"CovenantPayDividendResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DividendResultInfo", type: {:nullable, :message}}
  ],

"RealmAccountRealmTransferExecuteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DestinationRealmCuid", type: :cuid},
    %{name: "UseItem", type: :bool},
    %{name: "UseCurrency", type: :bool}
  ],

"CheatAddRankingDummyDataRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid}
  ],

"CharacterThreatListRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ThreateningCharacterGuid", type: {:uint, 8}}
  ],

"PlayerLocationMonitoringRegisterNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerLocationMonitoringInfo", type: {:nullable, :message}}
  ],

"QuestCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}}
  ],

"DefaultPreprocessResult" => [
    %{name: "Success", type: :bool}
  ],

"PlayerSkillSlotUpdateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "PlayerSkillSlotIndex", type: {:enum, "PlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "PlayerSkillSlotInfo"}}}
  ],

"ClanSponsorResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ClanCuid", type: :cuid},
    %{name: "Amity", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"SkillAutoUseDeregisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: :cuid}
  ],

"CheatCreateCovenantWarehouseItemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCuidAndCountInfo", type: {:nullable, {:struct, "CuidAndCountInfo"}}}
  ],

"CheatGetCheatEnabledPlayerNamesRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"PartyMemberCoreInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerName", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}}
  ],

"FollowerDispatchAutomationCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FollowerCuid", type: :cuid}
  ],

"CovenantTradeCategoryItemInfo" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "LowestPrice", type: {:uint, 8}},
    %{name: "LowestPricePerEach_pe3", type: {:uint, 8}},
    %{name: "GoodsCount", type: {:int, 4}}
  ],

"ShopAutoSellSettingUpdateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleAttackAltarStartNotify" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackPhaseStartNotify"}}
  ],

"InGameNotificationDeleteCategoryNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InGameNotificationCategory", type: {:enum, "InGameNotificationCategoryType"}},
    %{name: "DeletedGuids", type: {:list, {:uint, 8}}}
  ],

"PartyJoinApplicationInfo" => [
    %{name: "PartyLeaderGuid", type: {:uint, 8}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "PartyMemberInfo"}}}
  ],

"CovenantRegisteredGoodsRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "RegisteredGoodsInfo", type: {:nullable, {:struct, "RegisteredGoodsInfo"}}}
  ],

"StanceInstallResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "InstallRequestedStance", type: {:enum, "StanceType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}},
    %{name: "InstalledStance", type: {:enum, "StanceType"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
  ],

"CheatDestroyPointsChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatAnniversaryAchievementResetAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AnniversaryAchievementPointInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryAchievementPointInfo"}}}
  ],

"InteractionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"CheatGetCrossRealmSeasonMaxEnterablePlayerCapacityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonCuid", type: :cuid}
  ],

"CheatAcceptQuestRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "TeleportToQuestMissionLocation", type: :bool},
    %{name: "ReceivePrecedingQuestReward", type: :bool}
  ],

"CheatDowngradeBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid}
  ],

"RealmTransferredPlayerNameChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Name", type: :string}
  ],

"MountBoardingInfo" => [
    %{name: "__base__", type: {:struct, "MountStateInfo"}},
    %{name: "MountItemCuid", type: :cuid},
    %{name: "IsLeftBoarding", type: :bool},
    %{name: "PlayerFacingDirection", type: {:struct, "FRotator"}},
    %{name: "BoardingLocation_cm", type: :vector},
    %{name: "IsImmediateBoarding", type: :unknown},
    %{name: "IsMovingBoarding", type: :unknown}
  ],

"CheatApplySkillSlotQuickSlotAutoUsePresetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PresetCuid", type: :cuid}
  ],

"CheatAdjustLocationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LocationDelta_cm", type: :vector}
  ],

"TozMessageCacheElement" => [
    %{name: "__base__", type: {:struct, "MessageCacheElement"}},
    %{name: "message", type: {:nullable, :message}}
  ],

"FavorRefreshRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid}
  ],

"CovenantWatchDeregisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string}
  ],

"ItemAutoUseRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"BuildingWorkInfo" => [
    %{name: "OrderInfo", type: {:nullable, {:struct, "BuildingWorkOrderInfo"}}},
    %{name: "MaxWorkerCount", type: {:int, 4}},
    %{name: "CurrentWorkerCount", type: {:int, 4}},
    %{name: "ProgressInfo", type: {:nullable, {:struct, "ProgressInfo"}}}
  ],

"ItemTransmutationCurrencyRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TransmutationCurrencyRewardCuid", type: :cuid}
  ],

"OccupiableNpcSummaryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "OccupiableNpcSummaryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzOccupiableNpcSummaryInfo"}}}
  ],

"BattalionDismissFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MarketSellCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"FocusNotify" => [
    %{name: "__base__", type: {:struct, "FocusRequest"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"ExperiencePointsCovenantRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "CovenantRankingViewInfo"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"CheatEnabledModificationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CheatEnabled", type: :bool}
  ],

"StrongholdBattleCarriageLivingTotemDestroyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "DestroyerNameInfo", type: {:nullable, {:struct, "CharacterNameInfo"}}},
    %{name: "DestroyerCovenantName", type: :string}
  ],

"AlertPlayerRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RegisteredPlayerInfo", type: {:nullable, :message}}
  ],

"AccelerationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string},
    %{name: "AccelerationResultInfo", type: {:nullable, {:struct, "AccelerationResultInfo"}}}
  ],

"RealmIntegrationBattleWarpReturnResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MailErosionWithoutPermissionInstalledLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "InstallerGuid", type: {:uint, 8}},
    %{name: "InstalledLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "ErosionItemCuid", type: :cuid},
    %{name: "ExpectedContaminationAmount", type: {:int, 4}}
  ],

"BattalionRejectInvitationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"StrongholdBattleJoinedCovenantInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "CovenantVuid", type: {:struct, "Vuid"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"ErFrontServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErServerAuthenticateInfo"}}
  ],

"CovenantSynchronizeMemberBattalionGuidNotify" => [
    %{name: "__base__", type: {:struct, "CovenantSynchronizeMemberNotify"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"StrongholdWorldMapGeneralShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "UpdatedGeneralShopInfo", type: {:nullable, {:struct, "StrongholdWorldMapGeneralShopInfo"}}}
  ],

"FollowerResurrectionNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"CheatAccomplishQuestResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "QuestsInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CheatCreateAndEquipGearSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGrade", type: {:enum, "ItemGradeType"}},
    %{name: "BoundAndEroded", type: {:enum, "BoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}}
  ],

"FollowerDispatchOverallInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "FollowerCoreInfo"}}},
    %{name: "DispatchInfo", type: {:nullable, {:struct, "FollowerDispatchInfo"}}},
    %{name: "DispatchAutomationInfo", type: {:nullable, {:struct, "FollowerDispatchAutomationInfo"}}},
    %{name: "WorkInfo", type: {:nullable, {:struct, "FollowerWorkInfo"}}},
    %{name: "DeathInfo", type: {:nullable, {:struct, "FollowerDeathInfo"}}}
  ],

"PlayerLocationMonitoringRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "PlayerLocationMonitoringInfo", type: {:nullable, :message}}
  ],

"RealmIntegrationBattleScoreUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ScoreInfo", type: {:nullable, :message}}
  ],

"CovenantLoseStrongholdNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"SkillUseOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatOpenAllFogRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FollowerDispatchAutomationCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerCuid", type: :cuid}
  ],

"RealmAccountLogoutRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatRealmIntegrationConvertToIntegratedRealmAccountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PreviousRealmCuid", type: :cuid}
  ],

"PlayerRealmIntegrationBattleSeasonInfo" => [
    %{name: "DeathCount", type: {:int, 4}}
  ],

"GenerateVivoxTokenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "VivoxActionKind", type: {:enum, "ErVivoxActionKindType"}},
    %{name: "Subject", type: :string}
  ],

"HavenOperationInfo" => [
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}},
    %{name: "DeployedLivingTotemCuid", type: :cuid}
  ],

"SpecialGearEnhancementUseInfo" => [
    %{name: "LastUseSpecialGearEnhancementScheduleCuid", type: :cuid},
    %{name: "UseCount", type: {:int, 4}}
  ],

"StrongholdBattleBuildingDestroyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "BuildingDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "BuildingKind", type: {:enum, "BuildingKindType"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "DestroyerNameInfo", type: {:nullable, {:struct, "CharacterNameInfo"}}},
    %{name: "DestroyerCovenantName", type: :string}
  ],

"ErFrontServerInitialAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErFrontServerAuthenticateInfo"}},
    %{name: "UniverseAccountGuid", type: {:uint, 8}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"CovenantSynchronizeHighestUpgradedBuildingLevelInfosNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantHighestUpgradedBuildingLevelInfos", type: {:map, :cuid, {:int, 4}}}
  ],

"FollowerItemAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "ItemAdditionalInfo"}},
    %{name: "Tier", type: {:int, 4}},
    %{name: "Level", type: {:int, 4}},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "LastLevelUpDateTime", type: :datetime}
  ],

"DeathPenaltyDeleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"PartySynchronizeMemberLocationInfoNotify" => [
    %{name: "__base__", type: {:struct, "PartySynchronizeMemberNotify"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"MonsterBookCollectionInfo" => [
    %{name: "CollectionCuid", type: :cuid},
    %{name: "AccomplishedRewardPhase", type: {:struct, "unsigned_char"}}
  ],

"CheatDiscoverAllSelfieDoodadSpawnersResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantInfo" => [
    %{name: "CrossRealmCovenantDiplomacyInfos", type: {:nullable, {:struct, "CovenantDiplomacyInfos"}}},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "Name", type: :string},
    %{name: "Level", type: {:int, 4}},
    %{name: "LevelUpLastUpdatedDateTime", type: :datetime},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "CovenantJoinKind", type: {:enum, "CovenantJoinKindType"}},
    %{name: "CovenantMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantMemberInfo"}}},
    %{name: "MaxCovenantMemberCount", type: {:int, 2}},
    %{name: "Notice", type: :string},
    %{name: "NoticeHarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "NoticeLastUpdatedDateTime", type: :datetime},
    %{name: "Introduction", type: :string},
    %{name: "IntroductionHarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "CovenantCampOccupancyInfo", type: {:nullable, {:struct, "CovenantCampOccupancyInfo"}}},
    %{name: "OccupiedStrongholdInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdInfo"}}},
    %{name: "HavenOrganizationStatsDetailInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzHavenOrganizationStatsDetailInfo"}}},
    %{name: "MainHavenCuid", type: :cuid},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleInfos", type: {:list, {:struct, "CovenantMemberRoleInfo"}}},
    %{name: "CovenantHighestUpgradedBuildingLevelInfos", type: {:map, :cuid, {:int, 4}}},
    %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}},
    %{name: "CovenantLivingTotemInfos", type: {:list, {:struct, "CovenantLivingTotemInfo"}}},
    %{name: "CovenantResearchInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantResearchInfo"}}},
    %{name: "CovenantDiplomacyInfos", type: {:nullable, {:struct, "CovenantDiplomacyInfos"}}},
    %{name: "PlayerLocationMonitoringInfos", type: {:list, {:struct, "PlayerLocationMonitoringInfo"}}},
    %{name: "CovenantOutLinkInfos", type: {:map, {:enum, "CovenantOutLinkKindType"}, {:struct, "TSharedPtr<FTzCovenantOutLinkInfo"}}},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "CovenantCampaignInfo", type: {:nullable, :message}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "StrongholdGradeType"}},
    %{name: "CovenantRealmTransferInfo", type: {:nullable, {:struct, "CovenantRealmTransferInfo"}}},
    %{name: "LastCovenantRealmTransferDateTime", type: {:nullable, :datetime}},
    %{name: "LastPlunderDeclaredDateTime", type: {:nullable, :datetime}},
    %{name: "LastRealmIntegratedDateTime", type: {:nullable, :datetime}},
    %{name: "NeedChangeName", type: :bool}
  ],

"OccupiableNpcOccupationUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "OccupationDateTime", type: :datetime},
    %{name: "OccupationScore", type: {:int, 4}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :datetime}}
  ],

"BasicAchievementPrivateChannelKeepaliveFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatChangeStrongholdBuildingLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmIntegrationBattleWarpReturnRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RealmAccountWarehouseItemStoreRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"BattalionBanishMemberFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantRecommendResourceKindFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}}
  ],

"CheatOverwriteCrossRealmRankingBoardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid}
  ],

"PartyJoinRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"WorldMapPvpBattleKillDeathInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "VictimPvpBattleKillDeathCountInfo", type: {:nullable, :message}},
    %{name: "KillerPvpBattleKillDeathCountInfo", type: {:nullable, :message}}
  ],

"ErFrontServerReauthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErFrontServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"ArquiruneInstallResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: :cuid},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CspChannelInfo" => [
    %{name: "Name", type: :string},
    %{name: "Url", type: :string},
    %{name: "ChannelId", type: :string}
  ],

"PartyOptionInfo" => [
    %{name: "RegionCuid", type: :cuid},
    %{name: "Name", type: :string},
    %{name: "Purpose", type: {:enum, "PartyPurposeType"}},
    %{name: "PartyJoiningLimitKind", type: {:enum, "PartyJoiningLimitKindType"}},
    %{name: "MinLevelLimit", type: {:int, 4}},
    %{name: "MinSlayingGradeLimit", type: {:int, 2}},
    %{name: "CanInviteOrJoinApplyOnlyFriendOrSameCovenant", type: :bool},
    %{name: "IsAutomatedNewComerApproval", type: :bool},
    %{name: "PartyItemDistributionInfo", type: {:nullable, {:struct, "PartyOrBattalionItemDistributionInfo"}}}
  ],

"CheatClearFollowerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SkillItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "SkillTargetingInfo", type: {:nullable, :message}}
  ],

"GearErodedRestorationResultInfo" => [
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "IsEroded", type: :bool},
    %{name: "IsBound", type: :unknown},
    %{name: "IsStorable", type: :unknown},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"BattalionChangePurposeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}}
  ],

"MarketStrongholdTaxInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketStrongholdTaxInfos", type: {:list, {:struct, "MarketStrongholdTaxInfo"}}}
  ],

"CheatRespawnNpcResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"TargetScanShareNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ScannedTargetInfos", type: {:map, {:int, 4}, {:struct, "TSharedPtr<FTzSharedTargetCharacterInfo"}}}
  ],

"CovenantCampaignSectorLeaveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpireTime", type: :datetime}
  ],

"CashShopRefundableMerchandiseStorageBoxSlotInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "ToyProductId", type: :string},
    %{name: "RefundExpirationDateTime", type: :datetime},
    %{name: "TargetCuid", type: :cuid}
  ],

"CheatResetDiscoveredSelfieDoodadSpawnersResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatPaidAttendanceResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "PaidAttendanceInfo"}}}
  ],

"FollowerDispatchAbortRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"CovenantWarehouseUpdateInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "InventoryUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}}
  ],

"ThreatPointsNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetGuid", type: {:uint, 8}},
    %{name: "ThreatPoints", type: {:map, {:uint, 8}, {:uint, 8}}}
  ],

"RandomBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "BossSpawnInfo"}},
    %{name: "BossRandomSpawnDataCuid", type: :cuid},
    %{name: "NpcCuid", type: :cuid},
    %{name: "NpcGuid", type: {:uint, 8}}
  ],

"CovenantGoodsRegistrationManagementModeCommandRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "Command", type: {:enum, "ShopManagementModeCommandType"}}
  ],

"AnniversaryAchievementPrivateChannelOpenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PrivateChannelKeepaliveInterval_sec", type: {:int, 4}}
  ],

"NoticeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Message", type: :string}
  ],

"MailStrongholdOccupiedLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "HeadquartersNpcCuid", type: :cuid}
  ],

"CovenantConfirmJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"BuildingWorkObjectiveInfo" => [
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}},
    %{name: "CuidValue01", type: :cuid},
    %{name: "IntegerValue01", type: {:uint, 8}},
    %{name: "IntegerValue02", type: {:uint, 8}}
  ],

"CharacterRecordInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "CharacterNameInfo", type: {:nullable, {:struct, "CharacterNameInfo"}}},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}},
    %{name: "IsPvpStatsAffectedCharacter", type: :bool}
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
    %{name: "Cuid", type: :cuid},
    %{name: "CovenantCount", type: {:int, 4}},
    %{name: "TotalCovenantMemberCount", type: {:int, 4}},
    %{name: "UsingCapacity", type: {:int, 4}},
    %{name: "LimitCapacity", type: {:int, 4}}
  ],

"CheatPlayerLocationChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FindClosestLocationOnNavMeshResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ClosestLocationOnNavMeshRegionCuid", type: :cuid},
    %{name: "ClosestLocationOnNavMesh_cm", type: :vector}
  ],

"CovenantBattalionExpeditionFailNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"ErTozMessage" => [
    %{name: "__base__", type: :unknown}
  ],

"StrongholdPlayerCancelTeleportNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"GoldHistoryInfo" => [
    %{name: "IncomeHistories", type: {:map, {:enum, "GoldIncomeKindType"}, {:uint, 8}}},
    %{name: "ExpenseHistories", type: {:map, {:enum, "GoldExpenseKindType"}, {:uint, 8}}}
  ],

"CheatCreateAndSelectMountItemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MountItemCuid", type: :cuid}
  ],

"BuildingInfo" => [
    %{name: "__base__", type: {:struct, "CharacterInfo"}},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "BuildingWorkInfo"}}},
    %{name: "BuildingAccessPermissionKind", type: {:enum, "BuildingAccessPermissionKindType"}},
    %{name: "IsBaseBuildingExist", type: :bool},
    %{name: "IsBlocked", type: :bool},
    %{name: "LastChangeDateTime", type: :datetime}
  ],

"BattalionSummaryInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "BattalionOptionInfo"}}},
    %{name: "BattalionLeaderInfo", type: {:nullable, {:struct, "BattalionMemberInfo"}}},
    %{name: "AverageMemberLevel", type: {:int, 4}},
    %{name: "MemberCount", type: {:int, 4}},
    %{name: "BattalionLeaderLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "IsJoinable", type: :bool}
  ],

"RealmIntegrationBattleResultUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "RealmResults", type: {:list, {:struct, "RealmIntegrationBattleRealmResult"}}}
  ],

"DeathPenaltyRecordInfoAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeathPenaltyRecordInfo", type: {:nullable, :message}}
  ],

"CovenantSupportBuildingWorkInfo" => [
    %{name: "BuildingCuid", type: :cuid},
    %{name: "OrderInfo", type: {:nullable, {:struct, "BuildingWorkOrderInfo"}}}
  ],

"PvpRecordAttackerPlayerInfo" => [
    %{name: "__base__", type: {:struct, "PvpRecordPlayerInfo"}},
    %{name: "Damage", type: {:uint, 8}},
    %{name: "AttackerKind", type: {:enum, "PvpRecordAttackerKindType"}},
    %{name: "LastAttackDateTime", type: :datetime}
  ],

"PartyDismissNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyDismissReason", type: {:enum, "PartyLeaveOrDismissReasonType"}}
  ],

"ErLoginServerInitialAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErLoginServerAuthenticateInfo"}},
    %{name: "Market", type: {:enum, "MarketType"}},
    %{name: "AuthenticationKind", type: {:enum, "AuthenticationKindType"}},
    %{name: "OsKind", type: {:enum, "OsKindType"}},
    %{name: "OsVersion", type: :string},
    %{name: "DeviceModel", type: :string},
    %{name: "Adid", type: :string},
    %{name: "Idfv", type: :string},
    %{name: "CountryCode", type: :string},
    %{name: "Language", type: :string},
    %{name: "AppVersion", type: :string},
    %{name: "OsType", type: {:enum, "NxLogOsType"}},
    %{name: "OsName", type: :string}
  ],

"MonsterBookNodeReceiveLevelUpRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NodeCuid", type: :cuid}
  ],

"DateTimeRangeInfo" => [
    %{name: "FromDateTime", type: :datetime},
    %{name: "ToDateTime", type: :datetime}
  ],

"RegisterReturnPlaceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegisteredReturnPlaceDoodadSpawnerCuid", type: :cuid}
  ],

"TalkNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "TalkCuid", type: :cuid}
  ],

"BattalionSetAssemblyLocationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"FavoriteCraftRecipeInfo" => [
    %{name: "RewardCuid", type: :cuid},
    %{name: "RegisterDateTime", type: :datetime}
  ],

"SeamlessDoodadInfo" => [
    %{name: "__base__", type: {:struct, "SeamlessEntityInfo"}}
  ],

"BattalionConfirmJoinApplicationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}}
  ],

"CheatUninstallAllArquirunesResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveSetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "StrategicObjectiveTargetGuidList", type: {:list, {:uint, 8}}}
  ],

"StrongholdWorldMapGeneralShopInfo" => [
    %{name: "GeneralShopLevel", type: {:int, 4}},
    %{name: "ServiceState", type: {:enum, "ShopServiceStateType"}},
    %{name: "RegisteredGoodsInfos", type: {:list, {:struct, "RegisteredGoodsInfo"}}}
  ],

"ServerDrivenPlayRecordsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Infos", type: {:list, {:struct, "ServerDrivenPlayRecordsInfo"}}}
  ],

"PlayerInitializeInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozInitializeMessage"}},
    %{name: "PlayerInitializeInfo", type: {:nullable, {:struct, "PlayerInitializeInfo"}}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "CovenantInfo"}}},
    %{name: "CovenantBattalionInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantBattalionNotifyInfo"}}},
    %{name: "FirstLoginAsPlayerDateTime", type: {:nullable, :datetime}},
    %{name: "ReturningUserReturnedDateTime", type: {:nullable, :datetime}},
    %{name: "ContentsActivationFlags", type: {:list, :bool}}
  ],

"MultipleItemSelector" => [
    %{name: "__base__", type: {:struct, "ItemSelector"}}
  ],

"RealmAccountDeleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"PartyOptionUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "PartyOptionInfo"}}}
  ],

"SettlementInfo" => [
    %{name: "TaxRate_pe2", type: {:int, 4}},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "SettledCurrencyAmount_pe2", type: {:uint, 8}}
  ],

"CheatStrongholdBattlePhaseTransitionEventResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"DeleteFromChatBlockListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatEntityGuid", type: {:uint, 8}}
  ],

"StrongholdBattleStatisticsUpdateInfo" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleStatisticsEventInfo"}},
    %{name: "StrongholdBattleStatisticsInfo", type: {:nullable, :message}}
  ],

"CovenantBattalionExpeditionDeployStopLivingTotemFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"GoodsBuyCountInfo" => [
    %{name: "GoodsCuid", type: :cuid},
    %{name: "Count", type: {:uint, 8}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"CheatDeleteChatEntityResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"DeathPenaltyAutoRecoveryInfo" => [
    %{name: "IsFreeRecovery", type: :bool},
    %{name: "RemainingCount", type: {:int, 4}}
  ],

"TlsLikeEncryptClientHello" => [
    %{name: "unknown_name", type: :unknown}
  ],

"CheatCraftCovenantLivingTotemResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StanceAcquireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InstallAndSwitchResultCode", type: {:enum, "ResultCodeType"}},
    %{name: "AcquiredStance", type: {:enum, "StanceType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}},
    %{name: "InstalledStance", type: {:enum, "StanceType"}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
  ],

"MarketFavoriteItemInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}}
  ],

"PlayerAutoUseInfo" => [
    %{name: "ItemCuids", type: {:list, :cuid}},
    %{name: "RootSkillCuids", type: {:list, :cuid}}
  ],

"CovenantCampBuildingCraftRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingCraftCuidAndCountInfo", type: {:nullable, {:struct, "CuidAndCountInfo"}}},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"TimeCrevicePlayerPvpScoreRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "PvpScoreRankingViewInfo"}},
    %{name: "RealmCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyInfo" => [
    %{name: "__base__", type: {:struct, "CovenantDiplomacyInfo"}},
    %{name: "SeasonCuid", type: :cuid},
    %{name: "MatchingGroupCuid", type: :cuid},
    %{name: "RequestCovenantRealmCuid", type: :cuid},
    %{name: "ResponseCovenantRealmCuid", type: :cuid}
  ],

"CovenantCampOfficeInfo" => [
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "HavenOperationInfo", type: {:nullable, {:struct, "HavenOperationInfo"}}},
    %{name: "CovenantCampOfficeScaleInfo", type: {:nullable, {:struct, "CovenantCampOfficeScaleInfo"}}},
    %{name: "CovenantCampChangeCooldownExpireDateTime", type: :datetime},
    %{name: "CovenantCampOccupancyDateTime", type: :datetime}
  ],

"TutorialCompleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"ReturnPlaceDoodadInfo" => [
    %{name: "__base__", type: {:struct, "InteractableDoodadInfo"}}
  ],

"ServerDrivenPlayHuntingSiteChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HuntingSiteCuid", type: :cuid},
    %{name: "StartLocation_cm", type: :vector},
    %{name: "Reason", type: {:enum, "EntitySpawnRemoveReasonType"}}
  ],

"RedrawableItemAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "ItemAdditionalInfo"}},
    %{name: "ExcludedItemCuidsWhenRedrawing", type: {:list, :cuid}}
  ],

"MailSendCountQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatEnchantItemResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingAccessPermissionNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSubscriptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzBuildingSubscriptionInfo"}}}
  ],

"SummonedNpcDeathNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcCuid", type: :cuid}
  ],

"PartyRejectInvitationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"CovenantCurrencyInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "CurrencyUpdateInfo", type: {:nullable, {:struct, "PointCurrencyContainerUpdateInfo"}}},
    %{name: "CovenantTaxAcquireInfo", type: {:nullable, {:struct, "CovenantTaxAcquireInfo"}}}
  ],

"CovenantGoodsRegistrationManagementModeKickoutNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}}
  ],

"CovenantTradeGoodsSalesInfo" => [
    %{name: "__base__", type: {:struct, "CovenantTradeGoodsInfo"}},
    %{name: "SalesState", type: {:enum, "CovenantTradeSalesStateType"}},
    %{name: "NetProfit", type: {:uint, 8}}
  ],

"ShopSettingsInfo" => [
    %{name: "AutoBuySettingsInfo", type: {:nullable, {:struct, "AutoBuySettingsInfo"}}},
    %{name: "AutoSellSettingsInfo", type: {:nullable, {:struct, "AutoSellSettingsInfo"}}}
  ],

"EntanglementTriggerWorldActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"SkillResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "IsExecutingBegun", type: :bool}
  ],

"RealmAccountWarehouseExpandResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MaxRealmAccountWarehouseSlotCount", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"MailCovenantPlunderLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantAssetMigrationInfo", type: {:nullable, {:struct, "CovenantAssetMigrationInfo"}}}
  ],

"CheatSpawnTerritoryBossRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DistrictCuid", type: :cuid}
  ],

"SeasonPassLevelRewardAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonPassCuid", type: :cuid}
  ],

"CovenantParticipationInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "LivingTotemLocation", type: :vector},
    %{name: "LivingTotemMovePathInfo", type: {:nullable, {:struct, "MovePathInfo"}}},
    %{name: "StoppedLivingTotemDeployTime", type: {:nullable, :datetime}}
  ],

"InstanceEventActionStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ActionCuid", type: :cuid}
  ],

"PartyConfirmJoinApplicationFailNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}}
  ],

"CharacterPublicStatsInfo" => [
    %{name: "__base__", type: {:struct, "CharacterStatsInfo"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ExpeditionOpenNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "ExpeditionCuid", type: :cuid}
  ],

"CheatNpcCombatLogNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Message", type: :string}
  ],

"CheatAcquireStanceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StanceKind", type: {:enum, "StanceKindType"}}
  ],

"QuestMissionCompletableLocationCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestMissionCuid", type: :cuid}
  ],

"CollectionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionCuid", type: :cuid},
    %{name: "RewardStatCuid", type: :cuid},
    %{name: "ItemAddInfo", type: {:nullable, {:struct, "ItemAddInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :bool}
  ],

"PlayerEmergencyEscapeInfo" => [
    %{name: "LastEscapeDateTime", type: :datetime},
    %{name: "DailyUseCount", type: {:int, 4}}
  ],

"WorldEventInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"InGameNotificationDeleteCategoryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InGameNotificationCategory", type: {:enum, "InGameNotificationCategoryType"}}
  ],

"DistrictFavorBossInfo" => [
    %{name: "BossChaseGauge", type: {:int, 4}},
    %{name: "IsFavorBossActivated", type: :bool}
  ],

"ItemCreateAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "ItemAdditionalInfo"}},
    %{name: "GearEnhancementGrade", type: {:int, 2}}
  ],

"StrongholdProtectionInfo" => [
    %{name: "ProtectionStartDateTime", type: {:nullable, :datetime}},
    %{name: "ProtectionEndDateTime", type: {:nullable, :datetime}},
    %{name: "ProtectionRestrictionEndDateTime", type: {:nullable, :datetime}},
    %{name: "ReservationDateTime", type: {:nullable, :datetime}}
  ],

"CovenantUpdateNoticeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Notice", type: :string},
    %{name: "HarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"HealthPointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"OccupiableNpcInactivityExpirationDateTimeUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "InactivityExpirationDateTime", type: {:nullable, :datetime}}
  ],

"CheatOverwriteRankingBoardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid}
  ],

"StrongholdInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "StrongholdBattleAttackPhaseType"}},
    %{name: "BuildingSubscriptionInfos", type: {:list, {:struct, "BuildingSubscriptionInfo"}}},
    %{name: "GeneralShopInfo", type: {:nullable, {:struct, "ShopInfo"}}},
    %{name: "CovenantShopInfo", type: {:nullable, {:struct, "ShopInfo"}}}
  ],

"CovenantShopHistoryInfo" => [
    %{name: "__base__", type: {:struct, "CovenantHistoryInfo"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "ItemCuid", type: :cuid},
    %{name: "Count", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"ConvenienceOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ConvenienceOptionInfo", type: {:nullable, {:struct, "ConvenienceOptionInfo"}}}
  ],

"CovenantQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfo", type: {:nullable, {:struct, "CovenantSummaryInfo"}}},
    %{name: "IsJoinApplied", type: :bool},
    %{name: "IsInvited", type: :bool},
    %{name: "LeaderCustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "LeaderCostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
    %{name: "LeaderLevel", type: {:int, 4}},
    %{name: "LeaderGender", type: {:enum, "GenderType"}},
    %{name: "LeaderClasse", type: {:enum, "ClasseType"}}
  ],

"StrongholdBattleTotalHealDoneStatisticsInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TotalHealDone", type: {:uint, 8}}
  ],

"PlayerPrivateStatsInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}}
  ],

"GearBatchCraftResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}},
    %{name: "CraftResultInfos", type: {:list, {:struct, "CraftResultInfo"}}},
    %{name: "CraftCountInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCraftCountInfo"}}}
  ],

"BuffInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Cuid", type: :cuid},
    %{name: "StackCount", type: {:int, 4}},
    %{name: "CreatedTime", type: :datetime},
    %{name: "ExpireTime", type: :datetime},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "HealthPoints", type: {:uint, 8}},
    %{name: "SpellstoneAdditionalStatsInfo", type: {:nullable, {:struct, "SpellstoneAdditionalStatsInfo"}}}
  ],

"RealmIntegrationCancelRealmAccountDeletionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"StrongholdBattleCovenantBattalionMemberConveneNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "ExpireTime", type: :datetime}
  ],

"TutorialHoldRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialFilterKind", type: {:enum, "TutorialFilterKindType"}},
    %{name: "FilterValue", type: :string}
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CausedAutomaticallyProceedingQuestVuid", type: {:struct, "Vuid"}}
  ],

"CheatMonsterBookResetCategoryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "MonsterBookInfo", type: {:nullable, {:struct, "MonsterBookInfo"}}}
  ],

"CovenantRubyShopBuyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"WarpReturnResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatChangeCrossRealmMaintenanceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionContentKind", type: {:enum, "RegionContentKindType"}},
    %{name: "IsUnderMaintenance", type: :bool}
  ],

"CovenantSynchronizeMemberLevelNotify" => [
    %{name: "__base__", type: {:struct, "CovenantSynchronizeMemberNotify"}},
    %{name: "Level", type: {:int, 4}}
  ],

"MailSendConfirmRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatTeleportToSpawnerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SpawnerCuid", type: :cuid}
  ],

"RegionContentPlayTimeInfoBySec" => [
    %{name: "BaseRemainingDuration_sec", type: {:int, 4}},
    %{name: "RechargedRemainingDuration_sec", type: {:int, 4}}
  ],

"CheatOpenFogRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FogCuid", type: :cuid}
  ],

"CheatCreateAndEquipGearsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}}
  ],

"PubSubChannelInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelDataNotify"}}
  ],

"CovenantBattalionExpeditionLivingTotemDepartureFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatOverwriteRankingBoardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantBattalionNotifyInfo" => [
    %{name: "CreateDateTime", type: :datetime},
    %{name: "IsNotExposeToBattalionList", type: :bool}
  ],

"ItemTransmutationCurrencyRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TransmutationCurrencyRewardCuid", type: :cuid},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ShowLevelUpEffectNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LastLevelForLevelUpNotify", type: {:int, 4}}
  ],

"BattalionSetAssemblyLocationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PvpBattleCovenantId" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"DiplomacyChatCovenantSummaryInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "DiplomacyChatCovenantSummaryInfos", type: {:list, {:struct, "DiplomacyChatCovenantSummaryInfo"}}}
  ],

"PlayerRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "RankingViewInfo"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "Name", type: :string},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantName", type: :string}
  ],

"ShopAutoBuySettingUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "ShopCuid", type: :cuid},
    %{name: "AutoBuyInfos", type: {:list, {:struct, "AutoBuyInfo"}}}
  ],

"CostumeInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}}
  ],

"QuickSlotModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuickSlotIndex", type: {:enum, "QuickSlotIndexType"}},
    %{name: "QuickSlotInfo", type: {:nullable, {:struct, "QuickSlotInfo"}}}
  ],

"CrossRealmSeasonTimeCreviceEntryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "CrossRealmSeasonEntryInitialDataNotify"}},
    %{name: "IsFull", type: :bool}
  ],

"ItemCuidSelector" => [
    %{name: "__base__", type: {:struct, "MultipleItemSelector"}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"CheatRemoveAllWorldMapMarkerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}}
  ],

"CheatSetStrongholdOccupyingCovenantRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantVuid", type: {:nullable, {:struct, "Vuid"}}}
  ],

"ItemExpireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpiredItemCuids", type: :unknown}
  ],

"RealmTransferInfo" => [
    %{name: "RealmTransferCuid", type: :cuid},
    %{name: "RealmTransferCount", type: {:int, 4}},
    %{name: "LastRealmTransferDateTime", type: {:nullable, :datetime}}
  ],

"CovenantTradeSalesListQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GoodsSalesInfos", type: {:list, {:struct, "CovenantTradeGoodsSalesInfo"}}}
  ],

"NavMeshTileLayerInfo" => [
    %{name: "LayerNumber", type: {:int, 4}},
    %{name: "CrcChecksum", type: {:struct, "unsigned_int"}},
    %{name: "TileData", type: :string}
  ],

"CheatAcquireAllFollowerPieceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"ShopSellResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ClientDrivenQuestMissionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestMissionCuid", type: :cuid},
    %{name: "TargetGuidList", type: {:list, {:uint, 8}}}
  ],

"BattalionDismissNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "BattalionPurposeKind", type: {:enum, "BattalionPurposeKindType"}}
  ],

"StackableItemUpdateInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "StackCountDelta", type: {:uint, 8}},
    %{name: "AcquiredDateTime", type: :datetime}
  ],

"CheatPaidAttendanceResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: :cuid}
  ],

"CheatStrongholdBattleCompleteAttackPhaseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantGoodsRegistrationManagementModeCommandResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "RegisteredGoodsList", type: {:list, {:struct, "RegisteredGoodsInfo"}}},
    %{name: "ManagementModeKeepaliveInterval_sec", type: {:int, 4}}
  ],

"CheatSetRealmAccountPresentRegisterBlockResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleLivingTotemDeathNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "DestroyerName", type: :string},
    %{name: "DestroyerCovenantName", type: :string}
  ],

"FindPathRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :vector},
    %{name: "Destination_cm", type: :vector},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"CovenantSynchronizeMemberInfosResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantMemberInfo"}}}
  ],

"CovenantBattalionExpeditionLivingTotemDepartureNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DepartureHavenCuid", type: :cuid},
    %{name: "ArrivalSealedSiteCuid", type: :cuid}
  ],

"CheatRealmIntegrationConvertToIntegratedRealmAccountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleDeclarePrerequisitesQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "HavenCuidToTotalTravelDistances", type: {:map, :cuid, :float}}
  ],

"CheatExpeditionCloseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SealedSiteCuid", type: :cuid}
  ],

"ArquiAttunementLevelUpResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiAttunementCuid", type: :cuid},
    %{name: "NewLevel", type: {:int, 4}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"GearSlotInfo" => [
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "GearSlot", type: {:enum, "GearSlotType"}}
  ],

"CraftQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SkillCancelChargingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CreateDiplomacyChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Name", type: :string}
  ],

"AetherOptionLevelUpResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AetherOptionCuid", type: :cuid},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"RegionContentTimeRechargingItemUseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "ItemGuidSelector"}}}
  ],

"PlayerGameOptionInfo" => [
    %{name: "CombatOptionInfo", type: {:nullable, {:struct, "CombatOptionInfo"}}},
    %{name: "ConvenienceOptionInfo", type: {:nullable, {:struct, "ConvenienceOptionInfo"}}},
    %{name: "DisplayOptionInfo", type: {:nullable, {:struct, "DisplayOptionInfo"}}},
    %{name: "GameNotificationOptionInfo", type: {:nullable, {:struct, "GameNotificationOptionInfo"}}},
    %{name: "ChatOptionInfo", type: {:nullable, {:struct, "ChatOptionInfo"}}},
    %{name: "InventoryOptionInfo", type: {:nullable, {:struct, "InventoryOptionInfo"}}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "PlayerBattalionOptionInfo"}}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "ServerDrivenPlayOptionInfo"}}},
    %{name: "AutoDonateSettingOptionInfo", type: {:nullable, {:struct, "AutoDonateSettingOptionInfo"}}},
    %{name: "ControlOptionInfo", type: {:nullable, {:struct, "ControlOptionInfo"}}},
    %{name: "MonsterBookConsumeItemOptionInfo", type: {:nullable, {:struct, "MonsterBookConsumeItemOptionInfo"}}}
  ],

"PlayerSkillAcquireResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "AutoUseRootSkillCuids", type: {:list, :cuid}}
  ],

"AnniversaryPointAndRankingInfo" => [
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryBeginDateTime", type: :datetime},
    %{name: "AnniversaryEndDateTime", type: :datetime},
    %{name: "AnniversaryPoint", type: {:uint, 8}},
    %{name: "Ranking", type: {:nullable, {:int, 4}}}
  ],

"CraftResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RewardCuid", type: :cuid},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "CraftResultInfos", type: {:list, {:struct, "CraftResultInfo"}}},
    %{name: "CraftCountInfo", type: {:nullable, {:struct, "CraftCountInfo"}}}
  ],

"SingleItemSelector" => [
    %{name: "__base__", type: {:struct, "ItemSelector"}}
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AttackInfo", type: {:nullable, {:struct, "StrongholdBattleAttackInfo"}}}
  ],

"CheatForceSynchronizeBuildingWorkResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MailFollowerGatheringWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailFollowerWorkLayoutInfo"}},
    %{name: "GatheringSiteSpawnerCuid", type: :cuid},
    %{name: "GainedRewardItemIndexWithCount", type: {:nullable, :message}}
  ],

"DividendResultInfo" => [
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "TotalDistributionAmount", type: {:uint, 8}}
  ],

"MailsReceiveAttachmentsInTabRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "UpperBoundDateTime", type: :datetime}
  ],

"ChatServerReadyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatPaidAttendanceAddAttendanceCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "PaidAttendanceInfo"}}}
  ],

"CovenantSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}}
  ],

"PartySynchronizeMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatTeleportToHavenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "Radius_cm", type: :float}
  ],

"PlayerCovenantWatchAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatAnniversaryAchievementResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AchievementCuid", type: :cuid}
  ],

"PartySummaryInfo" => [
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "IsEnabled", type: :bool},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "PartyOptionInfo"}}},
    %{name: "PartyLeaderGuid", type: {:uint, 8}},
    %{name: "PartyMemberCoreInfos", type: {:list, {:struct, "PartyMemberCoreInfo"}}},
    %{name: "TargetLocationInfos", type: {:list, {:struct, "TargetLocationInfo"}}}
  ],

"RealmIntegrationBattleBossKillNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "BossCuid", type: :cuid},
    %{name: "Score", type: {:uint, 8}}
  ],

"PvpBattlePlayerInfo" => [
    %{name: "PvpBattlePlayerId", type: {:struct, "PvpBattlePlayerId"}},
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "PvpBattleCovenantId", type: {:struct, "PvpBattleCovenantId"}}
  ],

"DeathPenaltyLastAutoRecoveryNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeathPenaltyAutoRecoveryInfo", type: {:nullable, :message}}
  ],

"SelfieDoodadInfo" => [
    %{name: "__base__", type: {:struct, "InteractableDoodadInfo"}}
  ],

"PlayerCampaignInfo" => [
    %{name: "ActiveCampaignProgressInfos", type: {:list, :cuid}},
    %{name: "CampaignTicketInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCampaignTicketInfo"}}}
  ],

"ServerDrivenPlayInfo" => [
    %{name: "HuntingSiteCuid", type: :cuid},
    %{name: "StartLocation_cm", type: :vector},
    %{name: "StartTime", type: :datetime},
    %{name: "StartUsingDailyDurationTime", type: :datetime},
    %{name: "RewardInfo", type: {:nullable, :message}},
    %{name: "AutoResupplyUsedCount", type: {:int, 4}},
    %{name: "CurrentStateInfo", type: {:nullable, :message}}
  ],

"CheatClearGearRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"TozPong" => [
    %{name: "Nonce", type: {:int, 4}},
    %{name: "ServerUtcNow", type: :unknown},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"PvpRecordNpcInfo" => [
    %{name: "__base__", type: {:struct, "PvpRecordCharacterInfo"}},
    %{name: "Cuid", type: :cuid}
  ],

"CovenantTextHistoryInfo" => [
    %{name: "__base__", type: {:struct, "CovenantHistoryInfo"}},
    %{name: "Text", type: :string}
  ],

"CheatUpdatePlayerCampaignTicketCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CampaignTicketCuid", type: :cuid},
    %{name: "UpdateCount", type: {:int, 4}}
  ],

"ExpeditionJoinBattalionNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"CheatSpawnOccupiableNpcBossResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantGiftSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AddedGiftBoxInfos", type: {:list, {:struct, "CovenantGiftBoxInfo"}}},
    %{name: "RemovedGiftBoxInfos", type: {:list, {:uint, 8}}},
    %{name: "UpdateGiftBoxInfos", type: {:list, {:struct, "CovenantGiftBoxInfo"}}}
  ],

"CheatTestRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RewardCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}}
  ],

"CheatEnterCovenantCampaignResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionQueryMemberCandidateListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatInstanceEventRunActionsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EventCuid", type: :cuid}
  ],

"CovenantReinforcementInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ReinforcementInfos", type: {:list, {:struct, "ReinforcementInfo"}}},
    %{name: "ReceivedReinforcementInfos", type: {:list, {:struct, "ReinforcementInfo"}}}
  ],

"CheatChangeSkillCooldownDurationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "Duration_msec", type: {:int, 4}}
  ],

"ExpeditionSummaryInfo" => [
    %{name: "ExpeditionCuid", type: :cuid},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "EndDateTime", type: {:nullable, :datetime}},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"BanInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "BanKind", type: {:enum, "BanKindType"}},
    %{name: "BanReasonKind", type: {:enum, "BanReasonKindType"}},
    %{name: "StartDateTime", type: :datetime},
    %{name: "EndDateTime", type: :datetime},
    %{name: "Reason", type: :string}
  ],

"BattalionLeaveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SpawnLayerActivateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsPermanentSpawnLayer", type: :bool},
    %{name: "SpawnLayerCuid", type: :cuid}
  ],

"CspSupporterInfo" => [
    %{name: "CreatorCode", type: :string},
    %{name: "CreatorStatus", type: {:int, 4}},
    %{name: "SupportExpireTime", type: :datetime},
    %{name: "SupporterStatus", type: {:int, 4}},
    %{name: "MemberSn", type: :string},
    %{name: "ChannelInfos", type: {:list, {:struct, "CspChannelInfo"}}},
    %{name: "CreatorGrade", type: :string},
    %{name: "SupporterCount", type: {:int, 4}},
    %{name: "AboutMe", type: :string}
  ],

"CheatFavorBossChaseGaugeChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "BossChaseGauge", type: {:int, 4}}
  ],

"CovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FavorRefreshResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "FavorList", type: {:list, {:struct, "FavorInfo"}}},
    %{name: "FavorMissionList", type: {:list, {:struct, "FavorMissionInfo"}}},
    %{name: "RefreshCostIndex", type: {:int, 4}},
    %{name: "TerritoryCuid", type: :cuid}
  ],

"CovenantWatchRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :string}
  ],

"BasicAchievementPrivateChannelOpenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SynchronizeStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatChangeCovenantNameResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatKillFocusedCharacterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantUpdateJoinKindFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantCreateCovenantMemberRoleResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :string}
  ],

"SkillUseOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillUseOptionInfo", type: {:nullable, {:struct, "SkillUseOptionInfo"}}}
  ],

"CheatTestGearEnchantOptionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CostItemCuid", type: :cuid},
    %{name: "GearCuid", type: :cuid},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "GearEnchantOptionGrades", type: {:map, {:int, 2}, {:enum, "GearEnchantGradeType"}}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"RealmAccountPresentItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "Password", type: :string}
  ],

"ThreadMailHeadInfo" => [
    %{name: "LatestCreateDateTime", type: :datetime},
    %{name: "From", type: :string},
    %{name: "Title", type: :string}
  ],

"CheatInitializeQuestDataRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MailStrongholdMigrationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DiscardStrongholdCuid", type: :cuid}
  ],

"CovenantRealmTransferRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MailFollowerBuildingWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailFollowerWorkLayoutInfo"}},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}}
  ],

"MarketGoodsSoldNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "SettlementInfo", type: {:nullable, {:struct, "MarketSettlementInfo"}}},
    %{name: "TransactionDateTime", type: :datetime}
  ],

"WarpResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatPlayerDeleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AttackTargetNotify" => [
    %{name: "__base__", type: {:struct, "AttackTargetRequest"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"CovenantDisplayInfo" => [
    %{name: "CovenantVuid", type: {:struct, "Vuid"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"QuestTeleportToReentryLocationCastNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"StrategicObjectiveInfo" => [
    %{name: "StrategicObjectiveTargetInfo", type: {:nullable, {:struct, "StrategicObjectiveTargetInfo"}}},
    %{name: "SquadOrderList", type: {:list, {:int, 4}}}
  ],

"StrongholdTeleportToAltarRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantCampaignGuid", type: {:uint, 8}}
  ],

"BattalionOptionInfo" => [
    %{name: "PurposeKind", type: {:enum, "BattalionPurposeKindType"}},
    %{name: "PurposeText", type: :string},
    %{name: "IsAllowVolunteer", type: :bool},
    %{name: "BattalionVolunteerAllowKind", type: {:enum, "BattalionVolunteerAllowKindType"}},
    %{name: "IsAllowVolunteerJoinApply", type: :unknown},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown},
    %{name: "IsNotExposeToBattalionList", type: :unknown},
    %{name: "BattalionItemDistributionInfo", type: {:nullable, {:struct, "PartyOrBattalionItemDistributionInfo"}}}
  ],

"RankingViewInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"PartyBanishMemberFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"BattalionConfirmCheckReadyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MemberGuid", type: {:uint, 8}},
    %{name: "MemberReadyKind", type: {:enum, "BattalionMemberReadyKindType"}}
  ],

"PartyQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionCuid", type: :cuid},
    %{name: "Purpose", type: {:enum, "PartyPurposeType"}}
  ],

"BuildingWorkRequestBaseInfo" => [
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "RequestPlayerGuid", type: {:uint, 8}},
    %{name: "RequestPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "IsRecommended", type: :bool},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"CovenantTradeDealRecordQueryInfo" => [
    %{name: "DealRecordKind", type: {:enum, "CovenantTradeDealRecordKindType"}},
    %{name: "SkipTopRowCount", type: {:int, 4}}
  ],

"AnniversaryPointCovenantRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "CovenantRankingViewInfo"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "IsAnalysisLocked", type: :bool}
  ],

"TerritoryInfo" => [
    %{name: "__base__", type: {:struct, "DistrictInfo"}},
    %{name: "OccupyingCovenantVuid", type: {:struct, "Vuid"}},
    %{name: "OccupyingCovenantName", type: :string},
    %{name: "OccupyingCovenantLevel", type: {:int, 4}},
    %{name: "TerritoryEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "DeployedLivingTotemCuid", type: :cuid},
    %{name: "LeadingCovenantCampEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "EntanglementGauge", type: {:int, 4}},
    %{name: "BuildingLevels", type: {:map, {:enum, "BuildingKindType"}, {:int, 4}}},
    %{name: "AddNpcCraftGreatSuccessRatio_pe4", type: {:int, 4}},
    %{name: "StrongholdProtectionExpirationDateTime", type: :datetime},
    %{name: "ErosionItemConfigurationInfo", type: {:nullable, {:struct, "TerritoryErosionItemConfigurationInfo"}}},
    %{name: "NoticeInfo", type: {:nullable, {:struct, "TerritoryNoticeInfo"}}},
    %{name: "ContaminationInfo", type: {:nullable, {:struct, "ContaminationInfo"}}},
    %{name: "TaxInfo", type: {:nullable, {:struct, "TaxInfo"}}},
    %{name: "StrongholdBuildingAccessPermissionKinds", type: {:map, {:enum, "BuildingKindType"}, {:enum, "BuildingAccessPermissionKindType"}}},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "StrongholdBattleAttackPhaseType"}},
    %{name: "HavenEventInfos", type: {:map, :cuid, {:struct, "TMap<FTzCuid"}}}
  ],

"CovenantJoinApplyInfoUpdatedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"AccelerationUseHavenWorkRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "AccelerationActionKind", type: {:enum, "AccelerationActionKindType"}},
    %{name: "CuidAndCountInfo", type: {:nullable, {:struct, "CuidAndCountInfo"}}}
  ],

"EntityInfo" => [
    %{name: "Entity", type: {:enum, "EntityType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "Faction", type: {:enum, "FactionType"}},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "AffiliatedStrongholdCuid", type: :cuid}
  ],

"CovenantUpdateOutLinkRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantOutLinkKind", type: {:enum, "CovenantOutLinkKindType"}},
    %{name: "Uri", type: :string}
  ],

"CrossRealmCovenantDiplomacyCancelAllianceApplicationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"ClanSelectionQuestAcceptResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestCuid", type: :cuid}
  ],

"ServerDrivenPlayAppCloseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"QuestTeleportToReentryLocationCastCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"TozTimeReconcile" => [
    %{name: "TozNetwork.Protocol.TozTimeReconcile", type: :unknown}
  ],

"BattalionMemberCharacterStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "BattalionMemberInfoSynchronizeNotify"}},
    %{name: "State", type: {:enum, "CharacterStateType"}}
  ],

"StrongholdBuildingWorkInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "BuildingWorkInfoChangeReason", type: {:enum, "BuildingWorkInfoChangeReasonType"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "BuildingWorkInfo"}}}
  ],

"MarketSellReregisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "IsSuccessByGoodsGuids", type: {:map, {:uint, 8}, :bool}},
    %{name: "FailedGoodsGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"FavoriteStatKindsResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "StatView", type: {:enum, "AdjustableStatViewType"}}
  ],

"InteractionCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}},
    %{name: "Reason", type: {:enum, "InteractionCancelReasonKindType"}}
  ],

"GameOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "GameOptionInfo", type: {:nullable, :message}}
  ],

"PartyConfirmJoinApplicationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}},
    %{name: "IsApproved", type: :bool}
  ],

"CheatCommandPresetRelayRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PresetTitle", type: :string}
  ],

"CheatUninstallAllArquirunesRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MarketRecommendedItemQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "RecommendedGearCuidByGearKind", type: {:map, {:enum, "GearKindType"}, :cuid}},
    %{name: "RecommendedCoreMaterialCuidByGearKind", type: {:map, {:enum, "GearKindType"}, :cuid}}
  ],

"HonorableDieFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatClearUserInventoryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ItemGuidSelector" => [
    %{name: "__base__", type: {:struct, "SingleItemSelector"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"CheatResetAchievementResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ShopCashMerchandiseBuyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MerchandisePaymentInfo", type: {:nullable, :message}}
  ],

"SkillCancelChargingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantWorldMapMarkerUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "WorldMapMarkerInfo", type: {:nullable, {:struct, "WorldMapMarkerInfo"}}}
  ],

"CheatExpeditionExecuteNextWaveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SealedSiteCuid", type: :cuid}
  ],

"CheatStrongholdBattleCancelAttackRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MarketSellerGoodsInfo" => [
    %{name: "__base__", type: {:struct, "MarketGoodsInfo"}},
    %{name: "MarketSellState", type: {:enum, "MarketSellStateType"}}
  ],

"OccupiableNpcUnOccupationUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}}
  ],

"QuestCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "QuestCancelReasonKind", type: {:enum, "QuestCancelReasonKindType"}}
  ],

"CheatRankingResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid}
  ],

"QueryPlayerBattalionJoinableRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"PlayerPrivateStatsInfo" => [
    %{name: "__base__", type: {:struct, "CharacterPrivateStatsInfo"}},
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
    %{name: "__base__", type: {:struct, "QuickSlotDetailInfo"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"MailsReceiveAttachmentsInTabResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "ReceivedMailGuids", type: {:list, {:uint, 8}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CovenantSynchronizeExperiencePoints" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"PartyQueryMemberCandidateListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PartyMemberCandidateKind", type: {:enum, "PartyMemberCandidateKindType"}},
    %{name: "PartyMemberCandidateList", type: {:list, {:struct, "PartyMemberCoreInfo"}}}
  ],

"ServerConfigInfo" => [
    %{name: "CspWebBaseUrl", type: :string},
    %{name: "RealmCreateDateTime", type: :datetime},
    %{name: "AlignedRealmCreateDateTime", type: :datetime}
  ],

"PrivateChannelKeepaliveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChannelKind", type: {:enum, "PrivateChannelKindType"}}
  ],

"RPCMessage" => [
    %{name: "ReturnIndex", type: {:int, 4}}
  ],

"MailStrongholdBattleEndResultLogLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailStrongholdBattleLayoutInfo"}},
    %{name: "StrongholdBattleEndResultKind", type: {:enum, "StrongholdBattleEndResultKindType"}},
    %{name: "StrongholdBattleJoinedCovenantHistoryInfos", type: {:list, {:struct, "StrongholdBattleJoinedCovenantHistoryInfo"}}},
    %{name: "WinnerCovenantVuid", type: {:struct, "Vuid"}}
  ],

"CheatAcquireFollowerPieceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerCuid", type: :cuid},
    %{name: "Count", type: {:uint, 8}}
  ],

"PowerSavingModeEndResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ItemSelector" => [
    %{name: nil, type: :empty_struct}
  ],

"PaidAttendanceInfo" => [
    %{name: "PaidAttendanceCuid", type: :cuid},
    %{name: "PaidDateTime", type: {:nullable, :datetime}},
    %{name: "AttendanceCount", type: {:int, 4}},
    %{name: "ReceivedAttendanceRewardCount", type: {:int, 4}},
    %{name: "IsVisibleNotificationMarker", type: :bool}
  ],

"OccupiableNpcInfo" => [
    %{name: "OccupiableNpcCuid", type: :cuid},
    %{name: "NpcSpawnerCuid", type: :cuid},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "IsRandomBuffNpc", type: :bool},
    %{name: "OccupationState", type: {:enum, "NpcOccupationStateType"}}
  ],

"CovenantMemberInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}},
    %{name: "LastClientDisconnectDateTime", type: :datetime},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "DailyContributionPoints", type: {:uint, 8}},
    %{name: "WeeklyContributionPoints", type: {:uint, 8}},
    %{name: "PreviousWeeklyContributionPoints", type: {:uint, 8}},
    %{name: "TotalContributionPoints", type: {:uint, 8}},
    %{name: "ContributionPointsUpdateDateTime", type: :datetime},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "CovenantMemberRoleRewardLastAcquiredDateTime", type: :datetime},
    %{name: "CovenantMemberRoleLastUpdatedDateTime", type: :datetime}
  ],

"CheatChangeAllFollowersLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"ServerDrivenPlayMovingToHuntingLocationStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}}
  ],

"SeasonPassAchievementInfo" => [
    %{name: "__base__", type: {:struct, "AchievementInfo"}},
    %{name: "SeasonPassCuid", type: :cuid},
    %{name: "SeasonPassAchivementGroupCuid", type: :cuid}
  ],

"DisplayOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DisplayOptionInfo", type: {:nullable, {:struct, "DisplayOptionInfo"}}}
  ],

"CovenantBattalionExpeditionDeployStopLivingTotemNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"OrganizationStatRatioValue" => [
    %{name: "Value", type: {:int, 4}},
    %{name: "PrecisionExponent", type: {:struct, "unsigned_int"}}
  ],

"CheatClearOccupiableNpcOccupationScoreRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid}
  ],

"ErosionItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "Location_cm", type: :vector},
    %{name: "IsWithoutPermission", type: :bool},
    %{name: "CostGoldAmount", type: {:uint, 8}}
  ],

"CheatAddCovenantGiftSpecialGiftBoxPointsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FavoriteCraftRecipeRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FavoriteCraftRecipeInfo", type: {:nullable, {:struct, "FavoriteCraftRecipeInfo"}}},
    %{name: "IsRegistered", type: :bool}
  ],

"CheatExpeditionLivingTotemTeleportToPlayerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PartyTargetLocationUnsetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Index", type: {:int, 4}}
  ],

"CheatApplyArquiAttunementSetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiAttunementInfo", type: {:nullable, {:struct, "ArquiAttunementInfo"}}}
  ],

"CheatSpawnBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "BuildingCuid", type: :cuid}
  ],

"CollectionSlotItemRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionCuid", type: :cuid},
    %{name: "CollectionSlotItemCuid", type: :cuid},
    %{name: "NonstackableItemGuid", type: {:uint, 8}}
  ],

"PreemptiveAttackTargetSelectCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"ArquiruneDeactivateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"CheatClearCollectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ExpeditionLivingTotemInfo" => [
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "DepartureHavenCuid", type: :cuid},
    %{name: "ArrivalSealedSiteCuid", type: :cuid}
  ],

"CraftRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "RewardCuid", type: :cuid},
    %{name: "CraftCount", type: {:int, 4}},
    %{name: "MaterialGroupOrderList", type: {:list, :cuid}},
    %{name: "MaterialCuidToItemSelectors", type: {:list, {:struct, "ItemSelector"}}}
  ],

"InGameNotificationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InGameNotificationInfo", type: {:nullable, :message}}
  ],

"BuildingPurifyRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}},
    %{name: "PurificationBuildingLevel", type: {:int, 4}}
  ],

"RealmTransferredPlayerNameChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Name", type: :string}
  ],

"StrongholdBattleAttackInnerGateStartNotify" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackPhaseStartNotify"}}
  ],

"CovenantWatchRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TargetPlayerName", type: :string}
  ],

"StrongholdBattleTacticalSkillUseNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "ConsumedTacticalSkillBadgeCount", type: {:int, 4}}
  ],

"CheatPromoteAllFollowerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FollowerKillingNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerCuid", type: :cuid},
    %{name: "FollowerOwnerPlayerName", type: :string},
    %{name: "LootedItemIndexWithCount", type: {:nullable, :message}}
  ],

"PlayerCreateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Gender", type: {:enum, "GenderType"}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "DevStartLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"HeroBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "BossSpawnInfo"}}
  ],

"CheatChangeCampaignConditionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"HavenOrganizationStatsDetailInfo" => [
    %{name: "Stats", type: {:map, {:enum, "HavenOrganizationStatSourceType"}, {:struct, "TMap<FTzCuid"}}}
  ],

"UpstreamPayloadAction" => [
    %{name: "UpstreamPayloadActionKind", type: {:enum, "UpstreamPayloadActionKindType"}},
    %{name: "TextCuid", type: :cuid}
  ],

"RealmInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmInfos", type: {:list, nil}},
    %{name: "RealmAccountInfos", type: {:list, {:struct, "UniverseAccountRealmAccountInfo"}}},
    %{name: "AppliedRealmAccountGuids", type: {:list, {:uint, 8}}}
  ],

"RealmIntegrationBattleRealmScore" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "Score", type: {:uint, 8}}
  ],

"AlertPlayerQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatCovenantRubyShopResetMerchandiseBuyCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopCuid", type: :cuid}
  ],

"MountMovingCallingRequest" => [
    %{name: "__base__", type: {:struct, "MountCallingRequest"}},
    %{name: "CurrentStraightMoveSegmentDestination_cm", type: {:nullable, :vector}},
    %{name: "NextStraightMoveSegmentDestination_cm", type: {:nullable, :vector}}
  ],

"CheatClearCollectionByCollectionCategoryCuidRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionCategoryCuid", type: :cuid}
  ],

"CheatSetTransmutationRecordRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PeriodCuid", type: :cuid},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ItemGradeType"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"BossSpawnInfoRemovedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "BossSpawnInfo", type: {:nullable, :message}}
  ],

"CheatAddRankingDummyDataResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatClearOccupiableNpcOccupationScoreResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatTestGearEnchantGradeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CostItemCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}}
  ],

"SerializedMessageCacheElement" => [
    %{name: "__base__", type: {:struct, "MessageCacheElement"}},
    %{name: "message", type: :unknown}
  ],

"MarketSellWithdrawRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}}
  ],

"CheatSendSampleMailToMeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RequestMailKind", type: {:enum, "MailKindType"}}
  ],

"CheatAddCovenantGiftLevelExperiencePointsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantLivingTotemStatsInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "LivingTotemStatsInfos", type: {:list, {:struct, "CovenantLivingTotemWithStatsInfo"}}}
  ],

"BuffAttachNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffInfo", type: {:nullable, {:struct, "BuffInfo"}}},
    %{name: "BuffAffectInfoList", type: {:list, {:struct, "BuffAffectInfo"}}}
  ],

"BasicOrGrowthGuideAchievementRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AchievementCuid", type: :cuid},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ShopCashMerchandiseReceiveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ReceiveGuidList", type: {:list, {:uint, 8}}}
  ],

"NavMeshTileDataRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CheckRequestedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"StanceInstallRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "Stance", type: {:enum, "StanceType"}}
  ],

"DeleteDiplomacyChatRoomResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"MailStrongholdPlunderLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "WarehouseMigrationInfo", type: {:nullable, {:struct, "WarehouseMigrationInfo"}}}
  ],

"FindWarpPointsForAutoMoveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Destination_cm", type: :vector}
  ],

"PlayerMarketTransactionDelayedSellRegisterProcessNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MailBuildingPurificationFinishLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailBuildingWorkLayoutInfo"}},
    %{name: "PurificationAmount", type: {:int, 4}},
    %{name: "FullContamination", type: {:int, 4}},
    %{name: "BeforeContaminationAmount", type: {:int, 4}},
    %{name: "BeforeContaminationStage", type: {:enum, "ContaminationStageType"}},
    %{name: "AfterContaminationStage", type: {:enum, "ContaminationStageType"}}
  ],

"CheatGetStrongholdAccumulatedTaxCurrencyAmountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AccumulatedTaxCurrencyAmount", type: {:uint, 8}}
  ],

"CharacterStatChangeInfo" => [
    %{name: "StatKind", type: {:enum, "AdjustableStatKindType"}},
    %{name: "Amount", type: :float},
    %{name: "Ratio", type: :float}
  ],

"GearEnchantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CovenantUpdateEmblemInfoFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CampaignTicketInfo" => [
    %{name: "TicketCuid", type: :cuid},
    %{name: "TicketCount", type: {:int, 4}}
  ],

"AttackerListNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "AttackerPlayerGuids", type: :unknown}
  ],

"CovenantCampBuildingCraftResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmAccountInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "UniverseAccountGuid", type: {:uint, 8}},
    %{name: "UniverseAccountInfo", type: {:nullable, {:struct, "UniverseAccountInfo"}}},
    %{name: "OptionInfo", type: {:nullable, {:struct, "RealmAccountOptionInfo"}}},
    %{name: "PlayedCutSceneCuids", type: :unknown},
    %{name: "AdditionalPlayerSlotCount", type: {:int, 4}},
    %{name: "HighestPlayerMaxLevel", type: {:int, 4}}
  ],

"HarmfulTextOnChatViolationUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}}
  ],

"StrongholdTaxUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "TaxInfo", type: {:nullable, {:struct, "TaxInfo"}}}
  ],

"ContentsUnlockInitializeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UnusedContentsUnlockKinds", type: {:map, {:enum, "ContentsUnlockKindType"}, :bool}}
  ],

"RealmAccountPresentRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PresentCode", type: :string},
    %{name: "Password", type: :string},
    %{name: "RealmCuid", type: :cuid}
  ],

"CovenantDiplomacyDeclareHostilityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CheatDowngradeBuildingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SubscriptionUnsubscribedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Channel", type: {:enum, "SubscriptionChannelType"}},
    %{name: "Parameter", type: :cuid}
  ],

"CovenantSynchronizeInvitedPlayerLevelChangedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Level", type: {:int, 4}}
  ],

"CharacterStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "CharacterState", type: {:enum, "CharacterStateType"}},
    %{name: "StrongholdBattleResult", type: {:enum, "StrongholdBattleResultType"}},
    %{name: "AffectSourceInfo", type: {:nullable, :message}}
  ],

"BattalionMemberLootNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionMemberGuid", type: {:uint, 8}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "KilledNpcCuid", type: :cuid},
    %{name: "IsErosionInstallerReward", type: :bool}
  ],

"CheatCreateAndSelectMountItemResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "MountItemCuid", type: :cuid}
  ],

"ExpeditionNpcSummonWavesEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SealedSiteCuid", type: :cuid}
  ],

"CollectionProgressInfo" => [
    %{name: "CollectionCuid", type: :cuid},
    %{name: "RegisteredCollectionSlotItemCuids", type: {:map, :cuid, :cuid}}
  ],

"CovenantDiplomacyHostilityKillCountUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "DeclarantCovenantKillCount", type: {:int, 4}},
    %{name: "DeclaredCovenantKillCount", type: {:int, 4}}
  ],

"InteractionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmInfoPubSubChannelUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "Ip", type: :string},
    %{name: "ServerState", type: {:enum, "ServerStateType"}},
    %{name: "ServerTagKind", type: {:enum, "ServerTagKindType"}}
  ],

"UnknownAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "AffectSourceInfo"}}
  ],

"SkillCasterLocationProxyInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "SkillCasterLocationProxyInfo", type: {:nullable, {:struct, "SkillCasterLocationProxyInfo"}}},
    %{name: "SkillSiid", type: {:int, 4}}
  ],

"BasicAchievementInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BasicAchievementInfos", type: {:list, {:struct, "BasicOrGrowthGuideAchievementInfo"}}}
  ],

"CheatOccupyStrongholdRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DiscardStrongholdCuidIfMax", type: :cuid}
  ],

"CheatChangeCurrencyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"CheatUpdatePlayerMissionCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MissionCuid", type: :cuid},
    %{name: "AdjustKind", type: {:enum, "MissionAdjustKindType"}},
    %{name: "AdjustCount", type: {:int, 4}}
  ],

"AffectItemQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "StackableItemQuickSlotDetailInfo"}},
    %{name: "AffectItemKind", type: {:enum, "AffectItemKindType"}}
  ],

"CrossRealmCovenantDiplomacyAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CrossRealmCovenantDiplomacyInfo", type: {:nullable, {:struct, "CrossRealmCovenantDiplomacyInfo"}}}
  ],

"RealmAccountWarehouseItemRetrieveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"CheatChangeBuildingHealthPointsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "HealthPointsPercentage", type: {:int, 4}}
  ],

"MountCallingFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantWatchAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TargetPlayerName", type: :string},
    %{name: "CreateDateTime", type: :datetime}
  ],

"BasicOrGrowthGuideAchievementUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BasicOrGrowthGuideAchievementInfo", type: {:nullable, :message}}
  ],

"PaidAttendanceRewardAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: :cuid}
  ],

"ShopCashMerchandiseInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "CashShopMainCategoryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopMainCategoryInfo"}}},
    %{name: "CashShopSubCategoryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopSubCategoryInfo"}}},
    %{name: "CashShopMerchandiseInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopMerchandiseInfo"}}},
    %{name: "CashShopWindowDressingInfoList", type: {:list, {:struct, "CashShopWindowDressingInfo"}}},
    %{name: "CashShopNameTextInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopNameTextInfo"}}},
    %{name: "CashShopDescriptionTextInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCashShopDescriptionTextInfo"}}},
    %{name: "RealmTotalMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"GearMultipleEnhanceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GearEnhancementResultInfos", type: {:list, {:struct, "GearEnhancementResultInfo"}}}
  ],

"RealmIntegrationBattleRealmScoreInfo" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "Scores", type: {:map, {:enum, "RealmIntegrationBattleScoreKindType"}, {:uint, 8}}}
  ],

"CheatStrongholdApplyTaxRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ArquiruneInstallRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"DrownSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "HealthPointsLost", type: :float}
  ],

"CheatSetExperiencePointsBlockedResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsExperiencePointsBlocked", type: :bool}
  ],

"TozTcpWelcome" => [
    %{name: "EngineData", type: :unknown},
    %{name: "UserData", type: :unknown}
  ],

"ExpeditionJoinedBattalionsRemoveNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"BuildingRepairRequestInfo" => [
    %{name: "__base__", type: {:struct, "BuildingWorkRequestInfo"}}
  ],

"RedrawableItemInfo" => [
    %{name: "__base__", type: {:struct, "ItemInfo"}},
    %{name: "RedrawableItemAdditionalInfo", type: {:nullable, {:struct, "RedrawableItemAdditionalInfo"}}}
  ],

"CovenantCompleteArchitectureHistoryInfo" => [
    %{name: "__base__", type: {:struct, "CovenantHistoryInfo"}},
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}},
    %{name: "OrderedBuildingSpawnerCuid", type: :cuid},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "WorkStartBuildingLevel", type: {:int, 4}},
    %{name: "TargetBuildingLevel", type: {:int, 4}}
  ],

"CovenantDiplomacyInviteReinforcementRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "RewardCurrencies", type: {:map, :cuid, {:uint, 8}}}
  ],

"CheatUpdatePlayerCampaignTicketCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerDeathNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeathRecordInfo", type: {:nullable, :message}},
    %{name: "RestrictedResurrectionInfo", type: {:nullable, {:struct, "RestrictedResurrectionInfo"}}}
  ],

"CovenantRubyShopInfo" => [
    %{name: "BuyCountInfos", type: {:list, {:struct, "GoodsBuyCountInfo"}}},
    %{name: "UseResetCount", type: {:int, 4}}
  ],

"BattalionCreateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyReinforcementInvitationAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CovenantPermissionsInfo" => [
    %{name: "CanEditCovenantInfo", type: :bool},
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
    %{name: "ServiceState", type: {:enum, "ShopServiceStateType"}}
  ],

"FollowerPromoteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "FollowerItemCuid", type: :cuid}
  ],

"CheatUpgradeBuildingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatInventoryIncreaseWeightLimitRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AdditionalWeightLimitDelta", type: {:int, 4}}
  ],

"ShopCashMerchandiseBuyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MerchandisePaymentInfo", type: {:nullable, :message}},
    %{name: "MerchandiseBuyResultInfo", type: {:nullable, {:struct, "MerchandiseBuyResultInfo"}}}
  ],

"PartySynchronizeMemberCostumeInfoNotify" => [
    %{name: "__base__", type: {:struct, "PartySynchronizeMemberNotify"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}}
  ],

"CovenantUpdateIntroductionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Introduction", type: :string}
  ],

"ShopShoppingModeCommandRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "Command", type: {:enum, "SubscriptionCommandType"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ShopCuid", type: :cuid}
  ],

"CovenantJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberInfo", type: {:nullable, {:struct, "CovenantMemberInfo"}}}
  ],

"CovenantRubyShopMerchandiseResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantCampaignBattalionLeaveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpireTime", type: :datetime}
  ],

"StrongholdBattleReserveResurrectionNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "AetherBoxCount", type: {:int, 4}},
    %{name: "NextResurrectTime", type: :datetime}
  ],

"CheatChangeTerritoryEntanglementGaugeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FollowerImmediateResurrectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"RealmIntegratedCovenantNameChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "RequesterGuid", type: {:uint, 8}},
    %{name: "Name", type: :string}
  ],

"CovenantHistoryQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CovenantHistoryCategory", type: {:enum, "CovenantHistoryCategoryType"}},
    %{name: "LowerBoundDateTime", type: {:nullable, :datetime}},
    %{name: "LastCovenantHistoryGuid", type: {:nullable, {:uint, 8}}}
  ],

"PaidAttendanceInfosUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PaidAttendanceInfos", type: {:list, {:struct, "PaidAttendanceInfo"}}}
  ],

"DeathPenaltyRecordInfo" => [
    %{name: "RecordKind", type: {:enum, "DeathPenaltyRecordKindType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "PlayerLevel", type: {:int, 4}},
    %{name: "LostExperiencePointsPercentage", type: {:int, 4}},
    %{name: "LostExperiencePoints", type: {:uint, 8}},
    %{name: "ExpireDateTime", type: :datetime}
  ],

"AddToChatBlockListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatEntityGuid", type: {:uint, 8}}
  ],

"BattalionInvitationAdditionalInfo" => [
    %{name: "CampaignStageCuid", type: {:nullable, {:struct, "Cuid"}}}
  ],

"RewardAnniversaryRewardInfo" => [
    %{name: "AnniversaryRewardCuid", type: :cuid},
    %{name: "Amount", type: {:uint, 8}}
  ],

"CovenantDiplomacyWithdrawAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"PartyQuickJoinFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantStartCampaignNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantCampaignProgressInfo", type: {:nullable, :message}},
    %{name: "CovenantCampaignTicketCount", type: {:nullable, {:int, 4}}}
  ],

"TeaseNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FromPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "FromPlayerGuid", type: {:uint, 8}},
    %{name: "FromPlayerName", type: :string},
    %{name: "ToPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "ToPlayerGuid", type: {:uint, 8}},
    %{name: "ToPlayerName", type: :string},
    %{name: "TeaseMessage", type: :string}
  ],

"CheatFissionPointsChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FissionPoints", type: {:int, 4}}
  ],

"StrongholdBattleDefenseGroupInfo" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleGroupInfo"}},
    %{name: "DefenseGunBulletCount", type: {:uint, 8}},
    %{name: "MaxDefenseGunBulletCount", type: {:uint, 8}}
  ],

"CheatTeleportResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"RealmPlayerName" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerName", type: :string}
  ],

"CheatMonsterBookSetAnalysisInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "NodeStateInfo", type: {:nullable, :message}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"BattalionLeaveFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerSlotExpandRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MarketGoodsSummaryInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketGoodsSummaryQueryInfo", type: {:nullable, :message}}
  ],

"CovenantTradeSalesListUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AddedOrUpdatedGoodsSalesInfo", type: {:nullable, :message}},
    %{name: "RemovedGoodsGuid", type: {:uint, 8}}
  ],

"SecessionChatRoomRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"UniverseAccountInfo" => [
    %{name: "PresenceId", type: :string},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Npsn", type: :string},
    %{name: "NpaCode", type: :string},
    %{name: "WpcInfo", type: {:nullable, {:struct, "WpcInfo"}}}
  ],

"PartyQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RegionCuid", type: :cuid},
    %{name: "Purpose", type: {:enum, "PartyPurposeType"}},
    %{name: "PartySummaryInfoList", type: {:list, {:struct, "PartySummaryInfo"}}}
  ],

"CovenantRewardAcquireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberGuid", type: {:uint, 8}},
    %{name: "CovenantMemberName", type: :string},
    %{name: "ItemAcquireSourceInfo", type: {:nullable, {:struct, "ItemAcquireSourceInfo"}}},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "CovenantRewardInfo"}}}
  ],

"AnniversaryRecordHistoryQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AnniversaryRecordCuid", type: :cuid},
    %{name: "AnniversaryRecordHistoryInfos", type: {:list, {:struct, "AnniversaryRecordHistoryInfo"}}}
  ],

"CheatTestGearEnchantOptionGradeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CostItemCuid", type: :cuid},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "TestCount", type: {:int, 4}}
  ],

"FingerCustomizeInfo" => [
    %{name: "FingerBase", type: :vector},
    %{name: "Finger1", type: :vector},
    %{name: "Finger2", type: :vector},
    %{name: "FingerNub", type: :vector}
  ],

"CovenantBattalionExpeditionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"MonsterBookAnalyzeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "AnalysisCount", type: {:uint, 8}},
    %{name: "AnalyzedStateInfos", type: {:list, {:struct, "MonsterBookNodeStateInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CovenantEmblemInfo" => [
    %{name: "BackgroundCuid", type: :cuid},
    %{name: "BackgroundRotation", type: :float},
    %{name: "FirstBackgroundColorCuid", type: :cuid},
    %{name: "SecondBackgroundColorCuid", type: :cuid},
    %{name: "ThirdBackgroundColorCuid", type: :cuid},
    %{name: "SubLogoCuid", type: :cuid},
    %{name: "SubLogoColorCuid", type: :cuid},
    %{name: "SubLogoOpacity", type: :float},
    %{name: "SubLogoRotation", type: :float},
    %{name: "SubLogoScale", type: :float},
    %{name: "SubLogoPositionX", type: :float},
    %{name: "SubLogoPositionY", type: :float},
    %{name: "MainLogoCuid", type: :cuid},
    %{name: "MainLogoColorCuid", type: :cuid},
    %{name: "MainLogoOpacity", type: :float},
    %{name: "MainLogoRotation", type: :float},
    %{name: "MainLogoScale", type: :float},
    %{name: "MainLogoPositionX", type: :float},
    %{name: "MainLogoPositionY", type: :float}
  ],

"TerritoryNoticeModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatOpenSeasonPassAchievementsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantSynchronizeMemberContributionInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberContributionInfos", type: {:list, {:struct, "CovenantMemberContributionInfo"}}}
  ],

"CovenantStartCampaignResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CampaignStageCuid", type: :cuid}
  ],

"StrongholdBattleAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "AffectSourceInfo"}},
    %{name: "StrongholdBattleResult", type: {:enum, "StrongholdBattleResultType"}}
  ],

"PlayerSlotExpansionCostCurrencyAmountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerSlotExpansionCostCurrencyAmount", type: {:uint, 8}}
  ],

"CheatDeactivateArquiruneResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"TlsLikeEncryptServerHello" => [
    %{name: "ServerRandom", type: :unknown},
    %{name: "Exponent", type: :unknown},
    %{name: "Modulus", type: :unknown}
  ],

"FollowerSquadSlotExpandRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatSetCovenantWithdrawalDateTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantWithdrawalDateTime", type: {:nullable, :datetime}}
  ],

"InventoryOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "IsEquippedItemVisible", type: :bool}
  ],

"ServerDrivenPlayStartWithResupplyStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}}
  ],

"CrossRealmCovenantDiplomacyDeclareHostilityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"GainedItemInfo" => [
    %{name: "__base__", type: {:struct, "ItemIndexWithCount"}},
    %{name: "GainedDateTime", type: :datetime}
  ],

"ServerGroupAuthenticateInfo" => [
    %{name: "__base__", type: :unknown},
    %{name: "Ip", type: :unknown},
    %{name: "Port", type: {:int, 4}},
    %{name: "Key", type: {:int, 4}}
  ],

"CheatChangeStrongholdTaxRateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"QuestCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"StrongholdBattleJoinFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"CovenantJoinResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "LastCovenantWithdrawalDateTime", type: {:nullable, :datetime}}
  ],

"SchemaTable" => [
    %{name: "SchemaId", type: {:int, 4}},
    %{name: "RegDate", type: :unknown},
    %{name: "FileName", type: :unknown},
    %{name: "TableName", type: :unknown},
    %{name: "Columns", type: :unknown}
  ],

"StrongholdWorldMapInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "AccumulatedDiaTax", type: {:nullable, {:uint, 8}}},
    %{name: "AccumulatedRubyTax", type: {:nullable, {:uint, 8}}},
    %{name: "AccumulatedGoldTax", type: {:uint, 8}},
    %{name: "GeneralShopInfo", type: {:nullable, {:struct, "StrongholdWorldMapGeneralShopInfo"}}}
  ],

"CovenantRubyShopMerchandiseResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopCuid", type: :cuid},
    %{name: "UseResetCount", type: {:int, 4}}
  ],

"PeriodicResetCountInfo" => [
    %{name: "Count", type: {:int, 4}},
    %{name: "LastUpdateDateTime", type: :datetime}
  ],

"CovenantBattalionExpeditionQueryNearestHavenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SealedSiteCuid", type: :cuid}
  ],

"GearEnchantTransferResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"MountInteractionStateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DriverGuid", type: {:uint, 8}},
    %{name: "MountInteractionState", type: {:enum, "MountInteractionStateType"}},
    %{name: "Info", type: {:nullable, :message}}
  ],

"PartySynchronizeMemberConnectionStatusNotify" => [
    %{name: "__base__", type: {:struct, "PartySynchronizeMemberNotify"}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}}
  ],

"FocusResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FocusTargetGuid", type: {:uint, 8}}
  ],

"ErLoginServerInitialDevAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErLoginServerInitialAuthenticateInfo"}},
    %{name: "UserName", type: :string}
  ],

"CovenantWorldMapMarkerRemoveNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "RemovedGuid", type: {:uint, 8}}
  ],

"CheatApplySpellstonePresetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "SpellstoneSlotPageInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSpellstoneSlotPageInfo"}}}
  ],

"PvpRecordCharacterInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CrossRealmSeasonCuid", type: :cuid},
    %{name: "Role", type: {:enum, "PvpRecordCharacterRoleType"}}
  ],

"ExpeditionAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, {:struct, "ExpeditionSummaryInfo"}}}
  ],

"CheatActivateArquiruneRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"BuildingSubscriptionSummaryInfo" => [
    %{name: "BuildingCuid", type: :cuid},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}}
  ],

"WorldMapMarkerCopyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CopiedWorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "CopiedWorldMapMarkerInfo", type: {:nullable, {:struct, "WorldMapMarkerInfo"}}}
  ],

"FactionProxyInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Faction", type: {:enum, "FactionType"}}
  ],

"MailsMarkAsReadByMailKindNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailKind", type: {:enum, "MailKindType"}},
    %{name: "UpperBoundDateTime", type: :datetime}
  ],

"RegisteredGoodsInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "SellCurrencyCuid", type: :cuid},
    %{name: "SellPrice", type: {:int, 4}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "IsBound", type: :bool},
    %{name: "IsStorable", type: :bool},
    %{name: "ItemStackCount", type: {:uint, 8}},
    %{name: "GoodsBuyLimitCount", type: {:nullable, {:uint, 8}}},
    %{name: "RegistrationDateTime", type: :datetime}
  ],

"PlayerMarketSaleGoodsListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketSellerGoodsInfos", type: {:list, {:struct, "MarketSellerGoodsInfo"}}}
  ],

"FissionPointsUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FissionPoints", type: {:int, 4}}
  ],

"CovenantQueryJoinAppliedCovenantSummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"PlayerLogoutResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FrontServerReauthenticateKey", type: {:int, 4}}
  ],

"CovenantUpdateJoinKindRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantJoinKind", type: {:enum, "CovenantJoinKindType"}}
  ],

"PartyDismissRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatCancelAllStrongholdProtectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"NameTagHealthBarDisplayOptionDetailInfo" => [
    %{name: "IsOwnNameTagDisplayed", type: :bool},
    %{name: "IsOwnCovenantNameDisplayed", type: :unknown},
    %{name: "IsOwnHealthBarDisplayed", type: :unknown},
    %{name: "IsOtherCovenantNameDisplayed", type: :unknown},
    %{name: "IsSameCovenantHealthBarDisplayed", type: :unknown},
    %{name: "IsSamePartyOrBattalionHealthBarDisplayed", type: :unknown}
  ],

"BattalionCreateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "BattalionOptionInfo"}}}
  ],

"CovenantDiplomacyWithdrawHostilityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"DistrictInfo" => [
    %{name: "Cuid", type: :cuid}
  ],

"DiplomacyChatRoomKickCovenantsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdBattleDefenseGunBulletNotEnoughNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatPlayerLocationMonitoringDeleteAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AnniversaryPointPlayerRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "PlayerRankingViewInfo"}},
    %{name: "AnniversaryPoint", type: {:uint, 8}}
  ],

"CompletedCovenantResearchAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "AchievementSourceInfo"}},
    %{name: "ResearchCuid", type: :cuid},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"PlayerLocationMonitoringDeregisterNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeregisterPlayerGuids", type: {:list, {:uint, 8}}}
  ],

"RealmIntegrationBattleRealmResult" => [
    %{name: "Round", type: {:int, 4}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "Ranking", type: {:int, 4}}
  ],

"PartyJoinNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyInfo", type: {:nullable, {:struct, "PartyInfo"}}}
  ],

"ProgressInfo" => [
    %{name: "CompletionGauge_pe3", type: {:uint, 8}},
    %{name: "LastUpdateGauge_pe3", type: {:uint, 8}},
    %{name: "IncrementGauge_pe3_psec", type: {:int, 4}},
    %{name: "LastUpdateDateTime", type: :datetime},
    %{name: "CompletionDateTime", type: :datetime}
  ],

"AffectSourceInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "SourceEntityGuid", type: {:uint, 8}}
  ],

"CheatRespawnNpcRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "NpcBossChaseGrade", type: {:int, 4}},
    %{name: "Count", type: {:int, 4}}
  ],

"CashShopSubCategoryInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "TextCuid", type: :cuid},
    %{name: "MainCategoryCuid", type: :cuid},
    %{name: "SortOrder", type: {:int, 4}},
    %{name: "SubCategoryKind", type: {:enum, "ShopSubCategoryKindType"}},
    %{name: "TargetUserKind", type: {:enum, "ShopTargetUserKindType"}},
    %{name: "TimeLimitTarget", type: {:enum, "ShopTimeLimitTargetKindType"}},
    %{name: "StartDateTime", type: :datetime},
    %{name: "EndDateTime", type: :datetime},
    %{name: "IsShowDateTime", type: :bool},
    %{name: "UserRemainTimeToBuy", type: {:int, 4}},
    %{name: "PurchaseApplicableLoginStartDateTime", type: :datetime},
    %{name: "PurchaseApplicableLoginEndDateTime", type: :datetime},
    %{name: "ShowCurrency", type: :cuid},
    %{name: "IsHideSubCategory", type: :bool}
  ],

"CovenantSettleAccountInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSettleAccountInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantSettleAccountInfo"}}},
    %{name: "StrongholdSettleAccountInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdSettleAccountInfo"}}}
  ],

"BattalionJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "BattalionPurposeKind", type: {:enum, "BattalionPurposeKindType"}}
  ],

"PlayerResurrectionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionMemberCoreInfo" => [
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}}
  ],

"CovenantCampBuildingWorkInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "BuildingWorkInfoChangeReason", type: {:enum, "BuildingWorkInfoChangeReasonType"}},
    %{name: "BuildingWorkInfo", type: {:nullable, {:struct, "BuildingWorkInfo"}}}
  ],

"CovenantInviteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"PlayerInfo" => [
    %{name: "__base__", type: {:struct, "CharacterInfo"}},
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Gender", type: {:enum, "GenderType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "SelectedMountItemCuid", type: :cuid},
    %{name: "MountInteractionState", type: {:enum, "MountInteractionStateType"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
    %{name: "InteractingDoodadGuid", type: {:uint, 8}},
    %{name: "DyingExpireDateTime", type: {:nullable, :datetime}},
    %{name: "LastPlayerInteractionDateTime", type: {:nullable, :datetime}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :string},
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "BattalionInfo", type: {:nullable, {:struct, "AffiliatedBattalionInfo"}}},
    %{name: "IsInSelfieMode", type: :bool},
    %{name: "IsFissioned", type: :unknown},
    %{name: "SkillCasterLocationProxyInfo", type: {:nullable, {:struct, "SkillCasterLocationProxyInfo"}}},
    %{name: "IsCollisionFree", type: :unknown},
    %{name: "IsQuestCinePlaying", type: :unknown},
    %{name: "IsHeadPieceDisplayed", type: :unknown},
    %{name: "FollowerSquadSlotAdditionalCount", type: {:int, 2}},
    %{name: "LastSourceWarpPointCuid", type: :cuid}
  ],

"CuidAndCountInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "Count", type: {:uint, 8}}
  ],

"CheatFissionPointsChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CharacterPublicStatsInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CombinedInventoryInfo" => [
    %{name: "InventoryInfosByInventoryKind", type: {:map, {:enum, "UserInventoryKindType"}, {:struct, "TSharedPtr<FTzInventoryInfo"}}},
    %{name: "RedrawableItemInventoryInfosByItemCategory", type: {:map, {:enum, "ItemCategoryType"}, {:struct, "TSharedPtr<FTzRedrawableItemInventoryInfo"}}}
  ],

"CrossRealmSeasonInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CrossRealmSeasonInfos", type: {:map, {:enum, "RegionContentKindType"}, {:struct, "TSharedPtr<FTzCrossRealmSeasonInfo"}}}
  ],

"MarketFavoriteItemUnregisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"CheatMonsterBookSetAcquisitionProgressResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "NodeStateInfo", type: {:nullable, {:struct, "MonsterBookNodeAcquirableStateInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "MonsterBookCollectionInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"CheatAccountAffectDetachAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerInitializeInfo" => [
    %{name: "PlayerInfo", type: {:nullable, {:struct, "PlayerInfo"}}},
    %{name: "IsEnteredInField", type: :bool},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}},
    %{name: "PlayerStanceInfo", type: {:nullable, {:struct, "PlayerStanceInfo"}}},
    %{name: "CombinedInventoryInfo", type: {:nullable, {:struct, "CombinedInventoryInfo"}}},
    %{name: "SelectedEquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}},
    %{name: "EquipmentPresetInfos", type: {:map, {:enum, "EquipmentPresetIndexType"}, {:struct, "TSharedPtr<FTzEquipmentPresetInfo"}}},
    %{name: "QuickSlotInfos", type: {:map, {:enum, "QuickSlotIndexType"}, {:struct, "TSharedPtr<FTzQuickSlotInfo"}}},
    %{name: "QuickSlotPageInfos", type: {:map, {:enum, "StanceType"}, {:struct, "TSharedPtr<FTzQuickSlotPageInfo"}}},
    %{name: "OpenFogsByDistrictCuid", type: {:map, :cuid, {:struct, "unsigned_long_long"}}},
    %{name: "PlayerGameOptionInfo", type: {:nullable, {:struct, "PlayerGameOptionInfo"}}},
    %{name: "PushNotificationOptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzPushNotificationOptionInfo"}}},
    %{name: "PlayerSkillInfo", type: {:nullable, {:struct, "PlayerSkillInfo"}}},
    %{name: "FavoriteCraftRecipeInfos", type: {:list, {:struct, "FavoriteCraftRecipeInfo"}}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "QuestsInfo"}}},
    %{name: "CompletedTutorialCuids", type: {:list, :cuid}},
    %{name: "PartyInfo", type: {:nullable, {:struct, "PartyInfo"}}},
    %{name: "BattalionInfo", type: {:nullable, :message}},
    %{name: "InGameNotificationInfos", type: {:list, {:struct, "InGameNotificationInfo"}}},
    %{name: "AmityInfos", type: {:map, :cuid, {:uint, 8}}},
    %{name: "PlayerFollowerInfo", type: {:nullable, {:struct, "PlayerFollowerInfo"}}},
    %{name: "PlayerServerDrivenPlayInfo", type: {:nullable, {:struct, "PlayerServerDrivenPlayInfo"}}},
    %{name: "PlayerLimitedCounterInfo", type: {:nullable, {:struct, "PlayerLimitedCounterInfo"}}},
    %{name: "AutoBuySettingsInfo", type: {:nullable, {:struct, "AutoBuySettingsInfo"}}},
    %{name: "AutoSellSettingsInfo", type: {:nullable, {:struct, "AutoSellSettingsInfo"}}},
    %{name: "UsableItemCooldownExpireDateTimeRangeInfos", type: {:map, {:int, 4}, {:struct, "TSharedPtr<FTzDateTimeRangeInfo"}}},
    %{name: "MountSkillSlotInfos", type: {:map, {:enum, "MountSkillSlotIndexType"}, :bool}},
    %{name: "PointCurrencyContainerInfo", type: {:map, :cuid, {:uint, 8}}},
    %{name: "RealmAccountWarehouseInfo", type: {:nullable, {:struct, "RealmAccountWarehouseInfo"}}},
    %{name: "RealmAccountWarehouseAutoStoreSettingsInfo", type: {:nullable, {:struct, "RealmAccountWarehouseAutoStoreSettingsInfo"}}},
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
    %{name: "ArquiAttunementInfo", type: {:nullable, {:struct, "ArquiAttunementInfo"}}},
    %{name: "AlertPlayers", type: {:map, {:uint, 8}, :datetime}},
    %{name: "CrossRealmAlertPlayers", type: {:map, {:uint, 8}, {:struct, "CrossRealmAlertPlayerRegisterInfo"}}},
    %{name: "PlayerLocationMonitoringInfos", type: {:list, {:struct, "PlayerLocationMonitoringInfo"}}},
    %{name: "PlayerHarmfulTextOnChatViolationInfo", type: {:nullable, :message}},
    %{name: "FissionPoints", type: {:int, 4}},
    %{name: "PlayerCashShopInfo", type: {:nullable, {:struct, "PlayerCashShopInfo"}}},
    %{name: "PlayerAutoUseInfo", type: {:nullable, :message}},
    %{name: "PlayerEmergencyEscapeInfo", type: {:nullable, {:struct, "PlayerEmergencyEscapeInfo"}}},
    %{name: "UnSettledGoodsGuids", type: {:list, {:uint, 8}}},
    %{name: "ExpiredGoodsGuids", type: {:list, {:uint, 8}}},
    %{name: "PlayerCovenantInfo", type: {:nullable, {:struct, "PlayerCovenantInfo"}}},
    %{name: "GiftBoxInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantGiftBoxInfo"}}},
    %{name: "AccountAffectInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzAccountAffectInfo"}}},
    %{name: "MaxLevel", type: {:int, 4}},
    %{name: "LastLevelForLevelUpNotify", type: {:int, 4}},
    %{name: "LastLevelUpDateTime", type: :datetime},
    %{name: "RegisteredFavoriteAdjustableStatKinds", type: :unknown},
    %{name: "RegisteredReturnPlaceDoodadSpawnerCuid", type: :cuid},
    %{name: "WorldMapMarkerInfos", type: {:list, {:struct, "WorldMapMarkerInfo"}}},
    %{name: "FavoriteCollectionCuids", type: :unknown},
    %{name: "SkillUseOptionInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSkillUseOptionInfo"}}},
    %{name: "RegionContentPlayInfos", type: {:map, {:enum, "RegionContentKindType"}, {:struct, "TSharedPtr<FTzRegionContentPlayInfo"}}},
    %{name: "MonsterBookInfo", type: {:nullable, {:struct, "MonsterBookInfo"}}},
    %{name: "TransmutationRecords", type: {:map, {:struct, "TTuple<FTzCuid"}, {:enum, "ItemCategoryType"}}},
    %{name: "PlayerCampaignInfo", type: {:nullable, :message}},
    %{name: "VolunteerParticipationInfos", type: {:map, {:enum, "BattalionContentsKindType"}, {:struct, "TSharedPtr<FTzVolunteerParticipationInfo"}}},
    %{name: "PlayerRealmIntegrationBattleInfo", type: {:nullable, {:struct, "PlayerRealmIntegrationBattleInfo"}}},
    %{name: "PaidAttendanceInfos", type: {:list, {:struct, "PaidAttendanceInfo"}}}
  ],

"PlayerCreateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerSummaryInfo", type: {:nullable, {:struct, "PlayerSummaryInfo"}}}
  ],

"GatheringSiteInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "WorkingFollowerCount", type: {:int, 4}}
  ],

"PartyAppointLeaderNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PreviousLeaderGuid", type: {:uint, 8}},
    %{name: "LeaderAppointReason", type: {:enum, "PartyLeaderAppointReasonType"}}
  ],

"SeamlessNpcInfo" => [
    %{name: "__base__", type: {:struct, "SeamlessEntityInfo"}},
    %{name: "IsInVillage", type: :bool},
    %{name: "IsPublicResurrector", type: :bool}
  ],

"AnniversaryAchievementPrivateChannelCloseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionTargetLocationSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CrossRealmCovenantSearchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantName", type: :string}
  ],

"CovenantCampInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantCampInfoList", type: {:list, {:struct, "CovenantCampInfo"}}}
  ],

"VolunteerParticipationInfo" => [
    %{name: "BattalionContentsKind", type: {:enum, "BattalionContentsKindType"}},
    %{name: "ParticipationCountInfo", type: {:nullable, :message}}
  ],

"QueryPlayerSummaryInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerSummaryInfo", type: {:nullable, {:struct, "PlayerSummaryInfo"}}}
  ],

"TimeCreviceCovenantPvpScoreRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "RankingViewInfo"}},
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "Name", type: :string},
    %{name: "Level", type: {:int, 4}},
    %{name: "PvpScore", type: {:int, 4}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "AdditionalSourceInfo", type: {:nullable, :message}}
  ],

"StrongholdPlayerTeleportNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TeleportDateTime", type: :datetime}
  ],

"StrongholdBattleReinforcementJoinNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DefenseGroupInfo", type: {:nullable, {:struct, "StrongholdBattleDefenseGroupInfo"}}}
  ],

"CovenantCompleteResearchHistoryInfo" => [
    %{name: "__base__", type: {:struct, "CovenantHistoryInfo"}},
    %{name: "ResearchCuid", type: :cuid},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"PlayerFieldEnterNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatSpawnNormalDoodadRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DoodadCuid", type: :cuid},
    %{name: "Count", type: {:int, 4}}
  ],

"MountBoardedInfo" => [
    %{name: "__base__", type: {:struct, "MountStateInfo"}},
    %{name: "MountItemCuid", type: :cuid},
    %{name: "MountSkillReadyDateTime", type: :datetime}
  ],

"CovenantAssetMigrationInfo" => [
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"StrongholdBattleNewGroupNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "CovenantName", type: :string}
  ],

"EntityRemoveNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "EntityRemoveReason", type: {:enum, "EntitySpawnRemoveReasonType"}}
  ],

"FollowerCollectionInfo" => [
    %{name: "CollectionCuid", type: :cuid},
    %{name: "CollectionStatus", type: {:map, :cuid, {:struct, "TSharedPtr<FTzFollowerCollectionTopExperienceInfo"}}},
    %{name: "AccomplishedRewardPhase", type: {:struct, "unsigned_char"}}
  ],

"ErLoginServerInitialToyBotAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErLoginServerInitialToyAuthenticateInfo"}}
  ],

"CheatApplyArquiAttunementSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiAttunementSetCuid", type: :cuid}
  ],

"LastDeathRecordDeleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SkillUseOptionInfo" => [
    %{name: "SkillCuid", type: :cuid},
    %{name: "UseManaPointsRestriction", type: :bool},
    %{name: "UseByAutoAttackTargetingRangeKind", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x1a)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar9=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar9=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "UseCycle", type: :unknown},
    %{name: "UseCycleInPvp", type: :unknown},
    %{name: "CycleRange_sec", type: {:int, 4}},
    %{name: "UseByAutoUseByHealthPointsCondition", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x25)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar1=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar1=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "HealthPointsRatioToAutoUse_pe2", type: {:nullable, {:struct, "unsigned_char"}}}
  ],

"BoundAndErodedInheritanceBatchCraftRequestInfo" => [
    %{name: "BoundAndErodedInheritanceMaterialSelector", type: {:nullable, {:struct, "ItemBoundAndErodedSelector"}}},
    %{name: "CraftCount", type: {:int, 4}}
  ],

"QuestMissionProgressNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestMissionProgressInfo", type: {:nullable, {:struct, "QuestMissionProgressInfo"}}}
  ],

"SendChatMessageFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"InGameNotificationDeleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"FollowerArrivedAtHeadquartersNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "ArrivedAtHeadquartersDateTime", type: :datetime}
  ],

"CovenantHistoryQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CovenantHistoryCategory", type: {:enum, "CovenantHistoryCategoryType"}},
    %{name: "CovenantHistoryInfos", type: {:list, {:struct, "CovenantHistoryInfo"}}}
  ],

"CrossRealmCovenantDiplomacyWithdrawHostilityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingRepairResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CrossRealmSeasonEntryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}}
  ],

"PartyConfirmJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "PartyMemberInfo"}}}
  ],

"ShieldWallInfo" => [
    %{name: "__base__", type: {:struct, "EntityInfo"}},
    %{name: "ShieldWallCuid", type: :cuid},
    %{name: "OwnerGuid", type: {:uint, 8}}
  ],

"StrongholdBattleGuidSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}}
  ],

"SchemaColumn" => [
    %{name: "Order", type: {:int, 4}},
    %{name: "Column", type: {:int, 4}},
    %{name: "DeployType", type: :unknown},
    %{name: "DataType", type: :unknown},
    %{name: "Key", type: :bool},
    %{name: "Comment", type: :unknown},
    %{name: "Name", type: :unknown}
  ],

"ShopBuyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "BuyCountInfos", type: {:list, {:struct, "GoodsBuyCountInfo"}}},
    %{name: "RegisteredGoodsBuyCountInfos", type: {:list, {:struct, "RegisteredGoodsBuyCountInfo"}}},
    %{name: "RegisterShopBuyFailItems", type: {:map, {:uint, 8}, {:uint, 8}}},
    %{name: "MostExpensiveGoodsItemIndex", type: {:nullable, :message}}
  ],

"AccountAffectAttachNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AccountAffectInfo", type: {:nullable, :message}}
  ],

"RealmPlayerId" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AutoBuySettingsInfo" => [
    %{name: "Settings", type: {:map, :cuid, {:int, 4}}}
  ],

"RealmAccountPresentQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BattalionMemberCostumeInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "BattalionMemberInfoSynchronizeNotify"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}}
  ],

"SquadSharedFocusTargetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"PlayerLoginResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "GameServerConnectionInfo", type: {:nullable, {:struct, "ConnectionInfo"}}},
    %{name: "CanCheatCommand", type: :bool},
    %{name: "BanInfo", type: {:nullable, :message}},
    %{name: "InPvpPlayerGuid", type: {:uint, 8}}
  ],

"SpellstoneInfo" => [
    %{name: "__base__", type: {:struct, "ItemInfo"}},
    %{name: "SpellstoneAdditionalInfo", type: {:nullable, {:struct, "SpellstoneAdditionalInfo"}}}
  ],

"PlayerLocationMonitoringConnectionStateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}}
  ],

"CheatCharacterPrivateStatsInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingConstructResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantResetCovenantCampaignTicketCountNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantCampaignTicketCount", type: {:int, 4}}
  ],

"CheatChangeLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatSkillTableReloadResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantLevelUpHistoryInfo" => [
    %{name: "__base__", type: {:struct, "CovenantHistoryInfo"}},
    %{name: "OldLevel", type: {:int, 4}},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CheatCovenantCompleteCampaignRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantRegisteredGoodsServiceStateUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ServiceState", type: {:enum, "CovenantRegisteredGoodsServiceStateType"}}
  ],

"CovenantRemoveJoinApplicationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeMemberSlayingGradeNotify" => [
    %{name: "__base__", type: {:struct, "CovenantSynchronizeMemberNotify"}},
    %{name: "SlayingGrade", type: {:int, 2}}
  ],

"CheatTutorialBeginFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"StrongholdBattleRemoveSiegeWeaponSlotNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "SlotIndex", type: {:int, 2}}
  ],

"GearEnhanceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GearEnhancementResultInfo", type: {:nullable, {:struct, "GearEnhancementResultInfo"}}}
  ],

"ServerDrivenPlayRecoveringHealthPointsStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}}
  ],

"FavoriteCollectionRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CollectionCuid", type: :cuid},
    %{name: "IsRegistered", type: :bool}
  ],

"CheatAddDeathPenaltyRecordResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatCancelAllStrongholdProtectionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FollowerDispatchInfo" => [
    %{name: "WorkKind", type: {:enum, "FollowerWorkKindType"}},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "WorkplaceSpawnedEntityCuid", type: :cuid},
    %{name: "BuildingWorkObjectiveInfo", type: {:nullable, :message}}
  ],

"CheatCharacterPrivateStatsInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CharacterGuid", type: {:uint, 8}},
    %{name: "CharacterPrivateStatsInfo", type: {:nullable, :message}}
  ],

"ZoneInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "EntanglementGauge", type: {:int, 4}}
  ],

"CrossRealmCovenantQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuidRealmCuidList", type: {:map, {:uint, 8}, :cuid}}
  ],

"TerritoryContaminationStageChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "BeforeContaminationStage", type: {:enum, "ContaminationStageType"}},
    %{name: "AfterContaminationStage", type: {:enum, "ContaminationStageType"}}
  ],

"FieldEnterCompleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FieldInitializeInfo", type: {:nullable, {:struct, "FieldInitializeInfo"}}},
    %{name: "ServerNavMeshCrcChecksum", type: {:struct, "unsigned_int"}},
    %{name: "ClientNavMeshCrcChecksum", type: {:struct, "unsigned_int"}},
    %{name: "EntitySpawnReason", type: {:enum, "EntitySpawnRemoveReasonType"}},
    %{name: "LastSourceWarpPointCuid", type: :cuid}
  ],

"WorldMapMarkerRemoveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "RemovedGuid", type: {:uint, 8}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "ServerDrivenPlayOptionInfo"}}}
  ],

"RealmIntegrationSelectRealmAccountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmAccountGuid", type: {:uint, 8}}
  ],

"CheatChangeAllFollowersLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SelfieModeShootNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"TaxInfo" => [
    %{name: "ShopValueAddedTaxRate_pe2", type: {:int, 4}},
    %{name: "CraftedItemValueAddedTaxRate_pe2", type: {:int, 4}},
    %{name: "GatheringSiteEntranceFee", type: {:int, 4}},
    %{name: "CovenantTradeTaxRate_pe2", type: {:int, 4}},
    %{name: "MarketTaxRate_pe2", type: {:nullable, {:int, 4}}}
  ],

"MailWarehouseMigrationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "WarehouseMigrationReason", type: {:enum, "WarehouseMigrationReasonType"}},
    %{name: "WarehouseMigrationInfo", type: {:nullable, {:struct, "WarehouseMigrationInfo"}}},
    %{name: "SourceHavenCuid", type: :cuid},
    %{name: "DestinationHavenCuid", type: :cuid}
  ],

"WeeklyContributionPointsDividendInfo" => [
    %{name: "__base__", type: {:struct, "DividendInfo"}}
  ],

"BattalionOptionInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "BattalionOptionInfo"}}}
  ],

"CovenantRubyShopInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "ShopInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantRubyShopInfo"}}},
    %{name: "ShopMerchandiseInfos", type: {:list, {:struct, "CovenantRubyShopMerchandiseInfo"}}}
  ],

"CrossRealmCovenantDiplomacyDeleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CrossRealmCovenantDiplomacyInfo", type: {:nullable, {:struct, "CrossRealmCovenantDiplomacyInfo"}}}
  ],

"RewardAmityInfo" => [
    %{name: "ClanCuid", type: :cuid},
    %{name: "AmityDelta", type: {:uint, 8}}
  ],

"BattalionInviteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"RealmIntegratedCovenantNameChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "RequesterGuid", type: {:uint, 8}},
    %{name: "Name", type: :string}
  ],

"CheatAccomplishAchievementResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyDeleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantDiplomacyInfo", type: {:nullable, :message}}
  ],

"HavenOccupancyInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "HavenOperationInfo", type: {:nullable, {:struct, "HavenOperationInfo"}}}
  ],

"MountItemChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MountItemCuid", type: :cuid}
  ],

"CheatDestroyPointsCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MailLayoutInfo" => [
    %{name: "MailLayoutKind", type: {:enum, "MailLayoutKindType"}}
  ],

"ConnectionStatusSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}}
  ],

"InteractionStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"FollowerSquadUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"CheatSetLocalServerPushResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"DeathPenaltyFreeRecoveryInfo" => [
    %{name: "DailyFreeRecoveryCount", type: {:int, 4}},
    %{name: "RemainingDailyFreeRecoveryCount", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"CheatChangeSpiritualBondPowerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MonsterBookConsumeItemOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "ItemGradeToBatchConsume", type: {:enum, "ItemGradeType"}}
  ],

"CheatSpawnNpcRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "NpcBossChaseGrade", type: {:int, 4}},
    %{name: "Count", type: {:int, 4}}
  ],

"InventoryOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "InventoryOptionInfo", type: {:nullable, {:struct, "InventoryOptionInfo"}}}
  ],

"ResuscitatePleaRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantLivingTotemDeployRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "LivingTotemCuid", type: :cuid}
  ],

"SeasonPassLevelRewardAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RewardedLevels", type: {:map, {:enum, "SeasonPassRewardKindType"}, {:struct, "TSet<int"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"StrongholdBuildingWorkCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatInstallStanceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "InstallRequestedStance", type: {:enum, "StanceType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}},
    %{name: "InstalledStance", type: {:enum, "StanceType"}}
  ],

"EmergencyEscapeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerEmergencyEscapeInfo", type: {:nullable, {:struct, "PlayerEmergencyEscapeInfo"}}}
  ],

"StrongholdBattleSummaryInfo" => [
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "EndDateTime", type: :datetime},
    %{name: "StrongholdBattleJoinedCovenantInfos", type: {:list, {:struct, "StrongholdBattleJoinedCovenantInfo"}}}
  ],

"EnvironmentVariableUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Name", type: :string},
    %{name: "Value", type: :string}
  ],

"CovenantSupportApplyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuids", type: {:list, {:uint, 8}}}
  ],

"InventoryUpdateInfo" => [
    %{name: "AddedItemInfoList", type: {:list, {:struct, "ItemInfo"}}},
    %{name: "RemovedItemGuidList", type: {:list, {:uint, 8}}},
    %{name: "StackableItemUpdateInfoList", type: {:list, {:struct, "StackableItemUpdateInfo"}}}
  ],

"MarketStrongholdTaxInfo" => [
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CurrentTaxRate_pe2", type: {:int, 4}}
  ],

"TrapInfo" => [
    %{name: "__base__", type: {:struct, "CharacterInfo"}},
    %{name: "TrapCuid", type: :cuid},
    %{name: "InstallerGuid", type: {:uint, 8}}
  ],

"CheatAddStrongholdTaxAmountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PartyQueryMemberCandidateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmPlayerName", type: {:struct, "RealmPlayerName"}}
  ],

"CovenantWatchDetailInfo" => [
    %{name: "__base__", type: {:struct, "CovenantWatchInfo"}},
    %{name: "TargetPlayerName", type: :string},
    %{name: "TargetPlayerClasse", type: {:enum, "ClasseType"}},
    %{name: "TargetPlayerCovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"CovenantWorldMapMarkerInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "WorldMapMarkerInfos", type: {:list, {:struct, "WorldMapMarkerInfo"}}}
  ],

"BasicAchievementPrivateChannelCloseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"WorldMapMarkerCopyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SourceWorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "SourceGuid", type: {:uint, 8}}
  ],

"CheatClearRealmIntegrationBattleScoreRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatSetUrfModeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsUrfMode", type: :bool}
  ],

"MerchandisePaymentInfo" => [
    %{name: "TargetCuid", type: :cuid}
  ],

"StrongholdCovenantShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "ShopInfo"}}}
  ],

"CovenantBattalionExpeditionSummaryInfo" => [
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "ExpeditionCuid", type: :cuid},
    %{name: "ExpeditionJoinDateTime", type: {:nullable, :datetime}},
    %{name: "ExpeditionPhase", type: {:enum, "BattalionExpeditionPhaseType"}}
  ],

"XorHandshake" => [
    %{name: "xorStaticKey", type: :unknown},
    %{name: "PublicKeyXmlString", type: :unknown},
    %{name: "Type", type: :unknown}
  ],

"CovenantRubyShopBuyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopCuid", type: :cuid},
    %{name: "HavenCuid", type: :cuid},
    %{name: "MerchandiseBuyInfos", type: {:map, :cuid, {:uint, 8}}},
    %{name: "UseResetCount", type: {:int, 4}}
  ],

"AnniversaryAchievementRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :datetime},
    %{name: "AchievementCuid", type: :cuid},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CheatClearRealmIntegrationBattleParticipationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerSummaryInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerSummaryInfo", type: {:nullable, {:struct, "PlayerSummaryInfo"}}}
  ],

"CheatApplySpellstonePresetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpellstonePresetCuid", type: :cuid}
  ],

"ErosionInstallNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InstallerGuid", type: {:uint, 8}},
    %{name: "ErosionItemCuid", type: :cuid}
  ],

"MarketRecommendedItemQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}}
  ],

"ErosionInstallCancelFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantRewardInfo" => [
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "DiscardedIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"CheatResetAllCooldownResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ErLoginServerInitialDevBotAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErLoginServerInitialDevAuthenticateInfo"}}
  ],

"BattalionQueryMemberCandidateListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "BattalionMemberCandidateList", type: {:list, {:struct, "BattalionMemberSummaryInfo"}}}
  ],

"CheatToggleShowQuestDebugResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsEnabled", type: :bool}
  ],

"CheatClearRealmIntegrationBattleAllScoreResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerMarketTransactionHistoryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketTransactionInfos", type: {:list, {:struct, "MarketTransactionInfo"}}}
  ],

"CheatBatchBossSpawnTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AnniversaryRecordHistoryInfo" => [
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryBeginDateTime", type: :datetime},
    %{name: "AnniversaryEndDateTime", type: :datetime}
  ],

"CheatUpsertGoodsBuyCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsCuid", type: :cuid},
    %{name: "Count", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"CovenantCampInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MarketGoodsInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketGoodsQueryInfo", type: {:nullable, {:struct, "MarketGoodsQueryInfo"}}},
    %{name: "IndexUpperBound", type: {:int, 4}},
    %{name: "IndexLowerBound", type: {:int, 4}}
  ],

"ChatBattalionRequest" => [
    %{name: "__base__", type: {:struct, "ChatRequest"}},
    %{name: "IsNotice", type: :bool}
  ],

"CoreMaterialItemInfo" => [
    %{name: "__base__", type: {:struct, "ItemInfo"}}
  ],

"PlayerMissionRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "MissionCuidAndSteps", type: {:map, :cuid, {:int, 4}}}
  ],

"BasicAchievementPrivateChannelCloseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"GatheringSiteInfo" => [
    %{name: "__base__", type: {:struct, "CharacterInfo"}},
    %{name: "GatheringSiteCuid", type: :cuid},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "GatheringFollowerWorkInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzFollowerWorkOverallInfo"}}}
  ],

"CovenantJoinApplicationInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "SlayingGrade", type: {:int, 2}},
    %{name: "ApplyDateTime", type: :datetime},
    %{name: "IsConnected", type: :bool},
    %{name: "LastClientDisconnectDateTime", type: :datetime}
  ],

"BattalionJoinRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"GenerateVivoxTokenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Token", type: :string},
    %{name: "Subject", type: :string}
  ],

"CheatKillSurroundingCharactersRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MaxRadius_cm", type: :float},
    %{name: "FactionRelationScope", type: {:enum, "FactionRelationScopeType"}},
    %{name: "IsSkipDyingAndFinishable", type: :bool}
  ],

"CovenantSupportApplyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SupportMemberGuid", type: {:uint, 8}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerWorkInfo", type: {:nullable, {:struct, "FollowerWorkInfo"}}},
    %{name: "CovenantSupportedCount", type: {:nullable, {:struct, "LimitedCountingInfo"}}}
  ],

"EquipmentPresetSelectResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}}
  ],

"AdditionalHealthAndManaPointsAmountInfo" => [
    %{name: "AffectVuid", type: {:struct, "Vuid"}},
    %{name: "AdditionalHealthPointsAmountDelta", type: {:uint, 8}},
    %{name: "AdditionalManaPointsAmountDelta", type: {:uint, 8}}
  ],

"ServerDrivenPlayStartRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionCuid", type: {:nullable, {:struct, "Cuid"}}},
    %{name: "HuntingLocation_cm", type: {:nullable, :vector}},
    %{name: "ResupplyOnStart", type: :bool}
  ],

"GearEnchantPreserveItemAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "ItemAdditionalInfo"}},
    %{name: "GearCuid", type: :cuid},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}}
  ],

"MailCovenantWeeklyRubyDonationLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "CovenantWeeklyRubyDonationInfos", type: {:list, {:struct, "CovenantWeeklyRubyDonationInfo"}}}
  ],

"ReturnNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ReturnItemCuid", type: :cuid},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"ToyMerchandisePaymentInfo" => [
    %{name: "__base__", type: {:struct, "MerchandisePaymentInfo"}},
    %{name: "ToyProductId", type: :string},
    %{name: "StampToken", type: :string},
    %{name: "StampId", type: :string},
    %{name: "Quantity", type: {:int, 4}},
    %{name: "MarketType", type: {:enum, "MarketType"}},
    %{name: "PriceAmountMicros", type: {:uint, 8}},
    %{name: "PriceCurrencyCode", type: :string},
    %{name: "IsSubscription", type: :bool},
    %{name: "LocalizedTitle", type: :string}
  ],

"FollowerDispatchAutomationResultNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatSpawnStrongholdBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "BuildingLevel", type: {:int, 4}}
  ],

"CovenantRejectInvitationsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuids", type: {:list, {:uint, 8}}}
  ],

"MonsterBookExperiencePointsItemConsumeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "UpdatedNodeStateInfo", type: {:nullable, {:struct, "MonsterBookNodeAcquiredStateInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "MonsterBookCollectionInfo"}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}}
  ],

"CheatFinishHavenBuildingWorkResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: :cuid}
  ],

"MapDistrictOpenNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DistrictCuid", type: :cuid}
  ],

"QueryPlayerBattalionJoinableResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "IsJoinableBattalion", type: :bool}
  ],

"RealmAccountPresentRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FollowerSquadResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleDisconnectNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"StrongholdBattleAttackOuterGateStartNotify" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackPhaseStartNotify"}}
  ],

"ContentsActivationUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ContentsActivationFlags", type: {:list, :bool}}
  ],

"CovenantUpdateEmblemInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"SkillGroundTargetingInfo" => [
    %{name: "__base__", type: {:struct, "SkillTargetingInfo"}},
    %{name: "DirectionYaw_rad", type: :float},
    %{name: "Location_cm", type: :vector},
    %{name: "IsOriginatedAtCasterLocationProxy", type: :bool}
  ],

"CovenantStrongholdTaxSettlementNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "SettlementAmount", type: {:uint, 8}}
  ],

"RPCInvokingMessage" => [
    %{name: "__base__", type: {:struct, "RPCMessage"}},
    %{name: "InterfaceTypeCode", type: {:int, 4}},
    %{name: "MethodId", type: {:int, 4}},
    %{name: "Param", type: {:nullable, :message}},
    %{name: "FireAndForget", type: :bool},
    %{name: "HasCancellationToken", type: :bool}
  ],

"CovenantSynchronizeMemberInfosRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"DoodadInfo" => [
    %{name: "__base__", type: {:struct, "EntityInfo"}},
    %{name: "DoodadCuid", type: :cuid},
    %{name: "SpawnerCuid", type: :cuid}
  ],

"WorldMapPvpBattleMergeNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleGuid1", type: {:uint, 8}},
    %{name: "PvpBattleGuid2", type: {:uint, 8}},
    %{name: "PvpBattleInfo", type: {:nullable, :message}}
  ],

"CheatMonsterBookAcquireAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "MonsterBookInfo", type: {:nullable, {:struct, "MonsterBookInfo"}}}
  ],

"CheatChangeRankingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CrossRealmCovenantDiplomacyHostilityKillCountUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "DeclarantCovenantKillCount", type: {:int, 4}},
    %{name: "DeclaredCovenantKillCount", type: {:int, 4}}
  ],

"StanceSwitchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SwitchRequestedStance", type: {:enum, "StanceType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}}
  ],

"ErFrontServerSessionWaitingQueueNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WaitQueueType", type: {:enum, "WaitQueueType"}},
    %{name: "WaitingQueueRemainingCount", type: {:int, 4}},
    %{name: "RealmHasSpaceAvailable", type: :bool}
  ],

"QuestRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}},
    %{name: "HiddenRewardInfo", type: {:nullable, {:struct, "RewardInfo"}}}
  ],

"CheatAccountAffectAttachResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AccountAffectCuid", type: :cuid}
  ],

"BattalionMemberLevelSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "BattalionMemberInfoSynchronizeNotify"}},
    %{name: "Level", type: {:int, 4}}
  ],

"FindWarpPointsForAutoMoveToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid}
  ],

"MailMarkAsImportantRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "MailBoxKindType"}}
  ],

"BuildingBaseBuildingExistenceSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "IsBaseBuildingExist", type: :bool}
  ],

"SecessionChatRoomResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"ItemAddInfo" => [
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"StrongholdBattleUpdateSiegeWeaponTargetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "TargetSpawnerCuid", type: :cuid}
  ],

"CovenantRejectInvitationsFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RejectFailedCovenantGuids", type: {:list, {:uint, 8}}}
  ],

"StrongholdCancelProtectionReservationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantBanishMemberRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MailStrongholdPayDebtLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "NextPayMaintenanceCostDateTime", type: :datetime}
  ],

"CheatRestoreChatCovenantRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"OrganizationStatPrimaryKey" => [
    %{name: "OrganizationStatKind", type: {:enum, "OrganizationStatKindType"}},
    %{name: "TargetKindEnumInteger", type: {:int, 4}},
    %{name: "EffectKindEnumInteger", type: {:int, 4}},
    %{name: "EffectCuid", type: :cuid}
  ],

"ItemAutoUseInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCuids", type: {:list, :cuid}}
  ],

"CovenantSummaryInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"CheatStrongholdBattleCompleteAttackPhaseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatGetEnvironmentVariablesRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
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
    %{name: "IsUpgradeSlayingGrade", type: :bool},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "AnniversaryRewardCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "AnniversaryPoint", type: {:uint, 8}},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}},
    %{name: "UnlockPaidRewardSeasonPassCuid", type: :cuid},
    %{name: "UnlockPlusRewardSeasonPassCuid", type: :cuid},
    %{name: "UnlockPaidAttendanceCuid", type: :cuid}
  ],

"CheatApplyCollectionSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionSetCuid", type: :cuid}
  ],

"WorldMapPvpBattleInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "PvpBattleInfos", type: {:map, :cuid, {:struct, "TMap<long_long"}}}
  ],

"CovenantDiplomacyDeclareHostilityNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatCovenantGiftPaidItemResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ExpeditionInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "ExpeditionSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzExpeditionSummaryInfo"}}}
  ],

"CombatOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "CombatTargetOptionInfo", type: {:nullable, {:struct, "CombatTargetOptionInfo"}}},
    %{name: "CombatLootOptionInfo", type: {:nullable, {:struct, "CombatLootOptionInfo"}}}
  ],

"BuildingWorkRequestInfo" => [
    %{name: "BaseInfo", type: {:nullable, :message}}
  ],

"BattalionSwapFormationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrderA", type: {:int, 4}},
    %{name: "SquadMemberOrderA", type: {:int, 4}},
    %{name: "PlayerGuidA", type: {:uint, 8}},
    %{name: "SquadOrderB", type: {:int, 4}},
    %{name: "SquadMemberOrderB", type: {:int, 4}},
    %{name: "PlayerGuidB", type: {:uint, 8}},
    %{name: "SwapFormationReason", type: {:enum, "BattalionSwapFormationReasonType"}}
  ],

"PvpRecordKillerNpcInfo" => [
    %{name: "__base__", type: {:struct, "PvpRecordNpcInfo"}},
    %{name: "Damage", type: {:uint, 8}},
    %{name: "AttackerKind", type: {:enum, "PvpRecordAttackerKindType"}},
    %{name: "LastAttackDateTime", type: :datetime}
  ],

"BattalionChatInfo" => [
    %{name: "__base__", type: {:struct, "ChatInfo"}},
    %{name: "IsNotice", type: :bool}
  ],

"CovenantTradeCategoryQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuid", type: :cuid}
  ],

"CharacterMoveStopInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveInfo"}},
    %{name: "CurrentFacingDirectionYaw_rad", type: :float},
    %{name: "CharacterStopMovingReason", type: {:enum, "CharacterStopMovingReasonType"}}
  ],

"ExpeditionInfo" => [
    %{name: "ExpeditionCuid", type: :cuid},
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "EndDateTime", type: {:nullable, :datetime}},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}},
    %{name: "JoinedBattalionCovenantGuids", type: {:map, {:uint, 8}, {:uint, 8}}}
  ],

"CovenantParticipationInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}}
  ],

"CheatOpenAllFogResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantReturnHavenChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"ServerDrivenPlayOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "AlwaysUseWarp", type: :bool},
    %{name: "SwitchAtCurrentLocationInsideHuntingSite", type: :unknown},
    %{name: "AutoSwitchOnDisconnected", type: :unknown},
    %{name: "DesignatedHuntingSiteCuid", type: :cuid},
    %{name: "DesignatedPlayerWorldMapMarkerGuid", type: {:uint, 8}},
    %{name: "UseAutoResupply", type: :unknown},
    %{name: "AutoResupplyUseCount", type: {:int, 4}},
    %{name: "UseAutoResupplyWhenDead", type: :unknown},
    %{name: "ResupplyWeightLimit_pe2", type: {:int, 4}},
    %{name: "UseHealthPointsRecovery", type: :unknown},
    %{name: "EndWhenDeadInPvp", type: :unknown}
  ],

"StrongholdBattleEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "WinnerBattalionInfo", type: {:nullable, {:struct, "StrongholdBattleWinnerBattalionInfo"}}},
    %{name: "EndReason", type: {:enum, "StrongholdBattleEndReasonType"}},
    %{name: "BattalionParticipateDuration_sec", type: {:int, 4}},
    %{name: "BattalionMemberCoreInfos", type: {:list, {:struct, "BattalionMemberCoreInfo"}}},
    %{name: "BattalionMemberStatisticsInfos", type: {:list, {:struct, "StrongholdBattleCovenantBattalionMemberStatisticsInfo"}}},
    %{name: "BattalionMemberDisplayInfos", type: {:list, {:struct, "StrongholdBattleCovenantBattalionMemberDisplayInfo"}}},
    %{name: "StrongholdBattleRewardInfo", type: {:nullable, {:struct, "StrongholdBattleRewardInfo"}}}
  ],

"WorldMapPvpBattlePublishNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleInfo", type: {:nullable, :message}}
  ],

"CovenantSearchInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: :cuid},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "Name", type: :string},
    %{name: "Level", type: {:int, 4}},
    %{name: "CovenantJoinKind", type: {:enum, "CovenantJoinKindType"}},
    %{name: "LeaderName", type: :string},
    %{name: "MemberCount", type: {:int, 2}},
    %{name: "MaxMemberCount", type: {:int, 2}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantCampCuid", type: :cuid},
    %{name: "OccupiedStrongholdCuids", type: {:list, :cuid}},
    %{name: "MainHavenCuid", type: :cuid},
    %{name: "IsJoinApplied", type: :bool}
  ],

"RejectDiplomacyChatRoomInvitationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"PrivateChannelCloseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ChannelKind", type: {:enum, "PrivateChannelKindType"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "SquadOrder", type: {:int, 4}}
  ],

"FollowerDeathNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "DeathInfo", type: {:nullable, {:struct, "FollowerDeathInfo"}}}
  ],

"PreregistrationInfo" => [
    %{name: "RealmInfo", type: {:nullable, {:struct, "RealmInfo"}}},
    %{name: "ReservedPlayerName", type: :string},
    %{name: "IsAnyPlayerCreated", type: :bool},
    %{name: "IsReservedPlayerCreated", type: :bool},
    %{name: "ReservedCovenantName", type: :string},
    %{name: "EndDateTime", type: :datetime}
  ],

"StrongholdSummonWaveDefenseInfo" => [
    %{name: "__base__", type: {:struct, "EntityInfo"}},
    %{name: "StrongholdSummonWaveDefenseCuid", type: :cuid},
    %{name: "StrongholdSummonWaveDefenseStartDateTime", type: :datetime},
    %{name: "DefenseTargetGuid", type: {:uint, 8}},
    %{name: "CurrentWaveIndex", type: {:nullable, {:int, 4}}},
    %{name: "CurrentWaveStartDateTime", type: {:nullable, :datetime}},
    %{name: "CurrentWaveNpcKnockOutProgress", type: {:map, :cuid, {:int, 4}}}
  ],

"CovenantUpdateCovenantMemberRoleNameRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetCovenantMemberRoleName", type: :string},
    %{name: "NewCovenantMemberRoleName", type: :string}
  ],

"QuickSlotModifyNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuickSlotUpdateInfo", type: {:nullable, {:struct, "QuickSlotUpdateInfo"}}}
  ],

"FindShortestTravelPathResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Destination_cm", type: :vector},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "ReturnItemCuid", type: :cuid},
    %{name: "CovenantReturnHavenCuid", type: :cuid},
    %{name: "StartWarpPointCuid", type: :cuid},
    %{name: "DestinationWarpPointCuid", type: :cuid},
    %{name: "NearestRoadJunctionToStartLocationId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToDestinationId", type: {:int, 4}},
    %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "PathNotByRoad", type: {:list, :vector}},
    %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:int, 4}}}
  ],

"CovenantHistoryShowArrivalNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantHistoryInfos", type: {:list, {:struct, "CovenantHistoryInfo"}}}
  ],

"CheatRegenerateHealthPointsAndManaPointsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatUnsetStatRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StatKind", type: {:enum, "AdjustableStatKindType"}}
  ],

"GearEnhancementResultInfo" => [
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "IsEnhancementSuccess", type: :bool},
    %{name: "ItemInfo", type: {:nullable, :message}},
    %{name: "ResultEnhancementGrade", type: {:int, 2}},
    %{name: "PreviousEnhancementGrade", type: {:int, 2}},
    %{name: "IsConfirmedEnhancement", type: :unknown},
    %{name: "IsEroded", type: :unknown},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "DestructionRewardInfo", type: {:nullable, {:struct, "RewardInfo"}}},
    %{name: "IsDestroyed", type: :unknown}
  ],

"ArquiruneInfo" => [
    %{name: "__base__", type: {:struct, "ItemInfo"}}
  ],

"MonsterBookNodeReceiveLevelUpRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}},
    %{name: "LastRewardedLevel", type: {:int, 4}}
  ],

"MarketSellResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"NpcSpeechBalloonTextFormatInfo" => [
    %{name: "TextFormatParameters", type: {:list, :string}}
  ],

"CovenantWatchRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string}
  ],

"CheatChangeStrongholdAllBuildingLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "BuildingKind", type: {:enum, "BuildingKindType"}},
    %{name: "BuildingLevel", type: {:int, 4}}
  ],

"RankingAdditionalSourceInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"CheatCloseFogRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FogCuid", type: :cuid}
  ],

"ChatQueryEntityInfoByPlayerGuidRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"InteractableDoodadRemainingInteractionCompleteCountSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "RemainingInteractionCompleteCount", type: {:int, 4}}
  ],

"MonsterBookExperiencePointsItemConsumeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"TlsLikeEncryptServerCompleted" => [
    %{name: "TozNetwork.Handshake.TlsLikeEncryptor.TlsLikeEncryptServerCompleted", type: :unknown}
  ],

"PartyCreateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PartyInfo", type: {:nullable, {:struct, "PartyInfo"}}}
  ],

"StrongholdSummonWaveDefenseNpcSummonWaveSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "NpcSummonWaveStartDateTime", type: :datetime},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"CovenantResearchNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantResearchInfo", type: {:nullable, {:struct, "CovenantResearchInfo"}}}
  ],

"PlayerMurderPointsInfo" => [
    %{name: "PlayerChainKillCount", type: {:int, 4}},
    %{name: "LastKillPlayerGuid", type: {:uint, 8}},
    %{name: "LastKillPlayerKillDateTime", type: :datetime},
    %{name: "LastKillPlayerChainKillCount", type: {:int, 4}},
    %{name: "FissionPoints", type: {:int, 4}},
    %{name: "DestroyPoints", type: {:int, 4}},
    %{name: "DestroyerExpireDateTime", type: {:nullable, :datetime}}
  ],

"CovenantDiplomacyApplyAllianceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"ReceivedRewardInfo" => [
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "ExperiencePointsFromFinisher", type: {:uint, 8}},
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:nullable, {:struct, "ItemAddInfo"}}},
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}},
    %{name: "IsAnyRewardSentByMail", type: :bool},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "CovenantRewardInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "EntanglementGauge", type: {:int, 4}},
    %{name: "BossChaseGauge", type: {:int, 4}},
    %{name: "AmityReason", type: :string},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "IsUpgradeSlayingGrade", type: :bool},
    %{name: "SeasonPassExperiencePoints", type: {:uint, 8}},
    %{name: "UnlockPaidRewardSeasonPassCuid", type: :cuid},
    %{name: "UnlockPlusRewardSeasonPassCuid", type: :cuid},
    %{name: "UnlockPaidAttendanceCuid", type: :cuid}
  ],

"CovenantGiftQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"StrongholdBattleStatisticsKnockOutEventInfo" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleStatisticsEventInfo"}}
  ],

"AnniversaryAchievementUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryAchievementInfo", type: {:nullable, :message}}
  ],

"ClanSponsorRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ClanCuid", type: :cuid},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"NavMeshTileCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CheckRequestedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"FavorBossQuestAllAcceptResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FavoriteCraftRecipeRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RewardCuid", type: :cuid},
    %{name: "IsRegistered", type: :bool}
  ],

"CheatAccomplishAchievementRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AchievementCuid", type: :cuid}
  ],

"CheatSpawnOccupiableNpcBossRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSpawnerCuid", type: :cuid},
    %{name: "RetainDuration_sec", type: {:int, 4}}
  ],

"CovenantJoinedStrongholdBattleInfo" => [
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"AchievementInfo" => [
    %{name: "AchievementCuid", type: :cuid},
    %{name: "MissionProgressCounts", type: {:list, {:uint, 8}}},
    %{name: "AccomplishDateTime", type: {:nullable, :datetime}},
    %{name: "IsRewarded", type: :bool}
  ],

"PartyDismissFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmIntegrationBattleWarpResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"QueryChatRecordsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRecordsIndex", type: {:nullable, {:struct, "ChatRecordsIndex"}}},
    %{name: "Count", type: {:int, 4}}
  ],

"UniverseAccountLogoutResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ErosionInstallCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SquadInfo" => [
    %{name: "MemberGuids", type: {:list, {:uint, 8}}},
    %{name: "TargetLocationInfos", type: {:list, {:struct, "TargetLocationInfo"}}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"RealmAccountRegionContentPlayTimeInfo" => [
    %{name: "RegionContentKind", type: {:enum, "RegionContentKindType"}},
    %{name: "CrossRealmSeasonCuid", type: :cuid},
    %{name: "RegionContentPlayTimeInfo_sec", type: {:nullable, :message}},
    %{name: "AccumulateRechargedTime_sec", type: {:int, 4}},
    %{name: "LastResetDateTime", type: :datetime}
  ],

"TeaseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}}
  ],

"ErInterServerMigrationSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "ErServerSessionInitializeInfo"}}
  ],

"CheatRealmAccountRealmTransferBlockRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ApplyAll", type: :bool},
    %{name: "RealmAccountRealmTransferStepString", type: :string}
  ],

"GameOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"ContentsRelockNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ContentsUnlockKinds", type: :unknown}
  ],

"FollowerReturnReasonAdditionalInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"StrongholdBuildingDowngradeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"ChatEntitySummaryInfo" => [
    %{name: "ChatEntityGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "CovenantName", type: :string}
  ],

"CovenantConfirmInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"PrivateChannelCloseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChannelKind", type: {:enum, "PrivateChannelKindType"}}
  ],

"CheatPromoteAllFollowerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetTier", type: {:int, 4}}
  ],

"DataTable" => [
    %{name: "DataHeader", type: {:nullable, :message}},
    %{name: "DataId", type: {:int, 4}},
    %{name: "RegDate", type: :unknown},
    %{name: "Rows", type: :unknown}
  ],

"RealmAccountRealmTransferCheckInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ExpeditionLeaveBattalionNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"FollowerReturnReasonByHostilityCovenantDeclareAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "FollowerReturnReasonAdditionalInfo"}},
    %{name: "CovenantName", type: :string}
  ],

"FollowerGatheredHavenItemNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "GatheredItemCuid", type: :cuid},
    %{name: "GatheredItemCount", type: {:uint, 8}}
  ],

"StrongholdBattleCarriageLivingTotemLocationInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "MovePathInfo", type: {:nullable, {:struct, "MovePathInfo"}}}
  ],

"CovenantTradeGoodsDealInfo" => [
    %{name: "__base__", type: {:struct, "CovenantTradeGoodsSalesInfo"}},
    %{name: "BuyerInfo", type: {:nullable, :message}},
    %{name: "DealDateTime", type: {:nullable, :datetime}}
  ],

"WarehouseInfo" => [
    %{name: "HavenCuid", type: :cuid},
    %{name: "PointCurrencyContainerInfo", type: {:map, :cuid, {:uint, 8}}},
    %{name: "InventoryInfo", type: {:nullable, {:struct, "InventoryInfo"}}}
  ],

"CheatCloseAllFogResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerPublicStatsInfo" => [
    %{name: "__base__", type: {:struct, "CharacterPublicStatsInfo"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuid", type: :cuid}
  ],

"StackableItemSelector" => [
    %{name: "__base__", type: {:struct, "MultipleItemSelector"}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "IsBound", type: :bool},
    %{name: "IsStorable", type: :bool},
    %{name: "ExpireBeginDateTime", type: {:nullable, :datetime}},
    %{name: "ExpireEndDateTime", type: {:nullable, :datetime}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"ShopAutoSellSettingUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AutoSellSettings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"OccupiableNpcSummaryBulkUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "OccupiableNpcSummaryInfos", type: {:list, {:struct, "OccupiableNpcSummaryInfo"}}}
  ],

"CrossRealmCovenantQuerySummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"MailQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "UpperBoundDateTime", type: {:nullable, :datetime}}
  ],

"CollisionFreeSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "IsCollisionFree", type: :bool}
  ],

"PowerSavingModePlayInfo" => [
    %{name: "RewardInfo", type: {:nullable, {:struct, "PowerSavingModeRewardInfo"}}}
  ],

"MountDeboardingFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantResearchInfo" => [
    %{name: "ResearchCuid", type: :cuid},
    %{name: "ResearchLevel", type: {:int, 4}},
    %{name: "ResearchState", type: {:enum, "CovenantResearchStateType"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "LastUpdateGauge_mw", type: {:uint, 8}},
    %{name: "ResearchStartDateTime", type: {:nullable, :datetime}}
  ],

"CheatChangeSkillCooldownDurationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "Duration_msec", type: {:int, 4}}
  ],

"FindPathToBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :vector},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"RejectDiplomacyChatRoomInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CheatAnniversaryAchievementResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AnniversaryAchievementPointInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzAnniversaryAchievementPointInfo"}}}
  ],

"PartyConfirmRecommendationForInviteeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RecommenderRealmPlayerId", type: {:struct, "RealmPlayerId"}},
    %{name: "InviteeRealmPlayerId", type: {:struct, "RealmPlayerId"}},
    %{name: "InviteeName", type: :string},
    %{name: "IsApproved", type: :bool}
  ],

"CovenantSynchronizeMemberIsConnectedNotify" => [
    %{name: "__base__", type: {:struct, "CovenantSynchronizeMemberNotify"}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}},
    %{name: "LastClientDisconnectDateTime", type: :datetime}
  ],

"MailStrongholdTaxSettlementLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"MailCountQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}}
  ],

"CheatDiscoverAllSelfieDoodadSpawnersRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CollectionCategoryActiveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionCategoryCuids", type: {:list, :cuid}}
  ],

"CreateDiplomacyChatRoomResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"AccelerationUseFollowerWorkResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "AccelerationActionKind", type: {:enum, "AccelerationActionKindType"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "AcceleratedFollowerWorkInfo", type: {:nullable, {:struct, "FollowerWorkInfo"}}}
  ],

"CovenantBattalionExpeditionLivingTotemInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "ExpeditionLivingTotemMaxHealthPoints", type: {:uint, 8}},
    %{name: "ExpeditionLivingTotemHealthPoints", type: {:uint, 8}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "MovePathInfo", type: {:nullable, {:struct, "MovePathInfo"}}}
  ],

"MailStrongholdBattleResultLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailStrongholdBattleLayoutInfo"}},
    %{name: "WinnerCovenantName", type: :string},
    %{name: "WinnerCovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"CharacterMoveInfo" => [
    %{name: "Location_cm", type: :vector},
    %{name: "ServerUtcNow", type: :datetime},
    %{name: "DelayForOthersDuration_msec", type: :float}
  ],

"ChatOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "ChatTabFilter", type: {:list, {:enum, "ChatKindType"}}},
    %{name: "ItemAcquireNotifyDisplayOption", type: :bool},
    %{name: "CovenantRewardAcquireNotifyDisplayOption", type: :unknown},
    %{name: "ChatMacros", type: {:map, {:int, 4}, :string}}
  ],

"PlayerCustomizeInfoChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "Gender", type: {:enum, "GenderType"}}
  ],

"CovenantTradeSalesRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MailStrongholdCalculateMaintenanceCostLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "MaintenanceCost", type: {:uint, 8}}
  ],

"InstanceEventStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EventCuid", type: :cuid}
  ],

"KickPreexistingSessionConfirmResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "KickPreexistingSession", type: :bool}
  ],

"BuffProtectionRecoveryStatusNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffGuid", type: {:uint, 8}},
    %{name: "ProtectionRecoveryGauge", type: {:uint, 8}}
  ],

"NavMeshTileDataResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CheckedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"CovenantQueryRecommendCovenantSummaryInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSummaryInfos", type: {:list, {:struct, "CovenantSummaryInfo"}}}
  ],

"BuffDetachNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffGuid", type: {:uint, 8}},
    %{name: "ServerUtcNow", type: :datetime}
  ],

"SkillTargetingInfo" => [
    %{name: nil, type: :empty_struct}
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
    %{name: "ContributionPointsUpdateDateTime", type: :datetime}
  ],

"PartyLeaveFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"QueryPlayerSummaryInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string}
  ],

"StrongholdBuildingRepairRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"EntityRemoveBulkNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuids", type: {:list, {:uint, 8}}},
    %{name: "EntityRemoveReason", type: {:enum, "EntitySpawnRemoveReasonType"}}
  ],

"ErFrontServerSessionInitializeInfo" => [
    %{name: "__base__", type: {:struct, "ErServerSessionInitializeInfo"}},
    %{name: "WaitQueueType", type: {:enum, "WaitQueueType"}},
    %{name: "WaitingQueueRemainingCount", type: {:int, 4}},
    %{name: "RealmHasSpaceAvailable", type: :bool},
    %{name: "PopupCommunityAutomatically", type: :bool},
    %{name: "ServerConfigInfo", type: {:nullable, {:struct, "ServerConfigInfo"}}}
  ],

"ErLoginServerInitialToyAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErLoginServerInitialAuthenticateInfo"}},
    %{name: "Npsn", type: :string},
    %{name: "NpToken", type: :string},
    %{name: "NgsmToken", type: :string},
    %{name: "NpaCode", type: :string},
    %{name: "NexonSn", type: {:uint, 8}}
  ],

"StrongholdBattleRewardInfo" => [
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "SpiritualBondPower", type: {:uint, 8}},
    %{name: "RewardItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "CurrencyCuidToAmount", type: {:map, :cuid, {:uint, 8}}}
  ],

"RealmAccountLogoutResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "LoginServerConnectionInfo", type: {:nullable, {:struct, "ConnectionInfo"}}}
  ],

"PartyLeaveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"GearEnchantSlotInfo" => [
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "GearEnchantOptionGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "GearEnchantOptionStatSetCuid", type: :cuid},
    %{name: "CharacterStatChange", type: {:nullable, {:struct, "CharacterStatChangeInfo"}}}
  ],

"PvpRecordKillerPlayerInfo" => [
    %{name: "__base__", type: {:struct, "PvpRecordAttackerPlayerInfo"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "HasTeased", type: :bool}
  ],

"SkillAffectTargetStatsAffectInfo" => [
    %{name: "__base__", type: {:struct, "SkillStatsAffectInfo"}},
    %{name: "IsCritical", type: :bool},
    %{name: "IsBlocked", type: :unknown},
    %{name: "IsGlancingBlow", type: :unknown},
    %{name: "ProtectedDamage", type: {:int, 4}},
    %{name: "DamageDistributionInfo", type: {:nullable, {:struct, "SkillAffectDamageDistributionInfo"}}}
  ],

"FollowerCoreInfo" => [
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerCuid", type: :cuid},
    %{name: "FollowerLevel", type: {:int, 4}},
    %{name: "DepartureHavenCuid", type: :cuid},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "PlayerCovenantGuid", type: {:uint, 8}},
    %{name: "ReturnReason", type: {:enum, "FollowerReturnReasonType"}},
    %{name: "ReturnReasonAdditionalInfo", type: {:nullable, :message}},
    %{name: "LeaveToWorkplaceDateTime", type: :datetime},
    %{name: "ArrivedAtWorkplaceDateTime", type: :datetime},
    %{name: "LeaveToHeadquartersDateTime", type: :datetime}
  ],

"ServerDrivenPlayOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "ServerDrivenPlayOptionInfo"}}}
  ],

"CovenantRealmTransferInfo" => [
    %{name: "RealmTransferCuid", type: :cuid},
    %{name: "DestinationRealmCuid", type: :cuid},
    %{name: "CovenantRealmTransferMemberReadyChecks", type: {:map, {:uint, 8}, :bool}},
    %{name: "CovenantRealmTransferExpireDateTime", type: {:nullable, :datetime}}
  ],

"AnniversaryAchievementPrivateChannelKeepaliveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"InventoryItemDeleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"PvpRecordDeadPlayerInfo" => [
    %{name: "__base__", type: {:struct, "PvpRecordPlayerInfo"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "HasPlayerLocationMonitoringRegistered", type: :bool}
  ],

"NpcOccupationCovenantInfo" => [
    %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
    %{name: "OccupationDateTime", type: :datetime},
    %{name: "OccupationScore", type: {:int, 4}}
  ],

"ExpeditionJoinRequestInfo" => [
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "IsAllowVolunteerJoinApply", type: :bool},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :bool}
  ],

"SendPrivateChatMessageRequest" => [
    %{name: "__base__", type: {:struct, "SendChatMessageRequest"}},
    %{name: "RecipientPlayerName", type: :string},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CovenantPayDividendRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DividendInfo", type: {:nullable, :message}}
  ],

"ItemDestroyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "ItemGuidSelector"}}}
  ],

"ErosionInstallCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InstallerGuid", type: {:uint, 8}}
  ],

"CovenantGoodsRegistrationRegisteredGoodsInfoUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "RegisteredGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzRegisteredGoodsInfo"}}}
  ],

"QueryChatRoomRecordsInitializationInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomRecordsInitializationInfos", type: {:list, {:struct, "ChatRoomRecordsInitializationInfo"}}}
  ],

"NxLogCharFieldMoveInfo" => [
    %{name: "FieldIdBef", type: :cuid},
    %{name: "FieldUidBef", type: {:uint, 8}},
    %{name: "DistrictBef", type: :cuid},
    %{name: "TeleportReason", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x31));uVar9=local_198&0xff;}uVar1=local_190;pcVar3=local_188;if((uVar9&1)==0){uVar1=uVar9>>1;pcVar3=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ServerDrivenPlayOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "ServerDrivenPlayOptionInfo"}}}
  ],

"CheatTutorialResetAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"InstanceEventAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "AffectSourceInfo"}}
  ],

"CheatClearSkillSlotQuickSlotAutoUseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AppliedPlayerSkillSlots", type: {:list, {:struct, "PlayerSkillSlotUpdateInfo"}}}
  ],

"GearBatchCraftRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "CraftTargetGrades", type: {:list, {:enum, "ItemGradeType"}}},
    %{name: "CraftTargetGearCategories", type: {:list, {:enum, "GearCategoryKindType"}}}
  ],

"VersionCheckResult" => [
    %{name: "Code", type: :unknown},
    %{name: "AdditionalData", type: :unknown}
  ],

"CovenantBattalionQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatSummonNpcResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FollowerDeathInfo" => [
    %{name: "DeathDateTime", type: :datetime},
    %{name: "DeathReason", type: {:enum, "FollowerDeathReasonType"}},
    %{name: "KillingInfo", type: {:nullable, :message}},
    %{name: "LootedItemIndexWithCount", type: {:nullable, :message}}
  ],

"PartyConfirmRecommendationForInviteeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RecommenderRealmPlayerId", type: {:struct, "RealmPlayerId"}},
    %{name: "PartyMemberInfo", type: {:nullable, {:struct, "PartyMemberInfo"}}}
  ],

"PlayerSkillSlotUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "PlayerSkillSlotIndex", type: {:enum, "PlayerSkillSlotIndexType"}},
    %{name: "PlayerSkillSlotInfo", type: {:nullable, {:struct, "PlayerSkillSlotInfo"}}}
  ],

"StrongholdBattleDeclarePrerequisitesQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TargetStrongholdCuid", type: :cuid}
  ],

"MailsDeleteInTabRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "UpperBoundDateTime", type: :datetime}
  ],

"PointCurrencyContainerUpdateInfo" => [
    %{name: "CuidToAmountDelta", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CuidToAmount", type: {:map, :cuid, {:uint, 8}}}
  ],

"SeasonPassLevelBuyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "SeasonPassCuid", type: :cuid},
    %{name: "Count", type: {:int, 4}}
  ],

"CovenantWarehouseSummaryInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "ItemInfos", type: {:list, {:struct, "CuidAndCountInfo"}}}
  ],

"CheatChangeCashShopCheckBuyLimitOptionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "IsIgnoreToCheckBuyLimit", type: :bool}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveResetFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdCampaignBattleInfo" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleInfo"}},
    %{name: "CampaignProgressInfo", type: {:nullable, :message}},
    %{name: "TargetMissionCuids", type: {:list, :cuid}},
    %{name: "CampaignConditionProgressInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCampaignConditionProgressInfo"}}}
  ],

"ErInterServerMigrationAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErGameServerAuthenticateInfo"}}
  ],

"AnniversaryPointRankingRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryBeginDateTime", type: :datetime},
    %{name: "DateTime", type: {:nullable, :datetime}},
    %{name: "RankingInfos", type: {:list, {:struct, "RankingInfo"}}},
    %{name: "CovenantRankingInfo", type: {:nullable, :message}},
    %{name: "CovenantMemberAnniversaryPointInfos", type: {:list, {:struct, "CovenantMemberAnniversaryPointInfo"}}}
  ],

"CheatRegisterCheatEnabledPlayerNameRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "PlayerName", type: :string}
  ],

"CheatPvpScoreRankingSourceInfoChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PvpScore", type: {:uint, 8}},
    %{name: "LastRole", type: {:enum, "PvpRecordCharacterRoleType"}},
    %{name: "DeadCount", type: {:int, 4}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "AssistCount", type: {:int, 4}}
  ],

"StrongholdBattleUseSiegeWeaponSlotFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SlotIndex", type: {:int, 2}}
  ],

"CovenantUpdateForbiddenAetherBoxCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatChangeCurrencyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"GuiseEquipRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GuiseCuid", type: :cuid}
  ],

"MarketFavoriteItemRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "MarketFavoriteItemInfo", type: {:nullable, {:struct, "MarketFavoriteItemInfo"}}},
    %{name: "IsOnSaleMarketFavoriteItemInfo", type: :bool}
  ],

"AnniversaryQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"MailStrongholdBattleLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"GearSlotPresetModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}}
  ],

"NpcActionNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "NpcActionCuid", type: :cuid},
    %{name: "NpcSpeechBalloonInfo", type: {:nullable, :message}}
  ],

"PlayerCustomizeInfo" => [
    %{name: "BodyStyleSetCuid", type: :cuid},
    %{name: "HairStyleSetCuid", type: :cuid},
    %{name: "SkinRoughness", type: {:struct, "signed_char"}},
    %{name: "SkinColor", type: {:struct, "unsigned_char"}},
    %{name: "Hair1Color", type: {:struct, "unsigned_char"}},
    %{name: "Hair2Color", type: {:struct, "unsigned_char"}},
    %{name: "IrisRColor", type: {:struct, "unsigned_char"}},
    %{name: "IrisLColor", type: {:struct, "unsigned_char"}},
    %{name: "ScleraColor", type: {:struct, "unsigned_char"}},
    %{name: "IrisScale", type: {:struct, "signed_char"}},
    %{name: "IrisPositionY", type: {:struct, "signed_char"}},
    %{name: "EyebrowFrame", type: {:struct, "unsigned_char"}},
    %{name: "EyebrowColor", type: {:struct, "unsigned_char"}},
    %{name: "EyebrowIntensity", type: {:struct, "signed_char"}},
    %{name: "EyelineFrame", type: {:struct, "unsigned_char"}},
    %{name: "EyelineIntensity", type: {:struct, "signed_char"}},
    %{name: "EyeshadowColor", type: {:struct, "unsigned_char"}},
    %{name: "EyelineColor", type: {:struct, "unsigned_char"}},
    %{name: "IrisTexture", type: {:struct, "unsigned_char"}},
    %{name: "EyeshadowIntensity", type: {:struct, "signed_char"}},
    %{name: "BlusherFrame", type: {:struct, "unsigned_char"}},
    %{name: "BlusherColor", type: {:struct, "unsigned_char"}},
    %{name: "BlusherIntensity", type: {:struct, "signed_char"}},
    %{name: "LipFrame", type: {:struct, "unsigned_char"}},
    %{name: "LipColor", type: {:struct, "unsigned_char"}},
    %{name: "LipIntensity", type: {:struct, "signed_char"}},
    %{name: "FaceTexture", type: {:struct, "unsigned_char"}},
    %{name: "DecalTexture", type: {:struct, "unsigned_char"}},
    %{name: "DecalIntensity", type: {:struct, "signed_char"}},
    %{name: "DecalScale", type: {:struct, "signed_char"}},
    %{name: "DecalRotation", type: {:struct, "signed_char"}},
    %{name: "DecalPositionX", type: {:struct, "signed_char"}},
    %{name: "DecalPositionY", type: {:struct, "signed_char"}},
    %{name: "Forehead_Y", type: {:struct, "signed_char"}},
    %{name: "Forehead_Z", type: {:struct, "signed_char"}},
    %{name: "Eyebrow_End", type: {:struct, "signed_char"}},
    %{name: "Eyebrow_Y", type: {:struct, "signed_char"}},
    %{name: "Eyebrow_Z", type: {:struct, "signed_char"}},
    %{name: "Eye_End", type: {:struct, "signed_char"}},
    %{name: "Eye_Mid1", type: {:struct, "signed_char"}},
    %{name: "Eye_Mid2", type: {:struct, "signed_char"}},
    %{name: "Eye_X", type: {:struct, "signed_char"}},
    %{name: "Eye_Y", type: {:struct, "signed_char"}},
    %{name: "Eye_Z", type: {:struct, "signed_char"}},
    %{name: "Eye_S1", type: {:struct, "signed_char"}},
    %{name: "Eye_S2", type: {:struct, "signed_char"}},
    %{name: "Cheek_X", type: {:struct, "signed_char"}},
    %{name: "Cheek_Y", type: {:struct, "signed_char"}},
    %{name: "Cheek_Z", type: {:struct, "signed_char"}},
    %{name: "Cheek_s1", type: {:struct, "signed_char"}},
    %{name: "Nose_End", type: {:struct, "signed_char"}},
    %{name: "Nose_Mid", type: {:struct, "signed_char"}},
    %{name: "Nose_X", type: {:struct, "signed_char"}},
    %{name: "Nose_Y", type: {:struct, "signed_char"}},
    %{name: "Nose_Z", type: {:struct, "signed_char"}},
    %{name: "Nose_s1", type: {:struct, "signed_char"}},
    %{name: "Nose_s2", type: {:struct, "signed_char"}},
    %{name: "Mouth_End", type: {:struct, "signed_char"}},
    %{name: "Mouth_Mid", type: {:struct, "signed_char"}},
    %{name: "Mouth_X", type: {:struct, "signed_char"}},
    %{name: "Mouth_Y", type: {:struct, "signed_char"}},
    %{name: "Mouth_Z", type: {:struct, "signed_char"}},
    %{name: "Mouth_S1", type: {:struct, "signed_char"}},
    %{name: "Mouth_S2", type: {:struct, "signed_char"}},
    %{name: "Chin_X", type: {:struct, "signed_char"}},
    %{name: "Chin_Y", type: {:struct, "signed_char"}},
    %{name: "Chin_Z", type: {:struct, "signed_char"}},
    %{name: "Chin_Mid", type: {:struct, "signed_char"}},
    %{name: "Jaw_X", type: {:struct, "signed_char"}},
    %{name: "Jaw_Y", type: {:struct, "signed_char"}},
    %{name: "BeardFrame", type: {:struct, "unsigned_char"}},
    %{name: "BeardColor", type: {:struct, "unsigned_char"}},
    %{name: "BeardIntensity", type: {:struct, "signed_char"}},
    %{name: "Beard_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "HairShadowsFrame", type: {:struct, "unsigned_char"}},
    %{name: "Head_XYZ", type: {:struct, "signed_char"}},
    %{name: "Head_Z", type: {:struct, "signed_char"}},
    %{name: "Neck_X", type: {:struct, "signed_char"}},
    %{name: "Neck_YZ", type: {:struct, "signed_char"}},
    %{name: "Breast_XYZ", type: {:struct, "signed_char"}},
    %{name: "Chest_XYZ", type: {:struct, "signed_char"}},
    %{name: "Spine_X", type: {:struct, "signed_char"}},
    %{name: "Spine_YZ", type: {:struct, "signed_char"}},
    %{name: "Pelvis_YZ", type: {:struct, "signed_char"}},
    %{name: "Clavicle_XYZ", type: {:struct, "signed_char"}},
    %{name: "Arm_X", type: {:struct, "signed_char"}},
    %{name: "Arm_YZ", type: {:struct, "signed_char"}},
    %{name: "Hand_XYZ", type: {:struct, "signed_char"}},
    %{name: "Leg_X", type: {:struct, "signed_char"}},
    %{name: "Leg_YZ", type: {:struct, "signed_char"}},
    %{name: "Foot_XYZ", type: {:struct, "signed_char"}},
    %{name: "Hair1_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Hair2_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Eyebrow_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Temple", type: {:struct, "signed_char"}},
    %{name: "Head_Y", type: {:struct, "signed_char"}},
    %{name: "Cheek_D_X", type: {:struct, "signed_char"}},
    %{name: "Cheek_D_Y", type: {:struct, "signed_char"}},
    %{name: "Cheek_D_Z", type: {:struct, "signed_char"}},
    %{name: "Jaw_Z", type: {:struct, "signed_char"}},
    %{name: "EyebrowUpDown", type: {:struct, "signed_char"}},
    %{name: "EyebrowBetween", type: {:struct, "signed_char"}},
    %{name: "EyeBrowScale_y", type: {:struct, "signed_char"}},
    %{name: "IrisPositionX", type: {:struct, "signed_char"}},
    %{name: "DoubleEyelid_Frame", type: {:struct, "unsigned_char"}},
    %{name: "DoubleEyelid_Intensity", type: {:struct, "signed_char"}},
    %{name: "DoubleEyelidUpDown", type: {:struct, "signed_char"}},
    %{name: "Eye_In_S", type: {:struct, "signed_char"}},
    %{name: "Eye_In_Y", type: {:struct, "signed_char"}},
    %{name: "Eye_In_Z", type: {:struct, "signed_char"}},
    %{name: "Eyelashes_S", type: {:struct, "signed_char"}},
    %{name: "Eyelashes_Intensity", type: {:struct, "signed_char"}},
    %{name: "Eyelashes_U_Y", type: {:struct, "signed_char"}},
    %{name: "Eyelashes_D_Y", type: {:struct, "signed_char"}},
    %{name: "Upperlip_X", type: {:struct, "signed_char"}},
    %{name: "Upperlip_Y", type: {:struct, "signed_char"}},
    %{name: "Lowerlip_X", type: {:struct, "signed_char"}},
    %{name: "Lowerlip_Y", type: {:struct, "signed_char"}},
    %{name: "Mouth_End_Y", type: {:struct, "signed_char"}},
    %{name: "IrisL_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "IrisR_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Lens_Relf", type: {:struct, "signed_char"}},
    %{name: "Lens_Specular", type: {:struct, "signed_char"}},
    %{name: "Blusher_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Lip_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Lip_Roughness", type: {:struct, "signed_char"}},
    %{name: "Eyeline_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Eyeshadow_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Eyelashes_Color", type: {:struct, "unsigned_char"}},
    %{name: "Eyelashes_Color_Brightness", type: {:struct, "signed_char"}},
    %{name: "Decal_Color", type: {:struct, "unsigned_char"}},
    %{name: "Decal_Color_Brightness", type: {:struct, "signed_char"}}
  ],

"WorldMapMarkerInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :string},
    %{name: "RegionCuid", type: :cuid},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "Location_cm", type: :vector},
    %{name: "InstallDateTimeUtc", type: :datetime}
  ],

"PlayedCutSceneAddRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CutSceneCuid", type: :cuid}
  ],

"AcquireSourceAdditionalParameter" => [
    %{name: nil, type: :empty_struct}
  ],

"RealmIntegrationPlayerInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "CovenantName", type: :string}
  ],

"SkillAutoUseInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RootSkillCuids", type: {:list, :cuid}}
  ],

"BasicOrGrowthGuideAchievementInfo" => [
    %{name: "__base__", type: {:struct, "AchievementInfo"}}
  ],

"CraftQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CraftCounts", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCraftCountInfo"}}}
  ],

"CheatDestroyPointsCheckResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DestroyPoints", type: {:int, 4}}
  ],

"ExperiencePointsPlayerRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "PlayerRankingViewInfo"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"ShopRegisteredGoodsUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "Reason", type: {:nullable, {:nullable, :enum}}},
    %{name: "RegisteredGoodsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzRegisteredGoodsInfo"}}}
  ],

"MailBuildingPurificationPauseLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailBuildingWorkLayoutInfo"}},
    %{name: "BuildingWorkPauseReasonKind", type: {:enum, "BuildingWorkPauseReasonKindType"}}
  ],

"SeasonPassInfo" => [
    %{name: "SeasonPassCuid", type: :cuid},
    %{name: "SeasonPassCuidString", type: :string},
    %{name: "ExperiencePoints", type: {:uint, 8}},
    %{name: "IsPaidRewardUnlocked", type: :bool},
    %{name: "IsPlusRewardUnlocked", type: :bool},
    %{name: "RewardedLevels", type: {:map, {:enum, "SeasonPassRewardKindType"}, {:struct, "TSet<int"}}}
  ],

"BattalionLeaveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "BattalionLeaveReason", type: {:enum, "BattalionLeaveReasonType"}}
  ],

"CheatResetCashShopMerchandiseTotalBuyLimitCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AnniversaryStrongholdOccupationRecordInfo" => [
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryBeginDateTime", type: :datetime},
    %{name: "AnniversaryEndDateTime", type: :datetime},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AnniversaryStrongholdOccupationCovenantInfos", type: {:list, {:struct, "AnniversaryStrongholdOccupationCovenantInfo"}}}
  ],

"QuestAcceptNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "StartByItem", type: :bool},
    %{name: "FavorInfo", type: {:nullable, :message}},
    %{name: "FavorMissionInfo", type: {:nullable, :message}}
  ],

"CheatCancelStrongholdProtectionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdSummonWaveDefenseSubscriptionSummaryInfo" => [
    %{name: "StrongholdSummonWaveDefenseCuid", type: :cuid},
    %{name: "StartDateTime", type: :datetime},
    %{name: "WaveIndex", type: {:nullable, {:int, 4}}}
  ],

"ErTozInitializeMessage" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BattalionConfirmInvitationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "IsApproved", type: :bool}
  ],

"CheatTestGearEnchantOptionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CostItemCuid", type: :cuid},
    %{name: "GearCuid", type: :cuid},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "GearEnchantOptionGrades", type: {:map, {:int, 2}, {:enum, "GearEnchantGradeType"}}},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "GearEnchantSlotToStatKindToAmountToCount", type: {:map, {:int, 2}, {:struct, "TMap<ETzAdjustableStatKindType"}}}
  ],

"PlayerItemUseFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "ParameterInfo", type: {:nullable, :message}},
    %{name: "CooldownExpireDateTimeRangeInfo", type: {:nullable, {:struct, "DateTimeRangeInfo"}}}
  ],

"TargetScanShareResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ConnectionInfo" => [
    %{name: "ServerIp", type: :string},
    %{name: "ServerPort", type: {:int, 4}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"CovenantSummaryInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: :cuid},
    %{name: "Ranking", type: {:nullable, {:int, 4}}},
    %{name: "Name", type: :string},
    %{name: "Level", type: {:int, 4}},
    %{name: "CovenantJoinKind", type: {:enum, "CovenantJoinKindType"}},
    %{name: "LeaderName", type: :string},
    %{name: "MemberCount", type: {:int, 2}},
    %{name: "MaxMemberCount", type: {:int, 2}},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CovenantCampCuid", type: :cuid},
    %{name: "OccupiedStrongholdCuids", type: {:list, :cuid}},
    %{name: "MainHavenCuid", type: :cuid},
    %{name: "MaximumHeadquartersLevel", type: {:int, 4}},
    %{name: "Introduction", type: :string},
    %{name: "IntroductionHarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "MainLivingTotemInfo", type: {:nullable, :message}}
  ],

"SendCrossRealmChatMessageResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "CountForFree", type: {:int, 4}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CrossRealmCovenantDiplomacyWithdrawHostilityNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatChangeFollowerLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionChangeOptionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SpellstoneUnequipResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RootSkillCuid", type: :cuid},
    %{name: "SpellstoneGuid", type: {:uint, 8}}
  ],

"CheatTeleportToQuestMissionLocationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "QuestMissionSequence", type: {:int, 4}}
  ],

"MailMarkAsReadNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "MailBoxKindType"}}
  ],

"StrongholdBuildingCraftResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantCurrencyDonationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CurrencyDonationCuid", type: :cuid}
  ],

"CheatCovenantGiftPaidItemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGiftBoxCuid", type: :cuid}
  ],

"CovenantBattalionExpeditionJoinNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, {:struct, "ExpeditionSummaryInfo"}}},
    %{name: "ExpeditionPhase", type: {:enum, "BattalionExpeditionPhaseType"}},
    %{name: "AnotherBattalionGuids", type: {:list, {:uint, 8}}},
    %{name: "ExpeditionJoinDateTime", type: :datetime},
    %{name: "ExpeditionStartLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "BattalionExpeditionInfo", type: {:nullable, :message}}
  ],

"CovenantCampaignEnterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"FavorSummaryInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DailyAcceptableFavorRemainingCount", type: {:int, 4}},
    %{name: "FavorBossInfosByDistrictCuid", type: {:map, :cuid, {:struct, "TSharedPtr<FTzDistrictFavorBossInfo"}}}
  ],

"CheatAddRegionContentRechargedPlayTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AnniversaryAchievementPrivateChannelKeepaliveFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BuildingAccessPermissionSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "BuildingAccessPermissionKind", type: {:enum, "BuildingAccessPermissionKindType"}}
  ],

"CheatReleaseOccupiableNpcInactivityResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"InGameNotificationDeleteCategoryFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "InGameNotificationCategory", type: {:enum, "InGameNotificationCategoryType"}}
  ],

"RoadJunctionDetailedInfo" => [
    %{name: "DistrictCuid", type: :cuid},
    %{name: "CoreInfo", type: {:struct, "RoadJunctionInfo"}},
    %{name: "RoadLinks", type: {:list, {:struct, "RoadLinkInfo"}}}
  ],

"CheatAddStrongholdTaxAmountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "TaxAmount_pe2", type: {:uint, 8}}
  ],

"CovenantSupportInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantJoinNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "CovenantInfo"}}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :string},
    %{name: "CovenantReturnHavenCuid", type: :cuid},
    %{name: "CovenantBattalionInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzCovenantBattalionNotifyInfo"}}}
  ],

"StrongholdBattleDeclareAttackResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MapFogOpenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FogCuid", type: :cuid}
  ],

"NpcOccupationInfo" => [
    %{name: "NpcCovenantOccupationInfo", type: {:nullable, :message}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :datetime}},
    %{name: "NpcOccupationScoreCovenantInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzNpcOccupationScoreCovenantInfo"}}}
  ],

"CheatAbandonStrongholdResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CraftResultInfo" => [
    %{name: "CraftRewardCuid", type: :cuid},
    %{name: "CraftResultKind", type: {:enum, "CraftResultKindType"}},
    %{name: "ItemInfo", type: {:nullable, :message}},
    %{name: "CraftGreatSuccessBonusKind", type: {:enum, "CraftGreatSuccessBonusKindType"}},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "Amount", type: {:int, 4}}
  ],

"TeleportInfo" => [
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "TeleportReason", type: {:enum, "EntitySpawnRemoveReasonType"}}
  ],

"PlayerMarketTransactionBuyProcessNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CheatPvpScoreRankingSourceInfoChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AnniversaryAchievementPointRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :datetime},
    %{name: "GoalPoint", type: {:int, 4}}
  ],

"AddToChatBlockListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmAccountWarehouseAutoStoreSettingUpdateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdSummaryCovenantInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "OccupyingCovenantVuid", type: {:struct, "Vuid"}},
    %{name: "OccupyingCovenantName", type: :string},
    %{name: "OccupyingCovenantLevel", type: {:int, 4}},
    %{name: "OccupyingCovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"ChatMessageInfo" => [
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "RecordsIndex", type: {:uint, 8}},
    %{name: "ChatEntityGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "SenderPlayerExperiencePointsRanking", type: {:nullable, {:int, 4}}},
    %{name: "InfoToShare", type: :string},
    %{name: "Text", type: :string},
    %{name: "HarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "RegisterDateTime", type: :datetime}
  ],

"ErosionActiveErosionNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "ErosionInfo"}}}
  ],

"SkillMoveAffectInfo" => [
    %{name: "MoveDuration_msec", type: {:int, 4}},
    %{name: "Destination_cm", type: {:nullable, :vector}},
    %{name: "InitialDirectionYaw_rad", type: {:nullable, :float}},
    %{name: "InitialFacingEntityGuid", type: {:nullable, {:uint, 8}}},
    %{name: "FinalDirectionYaw_rad", type: {:nullable, :float}},
    %{name: "FinalFacingEntityGuid", type: {:nullable, {:uint, 8}}}
  ],

"BuffProtectNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "BuffGuid", type: {:uint, 8}},
    %{name: "BuffHealthPoints", type: {:uint, 8}}
  ],

"CheatAcquireAllFollowersRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Level", type: {:int, 4}},
    %{name: "CountPerEach", type: {:uint, 8}}
  ],

"AcceptDiplomacyChatRoomInvitationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatSummonNpcRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcSummonCuid", type: :cuid}
  ],

"ExpeditionRemoveNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ExpeditionGuid", type: {:uint, 8}}
  ],

"CovenantDiplomacyInfo" => [
    %{name: "RequestCovenantGuid", type: {:uint, 8}},
    %{name: "ResponseCovenantGuid", type: {:uint, 8}},
    %{name: "CovenantDiplomacyState", type: {:enum, "CovenantDiplomacyStateType"}},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "CovenantDiplomacyAdditionalInfo", type: {:nullable, :message}}
  ],

"PlayerRealmIntegrationBattleSeasonInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonCuid", type: :cuid},
    %{name: "PlayerRealmIntegrationBattleSeasonInfo", type: {:nullable, {:struct, "PlayerRealmIntegrationBattleSeasonInfo"}}}
  ],

"CovenantBanishMemberAtFrontNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"InGameNotificationDeleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"CheatApplySkillSlotQuickSlotAutoUsePresetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "LastRegisteredAutoUseItemCuid", type: :cuid},
    %{name: "AppliedPlayerSkillSlots", type: {:list, {:struct, "PlayerSkillSlotUpdateInfo"}}}
  ],

"DestroyerDeathNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "KillerGuid", type: {:uint, 8}},
    %{name: "KillerName", type: :string},
    %{name: "VictimGuid", type: {:uint, 8}},
    %{name: "VictimName", type: :string}
  ],

"RealmAccountRealmTransferLimitedItemCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemCountByCuid", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemCountByItemGradeAndItemCategory", type: {:map, {:enum, "ItemCategoryType"}, {:struct, "TMap<ETzItemGradeType"}}},
    %{name: "GearCountByItemGradeAndGearKind", type: {:map, {:enum, "GearKindType"}, {:struct, "TMap<ETzItemGradeType"}}},
    %{name: "AffectItemCountByItemGradeAndAffectItemKind", type: {:map, {:enum, "AffectItemKindType"}, {:struct, "TMap<ETzItemGradeType"}}}
  ],

"TutorialStepForwardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuid", type: :cuid},
    %{name: "PreviousStepNumber", type: {:int, 4}}
  ],

"MailArrivalNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}}
  ],

"CheatRealmIntegrationAddRealmAccountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PreviousRealmCuid", type: :cuid},
    %{name: "PlayerCount", type: {:int, 4}}
  ],

"CheatStrongholdBattleCancelAttackResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionMemberErosionInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "BattalionMemberInfoSynchronizeNotify"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "ErosionInfo"}}}
  ],

"CovenantInvitationInfoUpdatedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InvitedCovenantGuids", type: {:list, {:uint, 8}}}
  ],

"CovenantRealmTransferInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantRealmTransferInfo", type: {:nullable, {:struct, "CovenantRealmTransferInfo"}}}
  ],

"StrongholdBattleUseSiegeWeaponSlotRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "SiegeWeaponItemCuid", type: :cuid}
  ],

"MailInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "MailBoxKindType"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "MailKind", type: {:enum, "MailKindType"}},
    %{name: "From", type: :string},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "ExpireDateTime", type: :datetime},
    %{name: "IsRead", type: :bool},
    %{name: "IsAttachmentsReceived", type: :bool},
    %{name: "Title", type: :string},
    %{name: "Body", type: :string},
    %{name: "Attachments", type: {:nullable, {:struct, "MailAttachmentsInfo"}}},
    %{name: "HarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "LayoutInfo", type: {:nullable, :message}}
  ],

"ExpeditionNpcSummonWaveInfo" => [
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "NpcSummonWaveStartTime", type: :datetime},
    %{name: "NpcSummonWavesCuid", type: :cuid},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}},
    %{name: "NpcDeathCounts", type: {:map, :cuid, {:int, 4}}}
  ],

"DataHeader" => [
    %{name: "TableNameHash", type: {:int, 4}},
    %{name: "SchemaId", type: {:int, 4}}
  ],

"StrongholdBuildingQueryInfosRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"QuestRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}}
  ],

"SpawnLayerActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"InGameNotificationDeleteFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"BattalionChangeJoinableNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsJoinable", type: :bool}
  ],

"CheatTeleportToNpcRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcCuid", type: :cuid},
    %{name: "IsRegularOnly", type: :bool},
    %{name: "Radius_cm", type: :float}
  ],

"CheatTeleportByOffsetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Offset_cm", type: :vector}
  ],

"BattalionJoinApplicationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"BuildingWorkOrderInfo" => [
    %{name: "OrderedBuildingSpawnerCuid", type: :cuid},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}},
    %{name: "BuildingLevelOnStart", type: {:int, 4}},
    %{name: "BuildingLevelToTarget", type: {:int, 4}},
    %{name: "IsRecommended", type: :bool},
    %{name: "BuildingRepairPercentage", type: {:int, 4}},
    %{name: "BuildingCraftCuidAndCountInfo", type: {:nullable, {:struct, "CuidAndCountInfo"}}},
    %{name: "ResearchCuid", type: :cuid},
    %{name: "ResearchLevel", type: {:int, 4}}
  ],

"CovenantRegisteredGoodsModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCount", type: {:uint, 8}},
    %{name: "SellCurrencyCuid", type: :cuid},
    %{name: "SellPrice", type: {:int, 4}},
    %{name: "GoodsBuyLimitCount", type: {:nullable, {:uint, 8}}}
  ],

"CostumeInfo" => [
    %{name: "WeaponCuid", type: :cuid},
    %{name: "WeaponEnhancementGrade", type: {:int, 2}},
    %{name: "GuiseCuid", type: :cuid},
    %{name: "HasPreviouslyEquippedGuise", type: :bool},
    %{name: "IsWearUniform", type: :bool}
  ],

"InventoryUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"BattalionTargetLocationSetFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ServerDrivenPlayStateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StateInfo", type: {:nullable, :message}}
  ],

"CovenantTradeGoodsQueryInfo" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "SortKind", type: {:enum, "CovenantTradeGoodsSortKindType"}},
    %{name: "SortDirection", type: {:enum, "SortDirectionType"}},
    %{name: "SkipTopRowCount", type: {:int, 4}}
  ],

"AlertPlayerRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmPlayerName", type: {:struct, "RealmPlayerName"}}
  ],

"RPCExceptionMessage" => [
    %{name: "__base__", type: {:struct, "RPCMessage"}},
    %{name: "ErrorString", type: :unknown}
  ],

"CovenantCreateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Name", type: :string},
    %{name: "CovenantJoinKind", type: {:enum, "CovenantJoinKindType"}},
    %{name: "CovenantEmblemSelectionInfo", type: {:nullable, {:struct, "CovenantEmblemSelectionInfo"}}},
    %{name: "CovenantCampCuid", type: :cuid}
  ],

"CheatOpenAllFogInDistrictResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DistrictCuid", type: :cuid}
  ],

"BattalionJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "SquadMemberOrder", type: {:int, 4}},
    %{name: "MemberInfo", type: {:nullable, {:struct, "BattalionMemberInfo"}}}
  ],

"NpcOccupationViewInfo" => [
    %{name: "NpcOccupationCovenantViewInfo", type: {:nullable, {:struct, "NpcOccupationCovenantViewInfo"}}},
    %{name: "NpcOccupationInactivityExpirationDateTime", type: {:nullable, :datetime}},
    %{name: "NpcOccupationScoreCovenantViewInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzNpcOccupationScoreCovenantViewInfo"}}}
  ],

"CovenantHostilityAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "CovenantDiplomacyAdditionalInfo"}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "DeathCount", type: {:int, 4}}
  ],

"FavoriteStatKindChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StatKind", type: {:enum, "AdjustableStatKindType"}},
    %{name: "IsRegistered", type: :bool}
  ],

"CheatGetCheatEnabledPlayerNamesResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CheatEnabledPlayerNames", type: :unknown}
  ],

"FieldUid" => [
    %{name: "RegionCuid", type: :cuid},
    %{name: "InstanceFieldCuid", type: :cuid},
    %{name: "InstanceFieldGuid", type: {:uint, 8}}
  ],

"MarketGoodsQueryInfo" => [
    %{name: "__base__", type: {:struct, "MarketGoodsSummaryQueryInfo"}},
    %{name: "GearAdditionalInfo", type: {:nullable, {:struct, "GearAdditionalInfo"}}},
    %{name: "MarketOrderByKind", type: {:enum, "MarketOrderByKindType"}}
  ],

"MarketPriceQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "MarketPriceInfo", type: {:nullable, {:struct, "MarketPriceInfo"}}}
  ],

"CheatChangeRankingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid},
    %{name: "Ranking", type: {:int, 4}},
    %{name: "Name", type: :string}
  ],

"ServerDrivenPlayResupplyingStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}},
    %{name: "IsAutoResupplying", type: :bool},
    %{name: "IsResupplyingWithTeleport", type: :bool}
  ],

"StanceSwitchNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Stance", type: {:enum, "StanceType"}}
  ],

"CrossRealmSeasonTimeCreviceEntryUpdateDataNotify" => [
    %{name: "__base__", type: {:struct, "CrossRealmSeasonEntryUpdateDataNotify"}},
    %{name: "IsFull", type: :bool}
  ],

"CovenantTradeSalesManageRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SalesManagementKind", type: {:enum, "CovenantTradeSalesManagementKindType"}},
    %{name: "GoodsGuidWithItemCuidInfos", type: :unknown}
  ],

"CheatSwitchStanceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SwitchRequestedStance", type: {:enum, "StanceType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}}
  ],

"CovenantSettleAccountInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RealmIntegrationQueryRealmAccountInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmIntegrationRealmAccountInfos", type: {:list, {:struct, "RealmIntegrationRealmAccountInfo"}}}
  ],

"SavedInGameNotificationInfo" => [
    %{name: "__base__", type: {:struct, "InGameNotificationInfo"}}
  ],

"CheatAccomplishSeasonPassAchievementRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonPassCuid", type: :cuid},
    %{name: "SeasonPassAchievementGroupCuid", type: :cuid},
    %{name: "AchievementCuid", type: :cuid}
  ],

"ChatQueryEntityInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatEntityInfo", type: {:nullable, {:struct, "ChatEntityInfo"}}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "ChatEntityCovenantInfo"}}},
    %{name: "LoggedIn", type: :bool}
  ],

"CovenantRealmTransferExecuteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PackageItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "SelectedResultCuid", type: :cuid}
  ],

"CovenantOutLinkInfo" => [
    %{name: "CovenantOutLinkKind", type: {:enum, "CovenantOutLinkKindType"}},
    %{name: "Uri", type: :string},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"PlayerSkillSlotSetInfo" => [
    %{name: "PlayerSkillSlotInfos", type: {:map, {:enum, "PlayerSkillSlotIndexType"}, {:struct, "TSharedPtr<FTzPlayerSkillSlotInfo"}}}
  ],

"WorldMapPvpBattleLocationUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "Location_cm", type: :vector}
  ],

"CovenantDeleteCovenantMemberRoleNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberRoleName", type: :string}
  ],

"InteractionCompleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "DoodadGuid", type: {:uint, 8}}
  ],

"GuiseEquipResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GuiseCuid", type: :cuid},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}}
  ],

"ServerDrivenPlayResurrectingStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}}
  ],

"ResuscitatePleaNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MountCallingInfo" => [
    %{name: "__base__", type: {:struct, "MountStateInfo"}},
    %{name: "IsImmediateBoarding", type: :bool},
    %{name: "PlayerRunSpeedBeforeBoarded_cmpmsec", type: :float},
    %{name: "IsMovingBoarding", type: :bool}
  ],

"CheatSetEnvironmentVariableResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AnniversaryAchievementRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :datetime},
    %{name: "AchievementCuid", type: :cuid}
  ],

"FieldEnterCompleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NavMeshCrcChecksum", type: {:struct, "unsigned_int"}},
    %{name: "CharacterMoveInfo", type: {:nullable, :message}}
  ],

"CovenantDiplomacyRejectAllianceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CharacterInfo" => [
    %{name: "__base__", type: {:struct, "EntityInfo"}},
    %{name: "CharacterState", type: {:enum, "CharacterStateType"}},
    %{name: "CharacterPublicStatsInfo", type: {:nullable, :message}},
    %{name: "BuffInfos", type: :unknown},
    %{name: "CharacterMoveInfo", type: {:nullable, :message}},
    %{name: "FocusTargetGuid", type: {:uint, 8}},
    %{name: "AttackTargetGuid", type: {:uint, 8}},
    %{name: "FinishableExpireDateTime", type: {:nullable, :datetime}},
    %{name: "ParticipatingContentsGuids", type: :unknown},
    %{name: "IsHarmfulSkillTargetableInAnyFactionRelation", type: :bool},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}}
  ],

"BattalionJoinResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CashShopNameTextInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "Text", type: :string}
  ],

"PartyRecommendInviteeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}}
  ],

"FollowerLeaveToHeadquartersNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerReturnReason", type: {:enum, "FollowerReturnReasonType"}},
    %{name: "LeaveToHeadquartersDateTime", type: :datetime},
    %{name: "FollowerWorkInfo", type: {:nullable, {:struct, "FollowerWorkInfo"}}},
    %{name: "FollowerMovePathInfo", type: {:nullable, {:struct, "FollowerMovePathInfo"}}}
  ],

"DeathPenaltyRecoverResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RecoveredDeathPenaltyGuids", type: {:list, {:uint, 8}}},
    %{name: "DeathPenaltyFreeRecoveryInfo", type: {:nullable, :message}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"StrategicObjectiveTargetInfo" => [
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "Cuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "MaxHealthPoints", type: {:uint, 8}},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"QuestAutomaticallyProceedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}}
  ],

"PartyBanishMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"FollowerCollectionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AchievementCuid", type: :cuid}
  ],

"FollowerDispatchReservationInfo" => [
    %{name: "WorkKind", type: {:enum, "FollowerWorkKindType"}},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "WorkplaceSpawnedEntityCuid", type: :cuid},
    %{name: "BuildingWorkObjectiveInfo", type: {:nullable, :message}},
    %{name: "IsBuildingWorkRecommended", type: :bool}
  ],

"StrongholdBattleCovenantBattalionConfirmConveneRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatNoticeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Message", type: :string}
  ],

"MarketSellSettleResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "IsSuccessByGoodsGuids", type: {:map, {:uint, 8}, :bool}},
    %{name: "FailedGoodsGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"ChatOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ChatOptionInfo", type: {:nullable, {:struct, "ChatOptionInfo"}}}
  ],

"StrongholdBattleAttackGroupInfo" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleGroupInfo"}},
    %{name: "LivingTotemBasicHealthPoints", type: {:uint, 8}},
    %{name: "LivingTotemExtraHealthPoints", type: {:uint, 8}},
    %{name: "LivingTotemHealthPoints", type: {:uint, 8}},
    %{name: "LivingTotemExtraHealthPointsBarUnit", type: {:uint, 8}},
    %{name: "SiegeWeaponCounts", type: {:map, :cuid, {:uint, 8}}},
    %{name: "StrongholdBattleAttackSiegeWeaponSlotInfos", type: {:map, {:int, 2}, {:struct, "TSharedPtr<FTzStrongholdBattleAttackSiegeWeaponSlotInfo"}}}
  ],

"AetherOptionLevelUpRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AetherOptionCuid", type: :cuid},
    %{name: "NewLevel", type: {:int, 4}}
  ],

"CheatCovenantPayDividendResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatAddHavenBuildingWorkProgressGaugeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: :cuid}
  ],

"DiplomacyChatRoomInviteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "CovenantNameAndRealmName", type: :string}
  ],

"CrossRealmCovenantDiplomacySynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CrossRealmCovenantDiplomacyInfos", type: {:nullable, {:struct, "CovenantDiplomacyInfos"}}}
  ],

"CheatUnOccupyOccupiableNpcResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantLivingTotemDeployResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "LivingTotemCuid", type: :cuid}
  ],

"FollowerArrivedAtWorkplaceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "ArrivedAtWorkplaceDateTime", type: :datetime},
    %{name: "FollowerWorkInfo", type: {:nullable, {:struct, "FollowerWorkInfo"}}}
  ],

"CovenantLeaveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ItemIndex" => [
    %{name: "__base__", type: {:struct, "MultipleItemSelector"}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "IsBound", type: :bool},
    %{name: "IsStorable", type: :unknown},
    %{name: "IsEroded", type: :unknown},
    %{name: "ExpireDateTime", type: {:nullable, :datetime}},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}}
  ],

"DiplomacyChatRoomHeaderInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChatRoomName", type: :string}
  ],

"CheatChangeCovenantCurrencyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PointCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PointCurrencyContainerUpdateInfo"}}}
  ],

"RegisteredGoodsBuyCountKey" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}}
  ],

"PartySynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"CovenantLivingTotemWithStatsInfo" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Cuid", type: :cuid},
    %{name: "Role", type: {:enum, "LivingTotemRoleType"}},
    %{name: "Tier", type: {:int, 4}},
    %{name: "CharacterPublicStatsInfo", type: {:nullable, :message}},
    %{name: "CharacterPrivateStatsInfo", type: {:nullable, :message}}
  ],

"DiplomacyChatRoomRecordsInitializationInfo" => [
    %{name: "__base__", type: {:struct, "ChatRoomRecordsInitializationInfo"}},
    %{name: "ChatRoomName", type: :string},
    %{name: "Index", type: {:int, 4}},
    %{name: "OwnerCovenantGuid", type: {:uint, 8}},
    %{name: "DiplomacyChatCovenantSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzDiplomacyChatCovenantSummaryInfo"}}}
  ],

"CovenantWeeklyRubyDonationInfo" => [
    %{name: "PlayerName", type: :string},
    %{name: "DonationAmount", type: {:uint, 8}}
  ],

"CovenantJoinedStrongholdBattleInfoRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantJoinedStrongholdBattleInfo", type: {:nullable, :message}}
  ],

"CovenantReturnHavenChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"DestroyedGearInfoByEnhancement" => [
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "GearKind", type: {:enum, "GearKindType"}},
    %{name: "IsBound", type: :bool},
    %{name: "IsStorable", type: :bool},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "DestroyedDateTime", type: :datetime}
  ],

"CheatAcquireAllUsableSkillsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ShopCashMerchandiseResetMerchandiseBuyCountInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UpdatedMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"CovenantDiplomacyAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantDiplomacyInfo", type: {:nullable, :message}}
  ],

"CovenantSupportInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantSupportQueryInfo", type: {:nullable, {:struct, "CovenantSupportQueryInfo"}}}
  ],

"CovenantBattalionPublicSummaryInfo" => [
    %{name: "__base__", type: {:struct, "BattalionPublicSummaryInfo"}},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, :message}}
  ],

"SeasonPassAchievementInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonPassAchievementInfos", type: {:list, {:struct, "SeasonPassAchievementInfo"}}}
  ],

"CheatAddRegionContentRechargedPlayTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionContentKind", type: {:enum, "RegionContentKindType"}},
    %{name: "AddPlayTime_sec", type: {:int, 4}}
  ],

"PlayerRealmIntegrationBattleInfo" => [
    %{name: "SeasonInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzPlayerRealmIntegrationBattleSeasonInfo"}}}
  ],

"CheatUpdatePlayerMissionRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "MissionCuid", type: :cuid},
    %{name: "MissionStep", type: {:int, 4}},
    %{name: "AcquireDateTime", type: :string}
  ],

"TerritoryUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryInfo", type: {:nullable, {:struct, "TerritoryInfo"}}}
  ],

"TerritoryErosionAddNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "ErosionInfo"}}}
  ],

"CheatClearRealmIntegrationBattleScoreResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatChangeCovenantNameRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Name", type: :string}
  ],

"StrongholdProtectResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatClearRealmIntegrationBattleParticipationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatCovenantRubyShopResetMerchandiseBuyCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatTerritoryContaminationDecrementChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MailBuildingRepairLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailBuildingWorkLayoutInfo"}},
    %{name: "IsComplete", type: :bool},
    %{name: "HealthPointsRatio_pe2", type: {:uint, 8}}
  ],

"CovenantRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "RankingViewInfo"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: :cuid},
    %{name: "Name", type: :string},
    %{name: "LeaderName", type: :string},
    %{name: "Level", type: {:int, 4}},
    %{name: "MemberCount", type: {:int, 2}},
    %{name: "MaxMemberCount", type: {:int, 2}},
    %{name: "EmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CampCuid", type: :cuid},
    %{name: "OccupiedStrongholdCuids", type: {:list, :cuid}},
    %{name: "MainHavenCuid", type: :cuid}
  ],

"CovenantTradeSalesRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemIndexWithCount", type: {:nullable, :message}},
    %{name: "SalesPrice", type: {:uint, 8}}
  ],

"FollowerWorkOverallInfo" => [
    %{name: "CoreInfo", type: {:nullable, {:struct, "FollowerCoreInfo"}}},
    %{name: "WorkInfo", type: {:nullable, {:struct, "FollowerWorkInfo"}}}
  ],

"CovenantCampChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantCampOccupancyInfo", type: {:nullable, {:struct, "CovenantCampOccupancyInfo"}}}
  ],

"CovenantUpdateCovenantPermissionsInfosResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantPermissionsInfos", type: {:map, :string, {:struct, "TSharedPtr<FTzCovenantPermissionsInfo"}}}
  ],

"RegionContentPlayInfoFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SkillAutoUseManaPointsRestrictOptionInfo" => [
    %{name: "IsManaPointsUsageRestricted", type: :bool},
    %{name: "IsForceUseSkillsInPvp", type: :unknown},
    %{name: "IsForceUseSelfBuffSkills", type: :unknown}
  ],

"TutorialBeginFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"CheatCreateAndEquipGearsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearCuid", type: :cuid},
    %{name: "BoundAndEroded", type: {:enum, "BoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "Count", type: {:int, 4}}
  ],

"CheatClearCovenantWarehouseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PowerSavingModeStartRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatTestGearEnhancementResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GearCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "SuccessCounts", type: {:map, {:int, 2}, {:int, 4}}}
  ],

"TutorialBeginNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuid", type: :cuid},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"PlayerDeleteReserveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"LocationForceSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CharacterMoveStopInfo", type: {:nullable, {:struct, "CharacterMoveStopInfo"}}}
  ],

"CheatRestoreChatCovenantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SchemaDataTable" => [
    %{name: "SchemaTable", type: {:nullable, :message}},
    %{name: "DataTable", type: {:nullable, :message}}
  ],

"CovenantQueryJoinAppliedCovenantSummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"TutorialUnholdRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialFilterKind", type: {:enum, "TutorialFilterKindType"}},
    %{name: "FilterValue", type: :string}
  ],

"FieldMigrationReadyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsInstanceField", type: :bool},
    %{name: "IsTeleport", type: :bool},
    %{name: "SeamlessNpcGuids", type: {:list, {:uint, 8}}}
  ],

"CovenantLivingTotemDeployNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "DeployedLivingTotemCuid", type: :cuid}
  ],

"RestrictedResurrectionInfo" => [
    %{name: "DistrictGroupCuidOnDeath", type: :cuid},
    %{name: "ResurrectionExpireDateTime", type: :datetime},
    %{name: "ResurrectorLocationInfoUsingItem", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "ResurrectorLocationInfoNotUsingItem", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CovenantItemDeleteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeleteItemGuid", type: {:uint, 8}},
    %{name: "LastKnownStackCount", type: {:uint, 8}},
    %{name: "LastKnownTotalCount", type: {:uint, 8}}
  ],

"RedrawableItemSelectRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "SelectedItemCuid", type: :cuid},
    %{name: "CostCurrencyCuid", type: :cuid}
  ],

"CheatChangeFollowerLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}}
  ],

"CheatClearGearResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}},
    %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
    %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}}
  ],

"RankingQueryByNameRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RankingTopicCuid", type: :cuid},
    %{name: "Name", type: :string}
  ],

"ChatRoomListUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AddedChatRoomRecordsInitializationInfos", type: {:list, {:struct, "ChatRoomRecordsInitializationInfo"}}},
    %{name: "DeletedChatRoomGuids", type: {:list, {:uint, 8}}}
  ],

"CheatSkillTableReloadRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FavorMissionDatabaseInfo" => [
    %{name: "__base__", type: {:struct, "FavorMissionInfo"}}
  ],

"FollowerDispatchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerItemGuid", type: {:uint, 8}},
    %{name: "DispatchOrderInfo", type: {:nullable, {:struct, "FollowerDispatchOrderInfo"}}}
  ],

"SchemaDataInfo" => [
    %{name: "__base__", type: {:struct, "BaseInfo"}},
    %{name: "SchemaDataTables", type: :unknown}
  ],

"PlayerSkillAcquireRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: :cuid}
  ],

"CheatSetFacingDirectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FacingDirectionYaw_rad", type: :float}
  ],

"SkillStateAffectInfo" => [
    %{name: "State", type: {:enum, "CharacterStateType"}},
    %{name: "StateExpireDurationDelta_msec", type: {:int, 4}}
  ],

"PartyConfirmInvitationFailNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"SubscriptionCommandResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RequestedChannel", type: {:enum, "SubscriptionChannelType"}},
    %{name: "RequestedCommand", type: {:enum, "SubscriptionCommandType"}},
    %{name: "RequestedParameter", type: :cuid},
    %{name: "SubscribeKeepaliveInterval_sec", type: {:int, 4}}
  ],

"RealmIntegrationRealmInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmIntegrationRealmInfos", type: {:list, {:struct, "RealmIntegrationRealmInfo"}}}
  ],

"CheatSpawnFromSpawnerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid}
  ],

"StrongholdBattleCompleteAchievementSourceInfo" => [
    %{name: "__base__", type: {:struct, "AchievementSourceInfo"}},
    %{name: "StrongholdBattleResult", type: {:enum, "StrongholdBattleResultType"}}
  ],

"RoadPathInfo" => [
    %{name: "RoadJunctionInfo", type: {:struct, "RoadJunctionInfo"}},
    %{name: "LinkedCuidHashCode", type: {:int, 4}},
    %{name: "IsOneShotSpecialMove", type: :bool}
  ],

"ServerDrivenPlayRewardInfo" => [
    %{name: "GainedExperiencePoints", type: {:uint, 8}},
    %{name: "GainedSpiritualBondPower", type: {:uint, 8}},
    %{name: "GainedCurrencies", type: {:map, :cuid, {:uint, 8}}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"RealmInfo" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "RealmCuidString", type: :string},
    %{name: "WorldName", type: :string},
    %{name: "RealmName", type: :string},
    %{name: "Ip", type: :string},
    %{name: "Port", type: {:int, 4}},
    %{name: "ServerState", type: {:enum, "ServerStateType"}},
    %{name: "ServerTagKind", type: {:enum, "ServerTagKindType"}},
    %{name: "UpdateDateTime", type: :datetime},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "IsInboundRealmTransferable", type: :bool}
  ],

"SystemMessageNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SystemMessageCuid", type: :cuid},
    %{name: "SystemMessageConditionCuid", type: {:nullable, {:struct, "Cuid"}}}
  ],

"CheatAcquireStanceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AcquireRequestedStance", type: {:enum, "StanceType"}},
    %{name: "Stance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}},
    %{name: "InstalledStance", type: {:enum, "StanceType"}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
  ],

"CheatInitializeQuestDataResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QuestsInfo", type: {:nullable, {:struct, "QuestsInfo"}}}
  ],

"NxLogBaseParameterInfo" => [
    %{name: "ActionId", type: {:struct, "FGuid"}},
    %{name: "IsByNxCmd", type: :bool}
  ],

"BattalionCompleteAssembleNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CombatTargetOptionInfo" => [
    %{name: "ContinuousCombatMannerModeKind", type: {:enum, "ContinuousCombatMannerModeKindType"}},
    %{name: "ContinuousCombatRadiusKind", type: {:enum, "ContinuousCombatRadiusKindType"}},
    %{name: "QuestAutoProceedRadiusKind", type: {:enum, "QuestAutoProceedRadiusKindType"}},
    %{name: "TargetDyingOrRecoveryStateCharacter", type: :bool},
    %{name: "KeepContinuousCombatAndAutoMoveOnManualMove", type: :unknown},
    %{name: "KeepAutoAttackOnMoveToLocation", type: :unknown},
    %{name: "KeepAutoAttackOnMoveToDirection", type: :unknown},
    %{name: "AutoAttackTargetOnKinds", type: {:list, {:enum, "AutoAttackTargetKindType"}}},
    %{name: "AutoCounterAttackNpc", type: :unknown},
    %{name: "AutoAttackTargetOnNpcGrades", type: {:list, {:enum, "AutoAttackTargetNpcGradeType"}}},
    %{name: "CancelAttackOrFocusTargetButtonVisible", type: :unknown},
    %{name: "SkillUsePriorityKind", type: {:enum, "SkillUsePriorityKindType"}},
    %{name: "RemoveTargetingByContinuousCombatOff", type: :unknown},
    %{name: "TabSelectTargetingKind", type: {:enum, "TabSelectTargetingKindType"}},
    %{name: "FocusTargetSelfButtonVisible", type: :unknown},
    %{name: "IsReservedSkillCancellable", type: :unknown},
    %{name: "StopContinuousCombatWhenKilledBoss", type: :unknown}
  ],

"CrossRealmCovenantDiplomacyWithdrawAllianceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"PartyJoinFailNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PartyGuid", type: {:uint, 8}}
  ],

"CheatSetStrongholdOccupyingCovenantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MailCountQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailTab", type: {:enum, "MailTabType"}},
    %{name: "Count", type: {:int, 4}}
  ],

"SeasonPassAchievementAccomplishNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonPassCuid", type: :cuid},
    %{name: "SeasonPassAchievementGroupCuid", type: :cuid},
    %{name: "AchievementCuid", type: :cuid}
  ],

"SpiritualBondPowerSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"AccountAffectInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "AccountAffectKind", type: {:enum, "AccountAffectKindType"}},
    %{name: "ExpireDateTime", type: :datetime}
  ],

"BattalionConfirmInvitationFailNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"BattalionJoinNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionInfo", type: {:nullable, :message}}
  ],

"StrongholdBattleCampaignConditionProgressSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CampaignConditionProgressInfos", type: {:list, {:struct, "CampaignConditionProgressInfo"}}}
  ],

"PartyMemberLootNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyMemberGuid", type: {:uint, 8}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "KilledNpcCuid", type: :cuid},
    %{name: "IsErosionInstallerReward", type: :bool}
  ],

"PvpRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PvpRecordInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPvpRecordInfo"}}},
    %{name: "TeaseMessage", type: :string}
  ],

"PlayerItemUseNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CovenantRewardInfo", type: {:nullable, {:struct, "CovenantRewardInfo"}}},
    %{name: "Amity", type: {:map, :cuid, {:uint, 8}}},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "ExperiencePointsDelta", type: {:uint, 8}},
    %{name: "IsUpgradeSlayingGrade", type: :bool},
    %{name: "AmityDelta", type: {:map, :cuid, {:uint, 8}}},
    %{name: "SpiritualBondPowerDelta", type: {:uint, 8}},
    %{name: "CooldownExpireDateTimeRangeInfo", type: {:nullable, {:struct, "DateTimeRangeInfo"}}}
  ],

"CheatChangeAmityResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ClanCuid", type: :cuid},
    %{name: "Amity", type: {:uint, 8}}
  ],

"BattalionLeaderChangeableNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetPlayerGuid", type: {:uint, 8}}
  ],

"SkillRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "SkillTargetingInfo", type: {:nullable, :message}},
    %{name: "ServerUtcNow", type: :datetime},
    %{name: "DelayForOthersDuration_msec", type: :float},
    %{name: "IsToggleBuffSkillOn", type: :bool}
  ],

"QuickSlotPageUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PageOfRightQuickSlot", type: {:int, 4}},
    %{name: "PageOfMiddleQuickSlot", type: {:int, 4}}
  ],

"StrongholdBattleDeclareAttackRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdBattleAttackDeclareInfo", type: {:nullable, {:struct, "StrongholdBattleAttackDeclareInfo"}}}
  ],

"CovenantInviteRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string}
  ],

"CheatTeleportFollowerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string}
  ],

"CollectionSlotItemInfo" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "IsEroded", type: :bool},
    %{name: "Quantity", type: {:int, 4}}
  ],

"CovenantRealmTransferCheckInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatBatchBossSpawnTimeRollbackResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AcceptDiplomacyChatRoomInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}}
  ],

"CheatAccountAffectDetachAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FavorDatabaseInfo" => [
    %{name: "__base__", type: {:struct, "FavorInfo"}},
    %{name: "FavorMissionDatabaseInfo", type: {:nullable, {:struct, "FavorMissionDatabaseInfo"}}}
  ],

"FollowerPromoteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Tier", type: {:int, 4}}
  ],

"PartyOptionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "PartyOptionInfo"}}}
  ],

"ErFrontServerSessionReinitializeInfo" => [
    %{name: "__base__", type: {:struct, "ErServerSessionInitializeInfo"}},
    %{name: "RealmAccountInfo", type: {:nullable, {:struct, "RealmAccountInfo"}}},
    %{name: "PlayerSummaryInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerSummaryInfo"}}},
    %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
    %{name: "PopupCommunityAutomatically", type: :bool}
  ],

"MultipleHandshakeMessage" => [
    %{name: "HandshakeMessages", type: :unknown}
  ],

"PointCurrencyContainerOverflowInfo" => [
    %{name: "CuidToOverflowCount", type: {:map, :cuid, {:uint, 8}}}
  ],

"DividendInfo" => [
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "DistributionAmount", type: {:uint, 8}}
  ],

"BattalionMemberAdditionalInfo" => [
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}},
    %{name: "State", type: {:enum, "CharacterStateType"}},
    %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
    %{name: "CustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "ErosionInfo"}}}
  ],

"CovenantWarehouseInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "InventoryInfo", type: {:nullable, {:struct, "InventoryInfo"}}}
  ],

"MerchandiseBuyResultInfo" => [
    %{name: "PlayerCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}},
    %{name: "MerchandiseBuyCountInfo", type: {:nullable, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"KickPreexistingSessionConfirmRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantCancelJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"SpecialMovePointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "SpecialMovePoints", type: {:int, 4}},
    %{name: "SpecialMovePointsDecreaseAmount_pmsec", type: {:int, 4}},
    %{name: "ServerUtcNow", type: :datetime},
    %{name: "DelayForOthersDuration_msec", type: :float}
  ],

"CheatSetStatRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StatKind", type: {:enum, "AdjustableStatKindType"}},
    %{name: "StatValue", type: :float}
  ],

"RealmAccountLoginRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "IsFastLogin", type: :bool}
  ],

"AnniversaryRewardAcquireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryPointsByAnniversaryCuid", type: {:map, :cuid, {:uint, 8}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CheatSetInvulnerableRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsInvulnerable", type: :bool}
  ],

"StrongholdBuildingUpdateBuildingAccessPermissionsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "BuildingAccessPermissionKinds", type: {:map, :cuid, {:enum, "BuildingAccessPermissionKindType"}}}
  ],

"PartySynchronizeMemberErosionInfoNotify" => [
    %{name: "__base__", type: {:struct, "PartySynchronizeMemberNotify"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "ErosionInfo"}}}
  ],

"TerritoryBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "BossSpawnInfo"}},
    %{name: "NextTrySpawnDateTime", type: {:nullable, :datetime}}
  ],

"CharacterMoveToLocationInfo" => [
    %{name: "__base__", type: {:struct, "CharacterMoveToInfo"}},
    %{name: "MoveToDestinationParameterInfo", type: {:nullable, :message}},
    %{name: "MoveToNextDestinationParameterInfo", type: {:nullable, :message}}
  ],

"MissionInfo" => [
    %{name: "MissionCuid", type: :cuid},
    %{name: "ProgressCount", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :datetime},
    %{name: "RewardAcquiredDateTimes", type: {:map, {:int, 4}, {:struct, "TozSerializableMessageLibNative::Nullable<FDateTime"}}}
  ],

"DatatoolHandshakeRequest" => [
    %{name: "DataHeaders", type: :unknown}
  ],

"MonsterBookNodeStateInfo" => [
    %{name: "NodeCuid", type: :cuid},
    %{name: "AnalysisColorCuid", type: :cuid},
    %{name: "AnalysisRewardStatCuid", type: :cuid},
    %{name: "IsAnalysisLocked", type: :bool}
  ],

"CovenantBuildingWorkInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "BuildingWorkInfos", type: {:map, :cuid, {:struct, "TMap<FTzCuid"}}}
  ],

"CheatChangeServerDrivenPlayRemainingDurationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RemainingDuration_sec", type: {:int, 4}}
  ],

"QuestProgressInfo" => [
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "AcceptDateTime", type: :datetime},
    %{name: "StartByItem", type: :bool},
    %{name: "QuestMissionProgressInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzQuestMissionProgressInfo"}}}
  ],

"QuickSlotDetailInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"PushNotificationOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PushNotificationOptionCuid", type: :cuid},
    %{name: "IsEnabled", type: :bool},
    %{name: "IsNotifiedEvenWhenConnected", type: :bool}
  ],

"StrongholdBattleCovenantBattalionJoinMemberNotify" => [
    %{name: "__base__", type: {:struct, "BattalionJoinMemberNotify"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveSetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "SquadOrder", type: {:int, 4}}
  ],

"GearSubOptionInfo" => [
    %{name: "CharacterStatChange", type: {:nullable, {:struct, "CharacterStatChangeInfo"}}}
  ],

"ConvenienceOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ConvenienceOptionInfo", type: {:nullable, {:struct, "ConvenienceOptionInfo"}}}
  ],

"CombatLogInfo" => [
    %{name: "CasterNameInfo", type: {:nullable, {:struct, "CharacterNameInfo"}}},
    %{name: "CasterCovenantVuid", type: {:struct, "Vuid"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "TargetName", type: :string},
    %{name: "TargetGuid", type: {:uint, 8}},
    %{name: "TargetCovenantVuid", type: {:struct, "Vuid"}},
    %{name: "ConsecutiveKillCount", type: {:int, 4}},
    %{name: "CombatLogKind", type: {:enum, "CombatLogKindType"}}
  ],

"CheatSpawnGuardTowersAtOccupyingStrongholdsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatMultiplyServerTimeSpeedRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Multiplier", type: {:int, 4}}
  ],

"CheatChangeBulkCharacterMoveNotifyIntervalResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ThreatTargetRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeJoinAppliedPlayerIsConnectedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsConnected", type: :bool},
    %{name: "LastClientDisconnectDateTime", type: :datetime}
  ],

"PlayerStrongholdBattleStatisticsInfo" => [
    %{name: "TotalDamageDone", type: {:uint, 8}},
    %{name: "TotalBuildingDamageDone", type: {:uint, 8}},
    %{name: "TotalHealDone", type: {:uint, 8}},
    %{name: "SkillUseStatisticsNxLogInfos", type: {:list, {:struct, "PlayerSkillUseStatisticsNxLogInfo"}}}
  ],

"CheatTestGearEnchantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GearCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}}
  ],

"DiplomacyChatRoomNameChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "ChatRoomName", type: :string}
  ],

"FollowerInfo" => [
    %{name: "__base__", type: {:struct, "CharacterInfo"}},
    %{name: "CoreInfo", type: {:nullable, {:struct, "FollowerCoreInfo"}}},
    %{name: "DispatchInfo", type: {:nullable, {:struct, "FollowerDispatchInfo"}}}
  ],

"CovenantBanishMemberFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"ItemAutoUseRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"CheatUserInventorySlotCountChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UserInventoryKind", type: {:enum, "UserInventoryKindType"}},
    %{name: "ChangeSlotCount", type: {:int, 4}}
  ],

"CheatChangeLastLevelForLevelUpNotifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Level", type: {:int, 4}}
  ],

"BattalionCovenantGrantedSkillNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
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
    %{name: "RewardCuid", type: :cuid},
    %{name: "Count", type: {:int, 4}},
    %{name: "UpdateDateTime", type: :datetime}
  ],

"FollowerDispatchOverallInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DispatchOverallInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzFollowerDispatchOverallInfo"}}}
  ],

"StrongholdBattleAttackEndInfo" => [
    %{name: "Reason", type: {:enum, "StrongholdBattleEndReasonType"}},
    %{name: "AltarDestroyerGuid", type: {:uint, 8}},
    %{name: "AltarDestroyerName", type: :string}
  ],

"BattalionPublicSummaryInfo" => [
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "CreateDateTime", type: :datetime},
    %{name: "BattalionLeaderPlayerName", type: :string},
    %{name: "MemberCount", type: {:int, 4}}
  ],

"QuestAcceptRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "QuestVuid", type: {:struct, "Vuid"}},
    %{name: "FavorNpcGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingQueryInfosResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "BuildingInfoList", type: {:list, {:struct, "BuildingInfo"}}}
  ],

"CovenantDeleteCovenantMemberRoleResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantMemberRoleName", type: :string}
  ],

"CheatChangeCrossRealmMaintenanceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"MailSendCountQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PersonalMailSendCount", type: {:int, 4}},
    %{name: "CovenantMailSendCount", type: {:int, 4}},
    %{name: "SendCountUpdateDateTime", type: :datetime}
  ],

"CheatAcquireCovenantResearchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ResearchCuid", type: :cuid},
    %{name: "Level", type: {:int, 4}}
  ],

"ErosionInstalledWithoutPermissionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ErosionInfo", type: {:nullable, {:struct, "ErosionInfo"}}}
  ],

"CheatAllStancesAcquireRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PlayerRealmAccountPresentApplicationCheckInfo" => [
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Level", type: {:int, 4}}
  ],

"WorldMapPvpBattleCovenantInfoAddOrUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "PvpBattleCovenantInfo", type: {:nullable, :message}}
  ],

"CovenantQueryRecommendCovenantSummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CharacterRotateTowardsYawInfo" => [
    %{name: "__base__", type: {:struct, "CharacterRotateInfo"}},
    %{name: "FinalYaw_rad", type: :float}
  ],

"SpellstoneSlotInfo" => [
    %{name: "LocationCoordinates", type: :fintvector2d},
    %{name: "Orientation", type: {:enum, "SpellstoneOrientationType"}}
  ],

"CovenantSupportInfo" => [
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "FollowerCuid", type: :cuid},
    %{name: "PlayerName", type: :string},
    %{name: "FollowerWorkKind", type: {:enum, "FollowerWorkKindType"}},
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}},
    %{name: "BuildingWorkCuid", type: :cuid},
    %{name: "SupportedCount", type: {:int, 4}}
  ],

"ShopCashMerchandiseRestoreRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RestorePaymentInfo", type: {:nullable, {:struct, "ToyMerchandisePaymentInfo"}}}
  ],

"DistrictFavorDatabaseInfo" => [
    %{name: "__base__", type: {:struct, "DistrictFavorBossInfo"}},
    %{name: "CurrentAvailableFavorDatabaseInfos", type: {:map, {:struct, "Vuid"}, {:struct, "TSharedPtr<FTzFavorDatabaseInfo"}}},
    %{name: "LastUpdateDateTime", type: :datetime}
  ],

"MarketGoodsExpireDateTimeUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsGuids", type: :unknown},
    %{name: "ExpireDateTime", type: :datetime},
    %{name: "Reason", type: {:enum, "MarketGoodsExpireReasonType"}}
  ],

"StrongholdBattleTacticalSkillBadgeAmountChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "TacticalSkillBadgeCount", type: {:int, 4}}
  ],

"MailReceiveAttachmentsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"QuestCinePlayEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RegionContentPlayInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MailBuildingWorkLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}}
  ],

"MountCallingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerLocation_cm", type: :vector}
  ],

"MailUnreadNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UnreadCounts", type: {:map, {:enum, "MailTabType"}, {:int, 4}}}
  ],

"PartySharedAttackTargetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}}
  ],

"StrongholdBattleWinnerBattalionInfo" => [
    %{name: "CovenantVuid", type: {:struct, "Vuid"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "AltarDestroyerName", type: :string}
  ],

"ToeCustomizeInfo" => [
    %{name: "ToeBase", type: :vector},
    %{name: "ToeNub", type: :vector}
  ],

"StrongholdBattleInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "StrongholdBattleKind", type: {:enum, "StrongholdBattleKindType"}},
    %{name: "StartTime", type: :datetime},
    %{name: "BuildingStateInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdBattleBuildingStateInfo"}}},
    %{name: "DefenseInfos", type: {:map, {:enum, "StrongholdBattleDeploymentKindType"}, {:struct, "TSharedPtr<FTzStrongholdBattleDefenseGroupInfo"}}},
    %{name: "AttackInfos", type: {:map, {:enum, "StrongholdBattleDeploymentKindType"}, {:struct, "TSharedPtr<FTzStrongholdBattleAttackInfo"}}}
  ],

"CheatAccomplishAllFavorResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionVolunteerParticipationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "VolunteerParticipationInfo", type: {:nullable, :message}}
  ],

"RegionContentPlayInfo" => [
    %{name: "RegionContentPlayTimeInfo", type: {:nullable, {:struct, "RegionContentPlayTimeInfo"}}}
  ],

"CheatMonsterBookAcquireAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyRejectAllianceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatChangeServerTimeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Offset", type: {:struct, "FTimespan"}},
    %{name: "SpeedChangeTime", type: :datetime},
    %{name: "Multiplier", type: {:int, 4}}
  ],

"CovenantConfirmJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantUpdateCovenantPermissionsInfosNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantPermissionsInfos", type: {:map, :string, {:struct, "TSharedPtr<FTzCovenantPermissionsInfo"}}}
  ],

"ErChatServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"PlayerPvpInfo" => [
    %{name: "TeaseMessage", type: :string},
    %{name: "AlertPlayers", type: {:map, {:uint, 8}, :datetime}},
    %{name: "CrossRealmAlertPlayers", type: {:map, {:uint, 8}, {:struct, "CrossRealmAlertPlayerRegisterInfo"}}},
    %{name: "NonLosingPvpScoreExpiredDateTime", type: :datetime}
  ],

"StrongholdBattleCarriageLivingTotemCombatStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "IsInCombatInProgressState", type: :bool}
  ],

"MailReceiveAttachmentsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MailGuid", type: {:uint, 8}},
    %{name: "MailBoxKind", type: {:enum, "MailBoxKindType"}}
  ],

"CheatChangeCovenantCurrencyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"RealmIntegrationRealmInfo" => [
    %{name: "FromRealmCuid", type: :cuid},
    %{name: "ToRealmCuid", type: :cuid},
    %{name: "RealmTransferDateTime", type: :datetime}
  ],

"CovenantCurrencyInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "CurrencyInfo", type: {:nullable, {:struct, "CovenantCurrencyInfo"}}},
    %{name: "CovenantTaxAcquireInfos", type: {:list, {:struct, "CovenantTaxAcquireInfo"}}}
  ],

"PartyLeaveMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PartyLeaveOrDismissReason", type: {:enum, "PartyLeaveOrDismissReasonType"}}
  ],

"ControlOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ControlOptionInfo", type: {:nullable, {:struct, "ControlOptionInfo"}}}
  ],

"PlayerMarketTransactionProcessInfo" => [
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerMarketTransactionProcessKind", type: {:enum, "PlayerMarketTransactionProcessKindType"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "MarketKey", type: {:uint, 8}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "IsStorable", type: :bool},
    %{name: "ItemAdditionalInfo", type: {:nullable, :message}},
    %{name: "ItemStackCount", type: {:int, 4}},
    %{name: "SellCurrencyCuid", type: :cuid},
    %{name: "SellCurrencyAmount", type: {:uint, 8}},
    %{name: "SettlementInfo", type: {:nullable, {:struct, "MarketSettlementInfo"}}},
    %{name: "RegistrationFeeCurrencyCuid", type: :cuid},
    %{name: "RegistrationFeeCurrencyAmount", type: {:uint, 8}},
    %{name: "CovenantMarketFixedFeeCurrencyCuid", type: :cuid},
    %{name: "CovenantMarketFixedFeeCurrencyAmount", type: {:uint, 8}},
    %{name: "SellerItemGuid", type: {:uint, 8}},
    %{name: "BuyPlayerGuid", type: {:nullable, {:uint, 8}}},
    %{name: "PrevRegisteredGoodsGuid", type: {:nullable, {:uint, 8}}},
    %{name: "TransactionDateTime", type: {:nullable, :datetime}},
    %{name: "DeleteDateTime", type: {:nullable, :datetime}},
    %{name: "UpdateDateTime", type: :datetime},
    %{name: "ActionId", type: {:struct, "FGuid"}},
    %{name: "SellPlayerGuid", type: {:uint, 8}},
    %{name: "IsDirty", type: :bool}
  ],

"MarketFavoriteItemInfoQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "MarketFavoriteItemInfosOnSale", type: {:list, {:struct, "MarketFavoriteItemInfo"}}},
    %{name: "MarketFavoriteItemInfosNotOnSale", type: {:list, {:struct, "MarketFavoriteItemInfo"}}}
  ],

"ShopShoppingModeCommandResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "RequestedCommand", type: {:enum, "SubscriptionCommandType"}},
    %{name: "RegisteredGoodsList", type: {:list, {:struct, "RegisteredGoodsInfo"}}},
    %{name: "BuyCountInfos", type: {:list, {:struct, "GoodsBuyCountInfo"}}},
    %{name: "RegisteredGoodsBuyCountInfos", type: {:list, {:struct, "RegisteredGoodsBuyCountInfo"}}},
    %{name: "AutoBuySettings", type: {:list, {:struct, "AutoBuyInfo"}}},
    %{name: "SubscribeKeepaliveInterval_sec", type: {:int, 4}},
    %{name: "ShopCuid", type: :cuid}
  ],

"CheatSpawnNormalDoodadResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ExpeditionForenoticeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "ExpeditionCuid", type: :cuid},
    %{name: "ScheduledOpeningDateTime", type: :datetime}
  ],

"SkillCasterMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "SkillMoveAffectInfo"}},
    %{name: "CasterMoveAffectKind", type: {:enum, "CasterMoveAffectKindType"}}
  ],

"PlayerLogoutRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"InstanceFieldImproperQuestExpireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpireTargetTime", type: :datetime}
  ],

"CheatStrongholdBattleCarriageLivingTotemTeleportToPlayerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ChatBanNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BanInfo", type: {:nullable, :message}}
  ],

"ErosionInfo" => [
    %{name: "__base__", type: {:struct, "EntityInfo"}},
    %{name: "ErosionCuid", type: :cuid},
    %{name: "ErosionItemCuid", type: :cuid},
    %{name: "InstallerGuid", type: {:uint, 8}},
    %{name: "InstallerName", type: :string},
    %{name: "InstallerBattalionInfo", type: {:nullable, {:struct, "AffiliatedBattalionInfo"}}},
    %{name: "InstalledDateTime", type: :datetime},
    %{name: "IsWithoutPermission", type: :bool},
    %{name: "AbyssCocoonGuid", type: {:uint, 8}},
    %{name: "NpcSummonWaveStartTime", type: :datetime},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"CheatUpdateCovenantMissionCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MissionCuid", type: :cuid},
    %{name: "AdjustKind", type: {:enum, "MissionAdjustKindType"}},
    %{name: "AdjustCount", type: {:int, 4}}
  ],

"WarpCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SourceWarpPointCuid", type: :cuid},
    %{name: "DestinationWarpPointCuid", type: :cuid}
  ],

"ItemIndexOptionalSelector" => [
    %{name: "__base__", type: {:struct, "MultipleItemSelector"}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "IsBound", type: :bool},
    %{name: "IsStorable", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x1b)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar6=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar6=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "IsEroded", type: {:nullable, "lVar2=4;puVar3=&DAT_0901b5c8;if(*(char*)(in_x0+0x1d)=='\\0'){lVar2=5;puVar3=(undefined8*)pcVar1;}local_190=0;local_188=(char*)0x0;local_198=(ulong)(byte)((int)lVar2<<1);__memcpy_chk((ulong)&local_198|1,puVar3,lVar2,0x17);uVar8=local_198&0xff;*(undefined*)(((ulong)&local_198|1)+lVar2)=0;}uVar4=local_190;pcVar1=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar1=(char*)((long)&local_198+1);}std::__ndk1::__put_charact"}},
    %{name: "ExpireBeginDateTime", type: {:nullable, :datetime}},
    %{name: "ExpireEndDateTime", type: {:nullable, :datetime}},
    %{name: "GearQuality", type: {:nullable, "::to_string((uint)*(byte*)(in_x0+0x41));uVar8=local_198&0xff;}uVar4=local_190;pcVar1=local_188;if((uVar8&1)==0){uVar4=uVar8>>1;pcVar1=(char*)((long)&local_198+1);}std::__ndk1::__p"}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"CovenantRealmTransferRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DestinationRealmCuid", type: :cuid},
    %{name: "PlayerGuidList", type: {:list, {:uint, 8}}}
  ],

"SpellstoneAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "ItemAdditionalInfo"}},
    %{name: "SubOptionCuids", type: {:list, :cuid}}
  ],

"CovenantSynchronizeMemberNameNotify" => [
    %{name: "__base__", type: {:struct, "CovenantSynchronizeMemberNotify"}},
    %{name: "PlayerName", type: :string}
  ],

"CovenantTradeGoodsBuyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GoodsGuid", type: {:uint, 8}}
  ],

"RPCReturnMessage" => [
    %{name: "__base__", type: {:struct, "RPCMessage"}},
    %{name: "ReturnValue", type: {:nullable, :message}}
  ],

"PrivateChannelOpenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ChannelKind", type: {:enum, "PrivateChannelKindType"}},
    %{name: "PrivateChannelKeepaliveInterval_sec", type: {:int, 4}}
  ],

"AetherOptionResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CashShopMainCategoryInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "TextCuid", type: :cuid},
    %{name: "SortOrder", type: {:int, 4}}
  ],

"CovenantTaxAcquireInfo" => [
    %{name: "AcquireDateTime", type: :datetime},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "CurrencyAmount", type: {:uint, 8}}
  ],

"CheatCreateItemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "BoundAndEroded", type: {:enum, "BoundAndErodedType"}},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "Count", type: {:int, 4}},
    %{name: "ItemExpireDateTimeUtc", type: {:nullable, :datetime}}
  ],

"CovenantRejectJoinApplicationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CheatCommandPresetRelayNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PresetTitle", type: :string}
  ],

"CheatChangeStrongholdBuildingLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid},
    %{name: "BuildingLevel", type: {:int, 4}}
  ],

"CovenantBattalionRemovedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}}
  ],

"AllRealmInfoPubSubChannelInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "RealmInfos", type: {:list, nil}}
  ],

"SkillQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "QuickSlotDetailInfo"}},
    %{name: "SkillCuid", type: :cuid}
  ],

"TeaseMessageRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "TeaseMessage", type: :string}
  ],

"ChatServerLoginRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantWorldMapMarkerRemoveAllNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "RemovedGuids", type: {:list, {:uint, 8}}}
  ],

"CheatSendSampleMailToMeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyCancelAllianceApplicationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatFavorDailyCheckDateTimeResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"InteractionCancelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"WarpItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "DestinationWarpPointCuid", type: :cuid}
  ],

"ProtocolCheckResponse" => [
    %{name: "TozNetwork.Handshake.ProtocolChecker.ProtocolCheckResponse", type: :unknown}
  ],

"TriggerWorldActionInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"PartySharedFocusTargetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"PaidAttendanceHideNotificationMarkerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceCuid", type: :cuid}
  ],

"ReturnCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CasterGuid", type: {:uint, 8}}
  ],

"WarpCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatFillHealthPointsAndManaPointsToFullResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"DisplayRealmTransferQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmAccountRealmTransferCuid", type: :cuid},
    %{name: "CovenantRealmTransferCuid", type: :cuid}
  ],

"CheatExpeditionLivingTotemTeleportToPlayerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ErosionInstalledWithoutPermissionRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "InstallerGuid", type: {:uint, 8}}
  ],

"FollowerWorkInfo" => [
    %{name: "WorkState", type: {:enum, "FollowerWorkStateType"}},
    %{name: "MaxWorkTime_sec", type: {:int, 4}},
    %{name: "ElapsedWorkTime_sec", type: {:int, 4}},
    %{name: "CurrentWorkSpeed_mwpsec", type: {:int, 4}},
    %{name: "AccumulatedWorkAmount_mw", type: {:uint, 8}},
    %{name: "LastWorkUpdateDateTime", type: :datetime}
  ],

"ChatEntityPlayerInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :string},
    %{name: "Level", type: {:int, 4}},
    %{name: "PlayerExperiencePointsRanking", type: {:int, 4}},
    %{name: "LastLoginDateTime", type: {:nullable, :datetime}}
  ],

"CheatStartStrongholdSummonWaveDefenseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdSummonWaveDefenseCuid", type: :cuid},
    %{name: "DistrictCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyRejectAllianceResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"RealmIntegrationBattleResultInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "RealmResults", type: {:list, {:struct, "RealmIntegrationBattleRealmResult"}}}
  ],

"StrongholdBattleSiegeWeaponLocationInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdBattleSiegeWeaponLocationInfos", type: {:list, {:struct, "StrongholdBattleSiegeWeaponLocationInfo"}}}
  ],

"StrongholdBuildingWorkCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid}
  ],

"HavenEventInfo" => [
    %{name: "HavenEventCuid", type: :cuid},
    %{name: "EventBeginDateTime", type: :datetime},
    %{name: "EventEndDateTime", type: :datetime}
  ],

"CheatRegenerateHealthPointsAndManaPointsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HealthPointsRegenerationUnit", type: {:uint, 8}},
    %{name: "ManaPointsRegenerationUnit", type: {:uint, 8}}
  ],

"CheatCreateAndEquipGuiseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "SelectedGuiseCuid", type: :cuid}
  ],

"MailReservedStrongholdProtectionFailLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "ReservedStrongholdProtectionFailReason", type: {:enum, "ReservedStrongholdProtectionFailReasonType"}},
    %{name: "StrongholdProtectionUseRefreshTime", type: {:struct, "FTimespan"}},
    %{name: "AttackCovenantNames", type: {:list, :string}},
    %{name: "RestrictionAnniversaryCuid", type: :cuid},
    %{name: "RestrictionStartDateTimeByAnniversary", type: {:nullable, :datetime}},
    %{name: "RestrictionAnniversaryEndDateTime", type: {:nullable, :datetime}}
  ],

"BattalionJoinApplicationCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"StrongholdBattleMarchingStartNotify" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackPhaseStartNotify"}}
  ],

"PrivateChannelOpenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChannelKind", type: {:enum, "PrivateChannelKindType"}}
  ],

"AccelerationResultInfo" => [
    %{name: "FollowerWorkKind", type: {:enum, "FollowerWorkKindType"}},
    %{name: "WorkplaceSpawnedEntityCuid", type: :cuid},
    %{name: "BuildingWorkCuid", type: :cuid}
  ],

"BattalionBattalionWarpConfirmFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatExpeditionOpenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ExpeditionCuid", type: :cuid},
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "ExpeditionSummaryInfo", type: {:nullable, {:struct, "ExpeditionSummaryInfo"}}}
  ],

"OtherPlayerLootNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "NpcLocation_cm", type: :vector},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerLocation_cm", type: :vector},
    %{name: "ItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}},
    %{name: "IsErosionInstallerReward", type: :bool}
  ],

"PlayerLoginRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsFastLogin", type: :bool}
  ],

"PartyInfo" => [
    %{name: "PartyGuid", type: {:uint, 8}},
    %{name: "PartyOptionInfo", type: {:nullable, {:struct, "PartyOptionInfo"}}},
    %{name: "PartyLeaderGuid", type: {:uint, 8}},
    %{name: "PartyMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPartyMemberInfo"}}},
    %{name: "TargetLocationInfos", type: {:list, {:struct, "TargetLocationInfo"}}},
    %{name: "SharedAttackTargetInfo", type: {:nullable, :message}},
    %{name: "SharedFocusTargetInfo", type: {:nullable, :message}}
  ],

"CrossRealmCovenantDiplomacyWithdrawAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"FavorSummaryInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SkillStatsAffectInfo" => [
    %{name: "HealthPointsDelta", type: {:int, 4}},
    %{name: "ManaPointsDelta", type: {:int, 4}}
  ],

"CovenantRecommendBuildingWorkResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatExpeditionRepeatScheduleOpenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RegionCuid", type: :cuid}
  ],

"FollowerLeaveToWorkplaceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DispatchOverallInfo", type: {:nullable, {:struct, "FollowerDispatchOverallInfo"}}},
    %{name: "FollowerMovePathInfo", type: {:nullable, {:struct, "FollowerMovePathInfo"}}}
  ],

"ServerDrivenPlayResetDailyDurationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RemainingDailyDuration_sec", type: {:int, 4}},
    %{name: "StartUsingDailyDurationTime", type: {:nullable, :datetime}}
  ],

"ShopCashMerchandiseUpdateRealmTotalBuyCountInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "UpdatedRealmTotalMerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"ItemLockSwitchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "IsInRealmAccountWarehouse", type: :bool},
    %{name: "IsLocked", type: :bool}
  ],

"DeathPenaltyRecoveryInfo" => [
    %{name: "DeathPenaltyFreeRecoveryInfo", type: {:nullable, :message}},
    %{name: "LastDeathPenaltyAutoRecoveryInfo", type: {:nullable, :message}}
  ],

"CovenantUpdateMainHavenCuidNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MainHavenCuid", type: :cuid}
  ],

"CheatResetAchievementRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AchievementCuid", type: :cuid}
  ],

"CheatDeleteChatEntityRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatStrongholdBattleAttackDeclareResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmAccountPresentCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Password", type: :string},
    %{name: "RealmCuid", type: :cuid}
  ],

"CovenantCampOfficeScaleInfo" => [
    %{name: "TotalCovenantMemberCount", type: {:int, 4}},
    %{name: "ActiveCovenantMemberCount", type: {:int, 4}},
    %{name: "ActiveCovenantMemberCountUpdateDateTime", type: {:nullable, :datetime}}
  ],

"TerritoryErosionItemConfigurationInfo" => [
    %{name: "IsPermitted", type: :bool},
    %{name: "unknown_name", type: {:uint, 8}}
  ],

"PrivateChatRoomRecordsInitializationInfo" => [
    %{name: "__base__", type: {:struct, "ChatRoomRecordsInitializationInfo"}},
    %{name: "ChatEntitySummaryInfo", type: {:nullable, {:struct, "ChatEntitySummaryInfo"}}}
  ],

"DeathPenaltyFreeRecoveryInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeathPenaltyFreeRecoveryInfo", type: {:nullable, :message}}
  ],

"CheatResetCovenantCampaignTicketCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FocusRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FocusTargetGuid", type: {:uint, 8}}
  ],

"SkillStageInfo" => [
    %{name: "Stage", type: {:struct, "unsigned_char"}},
    %{name: "LoopCounter", type: {:int, 4}},
    %{name: "SubStageCounter", type: {:int, 4}},
    %{name: "SkillCasterAffectInfo", type: {:nullable, {:struct, "SkillCasterAffectInfo"}}},
    %{name: "SkillAffectTargetGuidList", type: {:list, {:uint, 8}}},
    %{name: "SkillAffectTargetAffectInfoList", type: {:list, {:struct, "SkillAffectTargetAffectInfo"}}},
    %{name: "SkillShieldWallAffectInfoList", type: {:list, {:struct, "SkillShieldWallAffectInfo"}}},
    %{name: "SkillTargetingInfos", type: {:list, {:struct, "SkillTargetingInfo"}}},
    %{name: "AppliedSomaBuffCuid", type: :cuid},
    %{name: "AppliedAetherCategoryTier", type: {:int, 4}},
    %{name: "StageStartDateTime", type: :datetime},
    %{name: "Duration_msec", type: {:int, 4}}
  ],

"EmergencyEscapeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MailAttachmentsInfo" => [
    %{name: "Items", type: {:list, {:struct, "ItemInfo"}}},
    %{name: "Currencies", type: {:list, {:struct, "MailAttachmentCurrencyInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"PlayerLocationMonitoringInfo" => [
    %{name: "RequestPlayerGuid", type: {:uint, 8}},
    %{name: "RequestPlayerRealmCuid", type: :cuid},
    %{name: "RequestPlayerName", type: :string},
    %{name: "TargetPlayerGuid", type: {:uint, 8}},
    %{name: "TargetPlayerRealmCuid", type: :cuid},
    %{name: "TargetPlayerName", type: :string},
    %{name: "TargetCovenantGuid", type: {:uint, 8}},
    %{name: "TargetCovenantName", type: :string},
    %{name: "TargetConnectionStatus", type: {:enum, "ConnectionStatusType"}},
    %{name: "ExpiredDateTime", type: :datetime}
  ],

"PvpBattleInfo" => [
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "RegionCuid", type: :cuid},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleDisplayKind", type: {:enum, "PvpBattleDisplayKindType"}},
    %{name: "PvpBattleKillDeathInfos", type: {:list, {:struct, "PvpBattleKillDeathInfo"}}},
    %{name: "PvpBattleKillDeathCountInfos", type: {:map, {:struct, "PvpBattleCovenantId"}, {:struct, "TMap<FTzPvpBattlePlayerId"}}},
    %{name: "PvpBattlePlayerInfos", type: {:map, {:struct, "PvpBattlePlayerId"}, {:struct, "TSharedPtr<FTzPvpBattlePlayerInfo"}}},
    %{name: "PvpBattleCovenantInfos", type: {:map, {:struct, "PvpBattleCovenantId"}, {:struct, "TSharedPtr<FTzPvpBattleCovenantInfo"}}},
    %{name: "Location_cm", type: :vector}
  ],

"CheatClearPlayerMissionRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AcquireDateTime", type: {:nullable, :datetime}}
  ],

"CheatFinishHavenBuildingWorkRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid}
  ],

"CheatPromoteFollowerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerCuid", type: :cuid},
    %{name: "TargetTier", type: {:int, 4}}
  ],

"CheatSpawnTerritoryBossResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantDiplomacyRejectAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"StrongholdBuildingInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "BuildingSubscriptionInfo", type: {:nullable, {:struct, "BuildingSubscriptionInfo"}}}
  ],

"CheatRankingResetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"AnniversaryPointRewardParameter" => [
    %{name: "__base__", type: {:struct, "AcquireSourceAdditionalParameter"}},
    %{name: "GoalPoint", type: {:int, 4}}
  ],

"CheatGetStrongholdAccumulatedTaxCurrencyAmountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"CovenantWatchDeregisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :string}
  ],

"FindShortestTravelPathRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :vector},
    %{name: "Destination_cm", type: :vector},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"WorldMapPvpBattleEndNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleGuid", type: {:uint, 8}}
  ],

"CheatAcquireAllUsableSkillsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AcquiredSkillCuids", type: {:list, :cuid}}
  ],

"EndedWorldEventActionInfo" => [
    %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
  ],

"CheatInstallAllArquirunesRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RealmTransferRealmInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmTransferCuid", type: :cuid}
  ],

"CheatPlayerDeleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"RealmAccountPresentApplicationCheckInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "IsLoginedWithSafeDevice", type: :bool},
    %{name: "IsInVillage", type: :bool},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmAccountPresentApplicationCheckInfo"}}}
  ],

"CollectionSlotItemRegisterNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CollectionCuid", type: :cuid},
    %{name: "CollectionSlotItemCuid", type: :cuid}
  ],

"CheatClearPlayerMissionRewardResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleDefenseGunAttackStartNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantDiplomacyCancelReinforcementInvitationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatStrongholdBattlePhaseTransitionEventRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdBattlePhaseTransitionEvent", type: {:enum, "StrongholdBattlePhaseTransitionEventType"}}
  ],

"CovenantUpdateCovenantMemberRoleNameNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TargetCovenantMemberRoleName", type: :string},
    %{name: "NewCovenantMemberRoleName", type: :string}
  ],

"CheatNpcCombatLogRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatSpawnGuardTowersAtOccupyingStrongholdsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GuardTowerCuid", type: :cuid}
  ],

"CovenantOccupyCovenantCampNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantCampOccupancyInfo", type: {:nullable, {:struct, "CovenantCampOccupancyInfo"}}}
  ],

"StrongholdSummonWaveDefenseUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "WaveIndex", type: {:int, 4}}
  ],

"CheatRealmAccountRealmTransferBlockResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatChangeTerritoryEntanglementGaugeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "EntanglementGauge", type: {:int, 4}}
  ],

"CovenantRealmTransferReadyToRealmTransferResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"GearEnhanceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearGuid", type: {:uint, 8}},
    %{name: "MaterialItemGuid", type: {:uint, 8}},
    %{name: "RequestEnhancementGrade", type: {:int, 2}},
    %{name: "SpecialGearEnhancementScheduleCuid", type: :cuid}
  ],

"CovenantJoinRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"BuffPeriodicAffectNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffCuid", type: :cuid},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "HealthPointsDelta", type: {:int, 4}},
    %{name: "ManaPointsDelta", type: {:int, 4}},
    %{name: "ProtectedDamage", type: {:int, 4}}
  ],

"CheatInventoryIncreaseWeightLimitResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleJoinNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdBattleInfo", type: {:nullable, :message}},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}}
  ],

"CovenantCreateCovenantMemberRoleRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "CovenantMemberRoleName", type: :string}
  ],

"PlayerMarketTransactionSettleProcessNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
  ],

"CheatClearSeasonPassLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ItemAcquireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerName", type: :string},
    %{name: "ItemAcquireSourceInfo", type: {:nullable, {:struct, "ItemAcquireSourceInfo"}}},
    %{name: "ItemIndices", type: {:list, {:struct, "ItemIndex"}}}
  ],

"DisplayOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DisplayOptionInfo", type: {:nullable, {:struct, "DisplayOptionInfo"}}}
  ],

"CheatCommandPresetBeginNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatTerritoryContaminationChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "ContaminationDelta", type: {:int, 4}}
  ],

"PaidAttendanceRewardAllResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PaidAttendanceInfo", type: {:nullable, {:struct, "PaidAttendanceInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"GuiseUnequipRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SkillCasterAffectInfo" => [
    %{name: "__base__", type: {:struct, "SkillAffectInfo"}},
    %{name: "SkillStatsAffectInfo", type: {:nullable, :message}},
    %{name: "SkillCasterMoveAffectInfo", type: {:nullable, {:struct, "SkillCasterMoveAffectInfo"}}}
  ],

"AlertPlayerInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Name", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "RegisteredDateTime", type: :datetime}
  ],

"SkillProcAvailableNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "TargetingCharacterGuid", type: {:uint, 8}}
  ],

"ShopAutoBuySettingUpdateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BaseInfo" => [
    %{name: "Token", type: :unknown}
  ],

"StrongholdBattleAttackDeclareInfo" => [
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AttackerHavenCuid", type: :cuid},
    %{name: "DiscardStrongholdCuidIfMax", type: :cuid},
    %{name: "AttackResourceInfo", type: {:nullable, {:struct, "StrongholdBattleAttackResourceInfo"}}},
    %{name: "IsAllowVolunteerJoinApply", type: :bool},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown},
    %{name: "IsNotExposeToBattalionList", type: :unknown},
    %{name: "IsDeclarePlunder", type: :unknown}
  ],

"CovenantHighestOccupiedStrongholdGradeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "StrongholdGradeType"}}
  ],

"CovenantWatchDetailInfoQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatResetAllAetherOptionResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PlayerFieldLeaveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntitySpawnReason", type: {:enum, "EntitySpawnRemoveReasonType"}}
  ],

"RealmAccountRealmTransferExecuteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "RealmTransferInfo", type: {:nullable, :message}},
    %{name: "PlayerCheckInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzPlayerRealmTransferCheckInfo"}}}
  ],

"StrongholdBuildingDowngradeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"GameNotificationOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "HeroBossSpawnNotifyDisplayOption", type: :bool},
    %{name: "DistrictBossSpawnNotifyDisplayOption", type: :unknown},
    %{name: "ZonePointBossSpawnNotifyDisplayOption", type: :unknown}
  ],

"CovenantLeaveMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"CovenantDiplomacyConfirmAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"ChatInfo" => [
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "OriginRealmCuid", type: :cuid},
    %{name: "SenderCharacterName", type: :string},
    %{name: "SenderClasse", type: {:enum, "ClasseType"}},
    %{name: "SenderLevel", type: {:int, 4}},
    %{name: "SenderSlayingGrade", type: {:int, 2}},
    %{name: "SenderPlayerExperiencePointsRanking", type: {:nullable, {:int, 4}}},
    %{name: "SenderFieldUid", type: {:struct, "FieldUid"}},
    %{name: "SenderGuid", type: {:uint, 8}},
    %{name: "HighestOccupiedStrongholdGrade", type: {:enum, "StrongholdGradeType"}},
    %{name: "InfoToShare", type: :string},
    %{name: "Text", type: :string},
    %{name: "HarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "RegisterDateTime", type: :datetime}
  ],

"ExpeditionJoinedBattalionsInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "ExpeditionJoinedBattalionList", type: {:list, {:struct, "CovenantBattalionPublicSummaryInfo"}}}
  ],

"PlayerMarketTransactionSellWithdrawProcessNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"AnniversaryAddRewardParameter" => [
    %{name: "__base__", type: {:struct, "DropParameter"}},
    %{name: "RewardCuid", type: :cuid}
  ],

"HandshakeFailMessage" => [
    %{name: "Result", type: {:nullable, :message}}
  ],

"FollowerExperiencePointsItemConsumeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerItemGuid", type: {:uint, 8}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
  ],

"GearErodedRestoreResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "GearErodedRestorationResultInfo", type: {:nullable, {:struct, "GearErodedRestorationResultInfo"}}}
  ],

"PlayerCashShopInfo" => [
    %{name: "CashShopRefundableMerchandiseStorageBoxInfo", type: {:nullable, {:struct, "CashShopRefundableMerchandiseStorageBoxInfo"}}},
    %{name: "MerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
  ],

"CheatTestGearEnchantOptionGradeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CostItemCuid", type: :cuid},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "UpgradeCountsByEnchantSlot", type: {:map, {:int, 2}, {:int, 4}}}
  ],

"CovenantCampaignEnterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CampaignWarpNpcGuid", type: {:uint, 8}}
  ],

"DestroyerInfo" => [
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "ExpireDateTime", type: {:nullable, :datetime}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CovenantDiplomacyConfirmReinforcementInvitationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmAccountPresentSummaryInfo" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "AppliedRealmAccountGuid", type: {:uint, 8}},
    %{name: "MainPlayerName", type: :string},
    %{name: "MainPlayerLevel", type: {:int, 4}},
    %{name: "MainPlayerClasse", type: {:enum, "ClasseType"}},
    %{name: "PresentCode", type: :string},
    %{name: "Password", type: :string},
    %{name: "ExpiredDateTime", type: :datetime}
  ],

"MissionRewardInfo" => [
    %{name: "MissionCuid", type: :cuid},
    %{name: "MissionStep", type: {:int, 4}},
    %{name: "AcquiredDateTime", type: {:nullable, :datetime}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}}
  ],

"CovenantRubyShopMerchandiseInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ShopCuid", type: :cuid},
    %{name: "MerchandiseInfos", type: {:list, {:struct, "CovenantRubyShopMerchandiseInfo"}}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "CovenantRubyShopInfo"}}}
  ],

"PlayerMarketTransactionDelayedSellReregisterProcessNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SessionKeyAuthenticate" => [
    %{name: "SessionKey", type: :unknown},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"BoundAndErodedInheritanceBatchCraftRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "RewardCuid", type: :cuid},
    %{name: "MaterialGroupOrderList", type: {:list, :cuid}}
  ],

"BattalionMemberConnectionStatusSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "BattalionMemberInfoSynchronizeNotify"}},
    %{name: "ConnectionStatus", type: {:enum, "ConnectionStatusType"}}
  ],

"CheatChangeCovenantLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantRubyShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ShopCuid", type: :cuid},
    %{name: "ShopInfo", type: {:nullable, {:struct, "CovenantRubyShopInfo"}}}
  ],

"FootCustomizeInfo" => [
    %{name: "FootBase", type: :vector},
    %{name: "BigToe", type: {:nullable, {:struct, "ToeCustomizeInfo"}}}
  ],

"StrongholdWorldMapOccupationNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}}
  ],

"DiplomacyChatRoomInviteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"CheatTutorialResetAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BulkCharacterMoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CharacterMoveInfos", type: {:list, {:struct, "CharacterMoveInfo"}}}
  ],

"ChatOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatOptionInfo", type: {:nullable, {:struct, "ChatOptionInfo"}}}
  ],

"CheatChangeSeasonPassLevelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SeasonPassLevel", type: {:int, 4}}
  ],

"CheatCraftCovenantLivingTotemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LivingTotemCuid", type: :cuid},
    %{name: "LivingTotemTier", type: {:int, 4}}
  ],

"SkillAutoUseDeregisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RootSkillCuid", type: :cuid}
  ],

"OrganizationStatsInfo" => [
    %{name: "Stats", type: {:map, {:struct, "OrganizationStatPrimaryKey"}, {:int, 4}}}
  ],

"DyingSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "DyingExpireTime", type: {:nullable, :datetime}}
  ],

"CovenantResearchResetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantResearchInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCovenantResearchInfo"}}}
  ],

"StrongholdBattleUpdateSiegeWeaponTargetResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "SlotIndex", type: {:int, 2}}
  ],

"PowerSavingModeStartResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "LastPlayerInteractionDateTime", type: :datetime}
  ],

"CustomizationItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "PlayerCustomizeInfo", type: {:nullable, {:struct, "PlayerCustomizeInfo"}}},
    %{name: "Gender", type: {:enum, "GenderType"}}
  ],

"GuiseEquipFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CollectionSlotItemRegisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CollectionCuid", type: :cuid},
    %{name: "CollectionSlotItemCuid", type: :cuid},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"SkillCharacterTargetingInfo" => [
    %{name: "__base__", type: {:struct, "SkillTargetingInfo"}},
    %{name: "CharacterGuid", type: {:uint, 8}}
  ],

"CheatOccupyOccupiableNpcResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatTeleportRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "Radius_cm", type: :float}
  ],

"CheatMonsterBookSetAnalysisInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "AnalysisColorCuid", type: :cuid},
    %{name: "AnalysisRewardStatCuid", type: :cuid}
  ],

"CheatTeleportToPlayerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :string}
  ],

"ZlibCompressHandshakeResult" => [
    %{name: "__base__", type: {:struct, "HandshakeResult"}},
    %{name: "TozNetwork.Handshake.Compressor.ZlibCompressHandshakeResult", type: :unknown}
  ],

"GearSlotPresetModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
    %{name: "UnequipGearSlots", type: {:list, {:enum, "GearSlotType"}}}
  ],

"CovenantCampCovenantShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "ShopInfo"}}}
  ],

"BlockedChatEntityInfo" => [
    %{name: "ChatEntityGuid", type: {:uint, 8}},
    %{name: "OriginRealmCuid", type: :cuid},
    %{name: "ChatEntityPlayerGuid", type: {:uint, 8}},
    %{name: "ChatEntityPlayerName", type: :string}
  ],

"SessionKeyAuthenticateComplete" => [
    %{name: "Success", type: :bool},
    %{name: "RecentlyProcessedTozMessageIndex", type: {:int, 4}}
  ],

"MarketPriceInfo" => [
    %{name: "ItemCuid", type: :cuid},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "GearEnhancementGrade", type: {:nullable, {:int, 2}}},
    %{name: "LowestUnitSalesPriceForYesterday_pe2", type: {:uint, 8}},
    %{name: "LastUnitSalesPrice_pe2", type: {:uint, 8}},
    %{name: "LowestUnitListPrice_pe2", type: {:uint, 8}}
  ],

"CheatChangeServerTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RealmIntegrationHidePopupRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"StrongholdBattleBuildingHealthPointsChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "BuildingKind", type: {:enum, "BuildingKindType"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "HealthPoints", type: {:uint, 8}}
  ],

"CheatRemoveAllWorldMapMarkerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "RemovedGuids", type: {:list, {:uint, 8}}},
    %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "ServerDrivenPlayOptionInfo"}}}
  ],

"QuestMissionProgressInfo" => [
    %{name: "QuestMissionVuid", type: {:struct, "Vuid"}},
    %{name: "ProgressCount", type: {:uint, 8}}
  ],

"CharacterCastAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "CastAffectSourceInfo"}},
    %{name: "ContributorRecordInfo", type: {:nullable, {:struct, "CharacterRecordInfo"}}}
  ],

"AnniversaryAchievementPointInfo" => [
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryAchievementCycleBeginDateTime", type: :datetime},
    %{name: "AnniversaryAchievementCycleEndDateTime", type: :datetime},
    %{name: "RewardedGoalPoints", type: :unknown}
  ],

"MountStationaryCallingRequest" => [
    %{name: "__base__", type: {:struct, "MountCallingRequest"}},
    %{name: "PlayerFacingDirectionYaw_rad", type: :float}
  ],

"MonsterBookNodeAcquireResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AcquiredStateInfo", type: {:nullable, {:struct, "MonsterBookNodeAcquiredStateInfo"}}},
    %{name: "ConsumeInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}},
    %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "MonsterBookCollectionInfo"}}},
    %{name: "AnalysisStatChangeInfos", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
  ],

"PlayerSkillSlotInfo" => [
    %{name: "SkillCuid", type: :cuid}
  ],

"FollowerCollectionTopExperienceInfo" => [
    %{name: "FollowerItemCuid", type: :cuid},
    %{name: "OwnerPlayerNameOrNull", type: :string},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"RealmAccountPresentApplicationCheckInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BattalionBanishMemberRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"SkillEndNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SkillSiid", type: {:int, 4}},
    %{name: "IsAllStagesComplete", type: :bool}
  ],

"StrongholdSummonWaveDefenseDefenseTargetSpawnNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "DefenseTargetGuid", type: {:uint, 8}}
  ],

"CovenantCreateCovenantMemberRoleNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberRoleInfo", type: {:nullable, :message}}
  ],

"BattalionMemberCovenantMemberRoleSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "BattalionMemberInfoSynchronizeNotify"}},
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}}
  ],

"PartyOptionUpdateFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatForceSynchronizeBuildingWorkRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantItemUseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ParameterInfo", type: {:nullable, :message}}
  ],

"TutorialBeginFirstOneFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ResultCodesByTutorialCuid", type: {:map, :cuid, {:enum, "ResultCodeType"}}}
  ],

"RealmIntegrationHidePopupResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatExpeditionRepeatScheduleOpenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"GuiseUnequipFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatResetContentsUnlockResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "UnusedContentsUnlockKinds", type: :unknown}
  ],

"FollowerSquadResetRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatMonsterBookSetAcquisitionProgressRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "NpcCuid", type: :cuid},
    %{name: "KillCount", type: {:int, 4}}
  ],

"PlayerItemUseRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "ParameterInfo", type: {:nullable, :message}}
  ],

"CovenantCurrencyInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"SkillAffectInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"CovenantAppointCovenantMemberRoleResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "CovenantMemberRoleName", type: :string}
  ],

"CashShopDescriptionTextInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "Text", type: :string}
  ],

"CheatFavorBossChaseGaugeChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "BossChaseGauge", type: {:int, 4}}
  ],

"BuffReflectNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}},
    %{name: "BuffCuid", type: :cuid},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "HealthPointsDelta", type: {:int, 4}}
  ],

"StrongholdBattleCovenantBattalionConfirmConveneFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SpellstoneAdditionalHealthAndManaStatsInfo" => [
    %{name: "HealthPointsAffectIncreaseAmount", type: :float},
    %{name: "HealthPointsAffectIncreaseRatio", type: :float},
    %{name: "ManaPointsAffectIncreaseAmount", type: :float},
    %{name: "ManaPointsAffectIncreaseRatio", type: :float}
  ],

"BuffAffectInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"CheatSetLocalServerPushRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsEnabled", type: :bool}
  ],

"CovenantLivingTotemCraftResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"PvpRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CombatOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CombatOptionInfo", type: {:nullable, {:struct, "CombatOptionInfo"}}}
  ],

"CovenantLeaderDividendInfo" => [
    %{name: "__base__", type: {:struct, "DividendInfo"}}
  ],

"CheatGetCrossRealmSeasonMaxEnterablePlayerCapacityResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MaxEnterablePlayerCapacity", type: {:int, 4}}
  ],

"PlayerResurrectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SelectedItemCuid", type: :cuid}
  ],

"AnniversaryAchievementPrivateChannelOpenRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"DeathPenaltyRecoverRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CurrencyCuid", type: :cuid},
    %{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"CheatCovenantRealmTransferBlockResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantSupportSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantSupportInfos", type: {:nullable, {:struct, "PlayerCovenantSupportInfo"}}}
  ],

"QuickSlotModifyFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatOpenAllFogInDistrictRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DistrictCuid", type: :cuid}
  ],

"RealmIntegrationRealmAccountInfo" => [
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "PreviousRealmCuid", type: :cuid},
    %{name: "PlayerInfos", type: {:list, {:struct, "RealmIntegrationPlayerInfo"}}},
    %{name: "RealmTransferDateTime", type: :datetime},
    %{name: "DeleteDateTime", type: {:nullable, :datetime}}
  ],

"MarketSellCancelRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}}
  ],

"NavMeshTileCheckResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CheckedTiles", type: {:list, {:struct, "NavMeshTileInfo"}}}
  ],

"PartyRecommendInviteeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}},
    %{name: "PlayerName", type: :string}
  ],

"CachedMessages" => [
    %{name: "Container", type: :unknown}
  ],

"GearEnhancementSuccessNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerName", type: :string},
    %{name: "GearInfo", type: {:nullable, {:struct, "GearInfo"}}},
    %{name: "DisplaySystemMessage", type: :bool},
    %{name: "DisplayChatMessage", type: :bool}
  ],

"CheatCollectionUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SelectedMountItemCuid", type: :cuid},
    %{name: "ActivatedCollectionCategoryCuids", type: :unknown},
    %{name: "CollectionProgressInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzCollectionProgressInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"SharedTargetCharacterInfo" => [
    %{name: "Cuid", type: :cuid},
    %{name: "Entity", type: {:enum, "EntityType"}},
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CovenantVuid", type: {:struct, "Vuid"}}
  ],

"BattalionBattalionWarpFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"VeilAffectSourceInfo" => [
    %{name: "__base__", type: {:struct, "AffectSourceInfo"}}
  ],

"RealmCovenantId" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantVuid", type: {:struct, "Vuid"}}
  ],

"StrongholdBuildingUpgradeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "TargetLevel", type: {:int, 4}},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"WeeklyContributionPointsDividendResultInfo" => [
    %{name: "__base__", type: {:struct, "DividendResultInfo"}},
    %{name: "MinAmount", type: {:uint, 8}},
    %{name: "MaxAmount", type: {:uint, 8}}
  ],

"TutorialCompleteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TutorialCuid", type: :cuid}
  ],

"GearEnchantTransferRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SourceItemGuid", type: {:uint, 8}},
    %{name: "TargetItemGuid", type: {:uint, 8}}
  ],

"CheatAcquireAllFollowersResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatAcquireCovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleCovenantBattalionStrategicObjectiveTargetInfoChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrategicObjectiveTargetGuid", type: {:uint, 8}},
    %{name: "StrategicObjectiveTargetInfo", type: {:nullable, {:struct, "StrategicObjectiveTargetInfo"}}}
  ],

"CheatChangeBuildingHealthPointsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantTradeGoodsBuyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsGuid", type: {:uint, 8}},
    %{name: "ItemCuid", type: :cuid}
  ],

"CovenantDiplomacyConfirmReinforcementInvitationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "IsApproved", type: :bool}
  ],

"MailSendRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ToPlayerName", type: :string},
    %{name: "ToCovenantName", type: :string},
    %{name: "Title", type: :string},
    %{name: "Body", type: :string}
  ],

"CheatNpcCombatLogResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"QuickSlotUpdateInfo" => [
    %{name: "AddedQuickSlotInfos", type: {:map, {:enum, "QuickSlotIndexType"}, {:struct, "TSharedPtr<FTzQuickSlotInfo"}}},
    %{name: "ModifiedQuickSlotInfos", type: {:map, {:enum, "QuickSlotIndexType"}, {:struct, "TSharedPtr<FTzQuickSlotInfo"}}},
    %{name: "RemovedQuickSlotIndices", type: {:list, {:enum, "QuickSlotIndexType"}}}
  ],

"PlayerCovenantInfo" => [
    %{name: "InvitedCovenantGuidAndInvitedDateTimes", type: {:map, {:uint, 8}, :datetime}},
    %{name: "JoinAppliedCovenantGuids", type: :unknown},
    %{name: "CovenantReturnHavenCuid", type: :cuid}
  ],

"FindRegionCrossablePathResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Destination_cm", type: :vector},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "CrossRegionUseReturnPathResult", type: {:nullable, {:struct, "CrossRegionPathResultInfo"}}},
    %{name: "CrossRegionUseIntraRegionWarpPathResult", type: {:nullable, {:struct, "CrossRegionPathResultInfo"}}},
    %{name: "CrossRegionPathResult", type: {:nullable, {:struct, "CrossRegionPathResultInfo"}}},
    %{name: "CrossRegionUseWarpItemPathResult", type: {:nullable, {:struct, "CrossRegionPathResultInfo"}}}
  ],

"ChatRecordsMetaData" => [
    %{name: "RecordsBeginIndex", type: {:uint, 8}},
    %{name: "RecordsEndIndex", type: {:uint, 8}},
    %{name: "LastViewedRecordIndex", type: {:uint, 8}}
  ],

"CheatMonsterBookResetCategoryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuid", type: :cuid}
  ],

"BattalionJoinApplicationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionMemberSummaryInfo", type: {:nullable, {:struct, "BattalionMemberSummaryInfo"}}}
  ],

"StrongholdSummonWaveDefenseEndNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid}
  ],

"CheatAcquireAllCovenantResearchResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ServerDrivenPlayHuntingStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}},
    %{name: "HuntingStartTime", type: :datetime},
    %{name: "InitialHealthPointsPotionCount", type: {:uint, 8}}
  ],

"StrongholdBattleSummonOutpostStartNotify" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackPhaseStartNotify"}}
  ],

"ArquiruneActivateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"PlayerMarketTransactionSellCancelProcessNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"StrongholdGeneralShopInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "ShopInfo", type: {:nullable, {:struct, "ShopInfo"}}}
  ],

"CheatChangeCampaignConditionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ConditionCuid", type: :cuid},
    %{name: "ProgressCount", type: {:uint, 8}}
  ],

"CheatChangeBulkCharacterMoveNotifyIntervalRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Interval_msec", type: {:uint, 8}}
  ],

"WorldMapMarkerRemoveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"ErGameServerAuthenticateInfo" => [
    %{name: "__base__", type: {:struct, "ErServerAuthenticateInfo"}},
    %{name: "AuthenticateKey", type: {:int, 4}}
  ],

"CovenantMemberRoleInfo" => [
    %{name: "CovenantMemberRoleKind", type: {:enum, "CovenantMemberRoleKindType"}},
    %{name: "Name", type: :string},
    %{name: "CovenantPermissionsInfo", type: {:nullable, {:struct, "CovenantPermissionsInfo"}}},
    %{name: "CreateDateTime", type: :datetime}
  ],

"CheatCreateItemResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"CovenantLeaveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ExperiencePointsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExperiencePoints", type: {:uint, 8}}
  ],

"ControlOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "GroundSkillControlKind", type: {:enum, "GroundSkillControlKindType"}}
  ],

"ItemLockSwitchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuid", type: {:uint, 8}},
    %{name: "IsInRealmAccountWarehouse", type: :bool},
    %{name: "IsLocked", type: :bool}
  ],

"DeathPenaltyRecordInfoRemoveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DeathPenaltyRecordGuids", type: {:list, {:uint, 8}}}
  ],

"CheatSetTransmutationRecordResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PeriodCuid", type: :cuid},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ItemGradeType"}},
    %{name: "Count", type: {:uint, 8}}
  ],

"MailBuildingCraftLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailBuildingWorkLayoutInfo"}},
    %{name: "CraftItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"PartyInviteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}}
  ],

"DestroyerInfosInitializeDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "DestroyerInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzDestroyerInfo"}}}
  ],

"WarpCancelFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ResultCode", type: {:enum, "ResultCodeType"}}
  ],

"CheatToggleShowQuestDebugRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MarketPriceQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "ItemCuid", type: :cuid},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "GearEnhancementGrade", type: {:nullable, {:int, 2}}}
  ],

"RankingQueryByNameResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RankingTopicCuid", type: :cuid},
    %{name: "DateTime", type: {:nullable, :datetime}},
    %{name: "TargetRankingInfo", type: {:nullable, :message}},
    %{name: "SelfRankingInfo", type: {:nullable, :message}}
  ],

"SkillAutoUseRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RootSkillCuid", type: :cuid}
  ],

"PlayerStanceInfo" => [
    %{name: "AcquiredStances", type: {:list, {:enum, "StanceType"}}},
    %{name: "InstalledStance", type: {:enum, "StanceType"}},
    %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, :datetime}},
    %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
  ],

"CheatInstanceEventRunActionsResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantBanishMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "UpdatePlayerLastCovenantWithdrawalDateTime", type: :bool}
  ],

"StrongholdBattleAttackEndDateTimeChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AttackGroupDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "AttackEndDateTime", type: :datetime},
    %{name: "AttackGroupLivingTotemHealthPoints", type: {:uint, 8}},
    %{name: "IsAffectedFromLivingTotemSkill", type: :bool}
  ],

"CovenantBattalionExpeditionInfo" => [
    %{name: "ExpeditionGuid", type: {:uint, 8}},
    %{name: "ExpeditionCuid", type: :cuid},
    %{name: "SealedSiteCuid", type: :cuid},
    %{name: "ExpeditionJoinDateTime", type: {:nullable, :datetime}},
    %{name: "AnotherBattalionGuids", type: {:list, {:uint, 8}}},
    %{name: "ExpeditionPhase", type: {:enum, "BattalionExpeditionPhaseType"}},
    %{name: "ExpeditionStartLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "ExpeditionStandByNpcGuid", type: {:uint, 8}},
    %{name: "ExpeditionLivingTotemGuid", type: {:uint, 8}}
  ],

"CrossRealmCovenantDiplomacyApplyAllianceRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}}
  ],

"DeathRecordInfo" => [
    %{name: "AffectSourceInfo", type: {:nullable, :message}},
    %{name: "LostExperiencePointsPercentage", type: {:int, 4}},
    %{name: "LostExperiencePoints", type: {:uint, 8}},
    %{name: "DeathPenaltyExemptKind", type: {:enum, "DeathPenaltyExemptKindType"}}
  ],

"SkillAffectTargetMoveAffectInfo" => [
    %{name: "__base__", type: {:struct, "SkillMoveAffectInfo"}},
    %{name: "AffectTargetMoveAffectKind", type: {:enum, "AffectTargetMoveAffectKindType"}}
  ],

"SeasonPassLevelRewardParameter" => [
    %{name: "__base__", type: {:struct, "AcquireSourceAdditionalParameter"}},
    %{name: "RewardedLevels", type: {:map, {:enum, "SeasonPassRewardKindType"}, {:struct, "TSet<int"}}}
  ],

"CheatUpdatePlayerMissionCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CampaignStartOptionInfo" => [
    %{name: "IsAllowVolunteerJoinApply", type: :bool},
    %{name: "IsVolunteerJoinApplicationAutomaticApproval", type: :unknown},
    %{name: "IsNotExposeToBattalionList", type: :unknown},
    %{name: "IsBattalionAutoInviteCovenantMembers", type: :unknown}
  ],

"PaidAttendanceHideNotificationMarkerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PaidAttendanceCuid", type: :cuid}
  ],

"LZ4CompressHandshakeResult" => [
    %{name: "__base__", type: :unknown},
    %{name: "TozLZ4.Handshake.LZ4CompressHandshakeResult", type: :unknown}
  ],

"MonsterBookInfoUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuidToNodeStateInfos", type: {:list, {:struct, "MonsterBookNodeStateInfo"}}},
    %{name: "CategoryCuidToCollectionInfo", type: {:map, :cuid, {:struct, "TSharedPtr<FTzMonsterBookCollectionInfo"}}}
  ],

"SpawnLayerAlreadyActivatedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsPermanentSpawnLayer", type: :bool},
    %{name: "SpawnLayerCuids", type: {:list, :cuid}}
  ],

"StrongholdBuildingConstructRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "BuildingCuid", type: :cuid},
    %{name: "IsCompleteImmediately", type: :bool}
  ],

"CovenantGiftReceiveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ReceiveGiftGuids", type: {:list, {:uint, 8}}}
  ],

"StrongholdBattleLeaveNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"CovenantItemUseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuid", type: {:uint, 8}}
  ],

"ThreatListClearNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantConfirmInvitationFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "LastCovenantWithdrawalDateTime", type: {:nullable, :datetime}}
  ],

"StrongholdBattleInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "StrongholdBattleSummaryInfos", type: {:map, :cuid, {:struct, "TSharedPtr<FTzStrongholdBattleSummaryInfo"}}}
  ],

"BattalionMemberLocationInfoSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "BattalionMemberInfoSynchronizeNotify"}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}}
  ],

"CovenantAddInvitationsNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantInvitationInfos", type: {:list, {:struct, "CovenantInvitationInfo"}}}
  ],

"CheatCovenantCreateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BuildingWorkSummaryInfo" => [
    %{name: "WorkplaceCuid", type: :cuid},
    %{name: "BuildingWorkKind", type: {:enum, "BuildingWorkKindType"}},
    %{name: "IsCovenantRecommended", type: :bool}
  ],

"TerritoryErosionItemConfigurationModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "TerritoryErosionItemConfigurationInfo", type: {:nullable, {:struct, "TerritoryErosionItemConfigurationInfo"}}}
  ],

"ServerDrivenPlayStateInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"CovenantDonationRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}},
    %{name: "DonateEvenIfHavenInventoryIsFull", type: :bool}
  ],

"CovenantDiplomacyReinforcementInvitationRejectNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string},
    %{name: "IsCallByExpired", type: :bool}
  ],

"ErosionAbyssCocoonSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "AbyssCocoonGuid", type: {:uint, 8}}
  ],

"StrongholdBattleEndRewardNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsAnyRewardSentByMail", type: :bool},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "SpiritualBondPower", type: {:uint, 8}}
  ],

"PartyQueryMemberCandidateListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PartyMemberCandidateKind", type: {:enum, "PartyMemberCandidateKindType"}}
  ],

"InGameNotificationInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "InGameNotificationCategory", type: {:enum, "InGameNotificationCategoryType"}},
    %{name: "AdditionalCuidParams", type: {:list, :cuid}},
    %{name: "AdditionalGuidParam", type: {:uint, 8}},
    %{name: "NotificationExpireDateTime", type: {:nullable, :datetime}}
  ],

"CheatClearAllStanceAndSkillRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"BattalionCheckReadyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ServerDrivenPlayAutoResupplyUsedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AutoResupplyUsedCount", type: {:int, 4}}
  ],

"CheatActivateArquiruneResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"CovenantCampaignInfo" => [
    %{name: "ActiveCampaignProgressInfos", type: {:list, :cuid}},
    %{name: "UpdateDateTime", type: :datetime},
    %{name: "CovenantCampaignProgressInfo", type: {:nullable, :message}},
    %{name: "CovenantCampaignTicketCount", type: {:int, 4}}
  ],

"DisplayRealmTransferQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PlayerCovenantSupportInfo" => [
    %{name: "HasCovenantSupportableFollower", type: :bool},
    %{name: "CovenantSupportedCount", type: {:nullable, {:struct, "LimitedCountingInfo"}}}
  ],

"UpdateLastViewedChatRecordsIndexResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdSummonWaveDefenseNpcSummonWaveProgressSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "CurrentWaveNpcKnockOutProgress", type: {:map, :cuid, {:int, 4}}}
  ],

"HonorableDieRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatRealmIntegrationPreprocessingResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"SkillUseOptionAddNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillUseOptionInfo", type: {:nullable, {:struct, "SkillUseOptionInfo"}}}
  ],

"BattalionBattalionWarpNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WarpLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "ExpireDateTime", type: :datetime}
  ],

"InfoAuthenticate" => [
    %{name: "AuthenticateInfo", type: {:nullable, :message}}
  ],

"MailServerDrivenPlayLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "HuntingSiteCuid", type: :cuid},
    %{name: "PlayTime_sec", type: {:int, 4}},
    %{name: "GainedExperiencePoints", type: {:uint, 8}},
    %{name: "GainedSpiritualBondPower", type: {:uint, 8}},
    %{name: "GainedCurrencies", type: {:map, :cuid, {:uint, 8}}},
    %{name: "GainedItemInfos", type: {:list, {:struct, "GainedItemInfo"}}}
  ],

"CovenantCampaignProgressInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "CampaignCuid", type: :cuid},
    %{name: "CampaignStageCuid", type: :cuid},
    %{name: "FieldUid", type: {:struct, "FieldUid"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "RelatedHavenCuid", type: :cuid}
  ],

"CheatStrongholdApplyTaxResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"BattalionOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "PlayerBattalionOptionInfo"}}}
  ],

"TutorialBeginFirstOneRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "TutorialCuids", type: {:list, :cuid}}
  ],

"PreemptiveAttackTargetSelectNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EntityGuid", type: {:uint, 8}}
  ],

"CovenantSynchronizeMemberNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"StackableItemQuickSlotDetailInfo" => [
    %{name: "__base__", type: {:struct, "ItemQuickSlotDetailInfo"}}
  ],

"RealmStateInfo" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "Ip", type: :string},
    %{name: "ServerState", type: {:enum, "ServerStateType"}},
    %{name: "ServerTagKind", type: {:enum, "ServerTagKindType"}}
  ],

"ArquiruneActivateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"CheatAddOnScreenDebugMessageNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Message", type: :string},
    %{name: "Key", type: {:int, 4}},
    %{name: "Duration_sec", type: {:int, 4}},
    %{name: "Color", type: {:int, 4}},
    %{name: "NewerOnTop", type: :bool}
  ],

"CovenantRemoveInvitationNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"BattalionTargetLocationSetNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "TargetLocationInfo", type: {:nullable, {:struct, "TargetLocationInfo"}}}
  ],

"ShopClosedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopKind", type: {:enum, "ShopKindType"}},
    %{name: "Reason", type: {:enum, "ShopClosedReasonType"}}
  ],

"QuestTeleportToQuestWayPointResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"TransmutationCouponItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "ItemGrade", type: {:enum, "ItemGradeType"}}
  ],

"CheatUpgradeBuildingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SpawnerCuid", type: :cuid}
  ],

"CheatFillHealthPointsAndManaPointsToFullRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatEnchantItemRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}},
    %{name: "GearSlot", type: {:enum, "GearSlotType"}},
    %{name: "CostItemCuid", type: :cuid},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}}
  ],

"ControlOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ControlOptionInfo", type: {:nullable, {:struct, "ControlOptionInfo"}}}
  ],

"MailBuildingNonCraftLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailBuildingWorkLayoutInfo"}},
    %{name: "PreviousLevel", type: {:int, 4}},
    %{name: "CurrentLevel", type: {:int, 4}}
  ],

"PotionAutoUsageOptionInfo" => [
    %{name: "IsAutoUse", type: :bool},
    %{name: "MaxPointsRatioToAutoUse_pe2", type: {:struct, "unsigned_char"}},
    %{name: "MaxPointsRatioToAutoUseInPvp_pe2", type: {:struct, "unsigned_char"}}
  ],

"BasicAchievementPrivateChannelKeepaliveRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatShowLocationAndFacingDirectionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PlayerDeleteConditionCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"MountItemChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdSummaryBuildingInfoNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "BuildingSpawnerCuid", type: :cuid},
    %{name: "BuildingSubscriptionSummaryInfo", type: {:nullable, {:struct, "BuildingSubscriptionSummaryInfo"}}}
  ],

"ServerDrivenPlayWaitingForResupplyStateInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}}
  ],

"CharacterStatsInfo" => [
    %{name: nil, type: :empty_struct}
  ],

"ItemAcquireSourceInfo" => [
    %{name: "ItemAcquireMethod", type: {:enum, "ItemAcquireMethodType"}},
    %{name: "SourceCuid", type: :cuid},
    %{name: "AcquireSourceAdditionalParameter", type: {:nullable, :message}}
  ],

"CovenantDeleteCovenantMemberRoleRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantMemberRoleName", type: :string}
  ],

"ZoneUpdateNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ZoneInfo", type: {:nullable, {:struct, "ZoneInfo"}}}
  ],

"CheatSpawnDoodadResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantBattalionExpeditionJoinRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpeditionJoinRequestInfo", type: {:nullable, {:struct, "ExpeditionJoinRequestInfo"}}}
  ],

"CheatUpdateCovenantMissionCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CampaignConditionProgressInfo" => [
    %{name: "CampaignConditionCuid", type: :cuid},
    %{name: "ProgressCount", type: {:uint, 8}},
    %{name: "StartDateTime", type: {:nullable, :datetime}},
    %{name: "EndDateTime", type: {:nullable, :datetime}}
  ],

"CheatAccomplishSeasonPassAchievementResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"InstanceFieldTimeLimitExpireNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ExpireTargetTime", type: :datetime}
  ],

"CheatSpawnFromSpawnerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantUpdateJoinKindNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantJoinKind", type: {:enum, "CovenantJoinKindType"}}
  ],

"InventoryExpandRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UserInventoryKind", type: {:enum, "UserInventoryKindType"}},
    %{name: "SlotCount", type: {:int, 4}}
  ],

"MarketSellRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MarketKind", type: {:enum, "MarketKindType"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "ItemGuidSelector"}}},
    %{name: "SellCurrencyCuid", type: :cuid},
    %{name: "SellCurrencyAmount", type: {:uint, 8}},
    %{name: "RegistrationFeeCurrencyCuid", type: :cuid},
    %{name: "RegistrationFeeCurrencyAmount", type: {:uint, 8}}
  ],

"ErServerAuthenticateInfo" => [
    %{name: "__base__", type: :unknown},
    %{name: "LocalAreaNetworkAddress", type: :string}
  ],

"CheatStrongholdBattleAttackDeclareRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "AttackDeclareHavenCuid", type: :cuid},
    %{name: "DiscardStrongholdCuidIfMax", type: :cuid}
  ],

"TozMessage" => [
    %{name: "TozNetwork.Protocol.TozMessage", type: :unknown}
  ],

"CovenantCreateResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantInfo", type: {:nullable, {:struct, "CovenantInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "LastCovenantWithdrawalDateTime", type: {:nullable, :datetime}}
  ],

"CovenantRubyShopMerchandiseInfo" => [
    %{name: "MerchandiseCuid", type: :cuid},
    %{name: "DiscountRate", type: {:int, 4}},
    %{name: "Price", type: {:int, 4}}
  ],

"ShopCashMerchandiseRestoreResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RestorePaymentInfo", type: {:nullable, {:struct, "ToyMerchandisePaymentInfo"}}},
    %{name: "MerchandiseBuyResultInfo", type: {:nullable, {:struct, "MerchandiseBuyResultInfo"}}}
  ],

"RealmTransferRealmInfoListResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "RealmInfos", type: {:list, nil}},
    %{name: "RealmAccountInfos", type: {:list, {:struct, "UniverseAccountRealmAccountInfo"}}},
    %{name: "AppliedRealmAccountGuids", type: {:list, {:uint, 8}}}
  ],

"TalkCompleteCheckRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "TalkCuid", type: :cuid}
  ],

"CheatSpawnNpcResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdBattleAttackLadderCarSiegeWeaponSlotInfo" => [
    %{name: "__base__", type: {:struct, "StrongholdBattleAttackSiegeWeaponSlotInfo"}},
    %{name: "LadderCarPillarNpcGuids", type: {:list, {:uint, 8}}}
  ],

"CheatChangeStrongholdAllBuildingLevelResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatClearSeasonPassAchievementsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"ReturnItemUseParameterInfo" => [
    %{name: "__base__", type: {:struct, "ItemUseParameterInfo"}},
    %{name: "CovenantReturnHavenCuid", type: :cuid}
  ],

"CheatAnniversaryAchievementAccomplishResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"StrongholdTaxInfo" => [
    %{name: "TaxInfo", type: {:nullable, {:struct, "TaxInfo"}}},
    %{name: "ModifierPlayerName", type: :string}
  ],

"CheatChangeFocusTargetManaPointsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ManaPoints", type: {:uint, 8}}
  ],

"CheatTerritoryContaminationChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"UniverseInfo" => [
    %{name: "Universe", type: {:enum, "UniverseType"}},
    %{name: "UniverseName", type: :string}
  ],

"CovenantCampChangeFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CovenantCampCuid", type: :cuid}
  ],

"RealmAccountWarehouseAutoStoreSettingsInfo" => [
    %{name: "Settings", type: {:map, :cuid, {:enum, "ItemGradeType"}}}
  ],

"NpcOccupationScoreCovenantViewInfo" => [
    %{name: "__base__", type: {:struct, "NpcOccupationScoreCovenantInfo"}},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
  ],

"CheatTestGearEnhancementRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GearCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}}
  ],

"CovenantCampOccupancyInfo" => [
    %{name: "__base__", type: {:struct, "HavenOccupancyInfo"}},
    %{name: "CovenantCampChangeCooldownExpireDateTime", type: :datetime}
  ],

"DisplayOptionInfo" => [
    %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
    %{name: "IsRelatedTerritoryVisibleInWorldMap", type: :bool},
    %{name: "IsAllianceCovenantVisibleInMiniMap", type: :unknown},
    %{name: "ItemAcquireNotifyAnonymityOption", type: :unknown},
    %{name: "NameTagHealthBarDisplayOptionInfo", type: {:nullable, {:struct, "NameTagHealthBarDisplayOptionInfo"}}},
    %{name: "IsOccupiedStrongholdVisibleInChat", type: :unknown},
    %{name: "IsLivingTotemIconEmphasized", type: :unknown}
  ],

"DiplomacyChatRoomKickCovenantsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "ChatRoomGuid", type: {:uint, 8}},
    %{name: "CovenantGuids", type: {:list, {:uint, 8}}}
  ],

"WorldMapMarkerInstallRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
    %{name: "Location_cm", type: :vector},
    %{name: "SectorCuid", type: :cuid}
  ],

"PlayerRealmTransferCheckInfo" => [
    %{name: "Name", type: :string},
    %{name: "IsInCovenant", type: :bool},
    %{name: "IsMarketCheckNeeded", type: :unknown},
    %{name: "HasReceivableAttachmentsMail", type: :unknown}
  ],

"CheatResurrectAllFollowerRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerName", type: :string}
  ],

"FindRegionCrossablePathRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Location_cm", type: :vector},
    %{name: "LocationRegionCuid", type: :cuid},
    %{name: "Destination_cm", type: :vector},
    %{name: "DestinationRegionCuid", type: :cuid},
    %{name: "SufficientlyCloseDistance_cm", type: :float}
  ],

"CombatOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombatOptionInfo", type: {:nullable, {:struct, "CombatOptionInfo"}}}
  ],

"RegionContentTimeRechargingItemUseResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemGuidSelector", type: {:nullable, {:struct, "ItemGuidSelector"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"HeadPieceDisplayOptionModifyRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "IsHeadPieceDisplayed", type: :bool}
  ],

"CheatEnterCovenantCampaignRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PlayerSkillUseStatisticsNxLogInfo" => [
    %{name: "ArquiruneGrade", type: {:enum, "ItemGradeType"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "SkillKind", type: {:enum, "SkillKindType"}},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ClanCuid", type: :cuid},
    %{name: "Amity", type: {:uint, 8}}
  ],

"ErosionNpcSummonWaveSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "NpcSummonWaveStartTime", type: :datetime},
    %{name: "NpcSummonWaveIndex", type: {:int, 4}}
  ],

"SkillStageFlowCancelNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "SkillSiid", type: {:int, 4}},
    %{name: "SkillStageFlowSiid", type: {:int, 4}},
    %{name: "Stage", type: {:struct, "unsigned_char"}},
    %{name: "LoopCounter", type: {:int, 4}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "IsCanceledStageAffectApplied", type: :bool}
  ],

"GatheringSiteFollowerCountNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "WorkingFollowerCount", type: {:int, 4}}
  ],

"CheatTeleportToQuestMissionLocationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"PushNotificationOptionModifyResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ModifiedPushNotificationOptionCuid", type: :cuid},
    %{name: "ModifiedPushNotificationOptionIsEnabled", type: :bool}
  ],

"PlayerInventoryInfo" => [
    %{name: "InventoryInfo", type: {:nullable, {:struct, "InventoryInfo"}}},
    %{name: "AdditionalSlotCount", type: {:int, 4}},
    %{name: "AdditionalWeightLimit", type: {:int, 4}}
  ],

"IntraRegionPathResultInfo" => [
    %{name: "RegionCuid", type: :cuid},
    %{name: "ResultCode", type: {:enum, "ResultCodeType"}},
    %{name: "ReturnItemCuid", type: :cuid},
    %{name: "CovenantReturnHavenCuid", type: :cuid},
    %{name: "StartWarpPointCuid", type: :cuid},
    %{name: "DestinationWarpPointCuid", type: :cuid},
    %{name: "NearestRoadJunctionToStartLocationId", type: {:int, 4}},
    %{name: "NearestRoadJunctionToDestinationId", type: {:int, 4}},
    %{name: "PathToNearestRoadJunctionToStartLocation", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "PathNotByRoad", type: {:list, :vector}},
    %{name: "PathNotByRoadOneShotSpecialMoveIndices", type: {:list, {:int, 4}}}
  ],

"MountDeboardedInfo" => [
    %{name: "__base__", type: {:struct, "MountStateInfo"}},
    %{name: "MountDeboardReason", type: {:enum, "MountDeboardReasonType"}},
    %{name: "IsImmediateMountDespawn", type: :bool},
    %{name: "MountDespawnLocation", type: :vector}
  ],

"ItemTransmuteResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemGrade", type: {:enum, "ItemGradeType"}},
    %{name: "ItemTransmutationResultInfos", type: {:list, {:struct, "ItemTransmutationResultInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "RecordPeriodCuidAndCount", type: {:nullable, {:struct, "CuidAndCountInfo"}}}
  ],

"MailStrongholdProtectionRestrictionNoticeLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "RestrictionAnniversaryCuid", type: :cuid},
    %{name: "RestrictionStartDateTime", type: :datetime},
    %{name: "RestrictionEndDateTime", type: :datetime}
  ],

"StackableItemInfo" => [
    %{name: "__base__", type: {:struct, "ItemInfo"}},
    %{name: "StackCount", type: {:uint, 8}}
  ],

"CheatUpsertGoodsBuyCountResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CovenantStartCampaignRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "CampaignStageCuid", type: :cuid},
    %{name: "CampaignStartOptionInfo", type: {:nullable, :message}}
  ],

"PowerSavingModeRewardInfo" => [
    %{name: "__base__", type: {:struct, "ServerDrivenPlayRewardInfo"}}
  ],

"CovenantUpdateForbiddenAetherBoxCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ForbiddenAetherBoxCount", type: {:uint, 8}}
  ],

"CheatSummonPlayerResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PlayerName", type: :string}
  ],

"BasicAchievementPrivateChannelOpenResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "PrivateChannelKeepaliveInterval_sec", type: {:int, 4}}
  ],

"CovenantRealmTransferReadyToRealmTransferRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "UseItem", type: :bool},
    %{name: "UseCurrency", type: :bool}
  ],

"BattalionJoinApplicationRejectNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionGuid", type: {:uint, 8}},
    %{name: "JoinApplicationRejectReason", type: {:enum, "JoinApplicationRejectReasonType"}}
  ],

"CheatCheckServerTimeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatAddHavenBuildingWorkProgressGaugeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "HavenCuid", type: :cuid},
    %{name: "AddGauge", type: {:uint, 8}}
  ],

"TerritoryErosionItemConfigurationQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "TerritoryErosionItemConfigurationInfo", type: {:nullable, {:struct, "TerritoryErosionItemConfigurationInfo"}}}
  ],

"ChatRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ChatKind", type: {:enum, "ChatKindType"}},
    %{name: "InfoToShare", type: :string},
    %{name: "Text", type: :string}
  ],

"CovenantQuerySummaryInfoListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuidList", type: {:list, {:uint, 8}}}
  ],

"PlayerLimitedCounterInfo" => [
    %{name: "LimitedCountingInfos", type: {:map, {:enum, "PlayerLimitedCountingKindType"}, {:struct, "TSharedPtr<FTzLimitedCountingInfo"}}}
  ],

"DiplomacyChatRoomNameChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdInfo" => [
    %{name: "__base__", type: {:struct, "HavenOccupancyInfo"}},
    %{name: "HeadquartersLevel", type: {:int, 4}},
    %{name: "FavorBranchLevel", type: {:int, 4}},
    %{name: "CurrentStrongholdTaxInfo", type: {:nullable, {:struct, "StrongholdTaxInfo"}}},
    %{name: "ReservedStrongholdTaxInfo", type: {:nullable, {:struct, "StrongholdTaxInfo"}}},
    %{name: "StrongholdProtectionInfo", type: {:nullable, {:struct, "StrongholdProtectionInfo"}}},
    %{name: "OccupyDateTime", type: :datetime},
    %{name: "StrongholdBattleAttackPhase", type: {:enum, "StrongholdBattleAttackPhaseType"}}
  ],

"CovenantTradeDealRecordQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "CovenantTradeDealRecordQueryInfo"}}},
    %{name: "GoodsDealInfo", type: {:list, {:struct, "CovenantTradeGoodsDealInfo"}}}
  ],

"CovenantSettleAccountInfo" => [
    %{name: "ResourceHistoryInfos", type: {:map, :datetime, {:struct, "TSharedPtr<FTzResourceHistoryInfo"}}}
  ],

"CheatDetachAllBuffsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CovenantSynchronizeLivingTotemInfoNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantLivingTotemInfo", type: {:nullable, :message}}
  ],

"PvpScoreRankingViewInfo" => [
    %{name: "__base__", type: {:struct, "RankingViewInfo"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "Classe", type: {:enum, "ClasseType"}},
    %{name: "Name", type: :string},
    %{name: "CovenantName", type: :string},
    %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "PvpScore", type: {:int, 4}},
    %{name: "AdditionalSourceInfo", type: {:nullable, :message}}
  ],

"CovenantOrganizationStatsSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantOrganizationStatsDetailInfo", type: {:nullable, {:struct, "CovenantOrganizationStatsDetailInfo"}}}
  ],

"FollowerDispatchAbortFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FollowerGuid", type: {:uint, 8}}
  ],

"MarketGoodsDeletedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GoodsGuids", type: :unknown}
  ],

"BattalionChangeOptionRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "BattalionOptionInfo"}}}
  ],

"CheatCovenantRubyShopResetUseResetCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ShopCuid", type: :cuid}
  ],

"BattalionLeaderChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsAccept", type: :bool},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SquadOrder", type: {:int, 4}},
    %{name: "Index", type: {:int, 4}}
  ],

"StrongholdBattleAttackSiegeWeaponSlotInfo" => [
    %{name: "SlotIndex", type: {:int, 2}},
    %{name: "SiegeWeaponItemCuid", type: :cuid},
    %{name: "SiegeWeaponGuid", type: {:uint, 8}},
    %{name: "TargetSpawnerCuid", type: :cuid}
  ],

"PvpBattleKillDeathCountInfo" => [
    %{name: "PvpBattlePlayerId", type: {:struct, "PvpBattlePlayerId"}},
    %{name: "PvpBattleCovenantId", type: {:struct, "PvpBattleCovenantId"}},
    %{name: "KillCount", type: {:int, 4}},
    %{name: "DeathCount", type: {:int, 4}}
  ],

"ServerDrivenPlayRecordsInfo" => [
    %{name: "PlayDay", type: :datetime},
    %{name: "HuntingSiteCuid", type: :cuid},
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
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}}
  ],

"CheatAcquireCovenantLeaderRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"MailMarkAsImportantResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MailGuid", type: {:uint, 8}}
  ],

"GuiseChangeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "GuiseCuid", type: :cuid}
  ],

"FieldMigrationReservedNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FieldUid", type: {:struct, "FieldUid"}},
    %{name: "TeleportInfo", type: {:nullable, {:struct, "TeleportInfo"}}},
    %{name: "GameServerConnectionInfo", type: {:nullable, {:struct, "ConnectionInfo"}}}
  ],

"CheatPlayerLocationMonitoringDeleteAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"PlayerCurrencyContainerUpdateInfo" => [
    %{name: "PointCurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PointCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
  ],

"ItemInfo" => [
    %{name: "Guid", type: {:uint, 8}},
    %{name: "Cuid", type: :cuid},
    %{name: "IsBound", type: :bool},
    %{name: "IsStorable", type: :unknown},
    %{name: "ExpireDateTime", type: {:nullable, :datetime}},
    %{name: "AcquiredDateTime", type: :datetime},
    %{name: "IsLocked", type: :unknown}
  ],

"MonsterBookAnalyzeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CategoryCuid", type: :cuid},
    %{name: "CostInfo", type: {:nullable, {:struct, "CuidAndCountInfo"}}}
  ],

"CheatDistrictBlockRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "IsBlocked", type: :bool}
  ],

"CheatCovenantCompleteCampaignResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatTutorialCompleteAllRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"RealmAccountWarehouseItemRetrieveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "RealmAccountWarehouseInventoryUpdateInfo", type: {:nullable, {:struct, "InventoryUpdateInfo"}}}
  ],

"RealmIntegrationBattleWarpRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"FollowerAcquireResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "AcquiredFollowerCuid", type: :cuid}
  ],

"StrongholdTeleportToAltarResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"CheatUnlockContentsRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ContentsUnlockKind", type: {:enum, "ContentsUnlockKindType"}}
  ],

"MailFollowerDeathLayoutInfo" => [
    %{name: "__base__", type: {:struct, "MailLayoutInfo"}},
    %{name: "FollowerGuid", type: {:uint, 8}},
    %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
    %{name: "KillerName", type: :string},
    %{name: "KillerCovenantName", type: :string},
    %{name: "KillerCovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
    %{name: "LootedRewardItemIndexWithCounts", type: {:list, {:struct, "ItemIndexWithCount"}}}
  ],

"CovenantCampChangeRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantCampCuid", type: :cuid}
  ],

"FollowerMovePathInfo" => [
    %{name: "Location", type: :vector},
    %{name: "StartLocation", type: :vector},
    %{name: "DestinationLocation", type: :vector},
    %{name: "RoadJunctionIds", type: {:list, {:int, 4}}},
    %{name: "PathToFirstRoadJunction", type: {:list, :vector}},
    %{name: "PathFromLastRoadJunctionToDestination", type: {:list, :vector}},
    %{name: "TargetJunctionNo", type: {:int, 4}}
  ],

"CheatPlayerRealmTransferBlockResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FollowerSquadUpdateRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "FollowerSquadSlots", type: {:map, {:struct, "unsigned_char"}, {:uint, 8}}}
  ],

"ShopCashMerchandiseReceiveResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ReceiveGuidList", type: {:list, {:uint, 8}}},
    %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}}
  ],

"SubscriptionCommandRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Channel", type: {:enum, "SubscriptionChannelType"}},
    %{name: "Command", type: {:enum, "SubscriptionCommandType"}},
    %{name: "Parameter", type: :cuid}
  ],

"CovenantUpdateIntroductionNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Introduction", type: :string},
    %{name: "HarmfulTextKind", type: {:enum, "HarmfulTextKindType"}},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"UniverseAccountRealmAccountInfo" => [
    %{name: "RealmCuid", type: :cuid},
    %{name: "RealmAccountGuid", type: {:uint, 8}},
    %{name: "UniverseAccountPlayerInfos", type: {:list, {:struct, "UniverseAccountPlayerInfo"}}}
  ],

"ItemCategorySelector" => [
    %{name: "__base__", type: {:struct, "MultipleItemSelector"}},
    %{name: "ItemCategory", type: {:enum, "ItemCategoryType"}},
    %{name: "ItemCount", type: {:nullable, {:uint, 8}}}
  ],

"ChatQueryEntityInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "Guid", type: {:uint, 8}}
  ],

"ItemAutoUseDeregisterResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "ItemCuid", type: :cuid}
  ],

"CheatSetExperiencePointsBlockedRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsExperiencePointsBlocked", type: :bool}
  ],

"NormalDoodadStateSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "NormalDoodadState", type: {:enum, "NormalDoodadStateType"}}
  ],

"FavoriteStatKindChangeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "StatKind", type: {:enum, "AdjustableStatKindType"}},
    %{name: "IsRegistered", type: :bool}
  ],

"FollowerItemInfo" => [
    %{name: "__base__", type: {:struct, "StackableItemInfo"}},
    %{name: "FollowerItemAdditionalInfo", type: {:nullable, {:struct, "FollowerItemAdditionalInfo"}}}
  ],

"CovenantDiplomacyJoinAllianceNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuid", type: {:uint, 8}},
    %{name: "CovenantName", type: :string}
  ],

"CheatSetCovenantWithdrawalDateTimeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"ErServerSessionInitializeInfo" => [
    %{name: "__base__", type: :unknown},
    %{name: "UtcNow", type: :datetime}
  ],

"StrongholdBattleCovenantBattalionInfo" => [
    %{name: "__base__", type: {:struct, "BattalionInfo"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "StrongholdBattleGuid", type: {:uint, 8}},
    %{name: "StrongholdBattleDeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "StrategicObjectiveInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzStrategicObjectiveInfo"}}},
    %{name: "NotJoinedMemberInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzBattalionMemberInfo"}}},
    %{name: "MemberStatisticsInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzStrongholdBattleCovenantBattalionMemberStatisticsInfo"}}}
  ],

"MountBoardingRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "IsLeftBoarding", type: :bool},
    %{name: "DriverFacingDirection", type: {:struct, "FRotator"}},
    %{name: "BoardingLocation_cm", type: :vector},
    %{name: "IsImmediateBoarding", type: :bool}
  ],

"FavorQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "FavorList", type: {:list, {:struct, "FavorInfo"}}},
    %{name: "FavorMissionList", type: {:list, {:struct, "FavorMissionInfo"}}},
    %{name: "BossChaseGauge", type: {:int, 4}},
    %{name: "TerritoryCuid", type: :cuid},
    %{name: "IsFavorBossActivated", type: :bool},
    %{name: "HasAcceptedFavorBossToday", type: :bool},
    %{name: "DailyAcceptableFavorRemainingCount", type: {:int, 4}},
    %{name: "FavorRefreshCostIndex", type: {:int, 4}}
  ],

"FollowerKillingReportInfo" => [
    %{name: "__base__", type: {:struct, "FollowerKillingInfo"}},
    %{name: "DeathReason", type: {:enum, "FollowerDeathReasonType"}},
    %{name: "KillerEntityGuid", type: {:uint, 8}},
    %{name: "KillerCovenantGuid", type: {:uint, 8}}
  ],

"MonsterBookNodeAnalysisLockSwitchRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "NodeCuid", type: :cuid},
    %{name: "IsAnalysisLocked", type: :bool}
  ],

"HandshakeResult" => [
    %{name: "Success", type: :bool}
  ],

"PlayerServerDrivenPlayInfo" => [
    %{name: "RemainingDailyDuration_sec", type: {:int, 4}},
    %{name: "ServerDrivenPlayInfo", type: {:nullable, {:struct, "ServerDrivenPlayInfo"}}}
  ],

"CheatNoticeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MessageId", type: {:int, 4}}
  ],

"StrongholdSummonWaveDefenseStartNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "StrongholdSummonWaveDefenseCuid", type: :cuid},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "StrongholdSummonWaveDefenseStartDateTime", type: :datetime}
  ],

"GearAdditionalInfo" => [
    %{name: "__base__", type: {:struct, "ItemAdditionalInfo"}},
    %{name: "GearQuality", type: {:enum, "GearQualityType"}},
    %{name: "EnhancementGrade", type: {:int, 2}},
    %{name: "IsEroded", type: :bool},
    %{name: "GearEnchantGrade", type: {:enum, "GearEnchantGradeType"}},
    %{name: "GearEnchantSlotInfos", type: {:list, {:struct, "GearEnchantSlotInfo"}}},
    %{name: "GearSubOptionInfos", type: {:list, {:struct, "GearSubOptionInfo"}}},
    %{name: "SpecialGearEnhancementUseInfoByCuid", type: {:map, :cuid, {:struct, "TSharedPtr<FTzSpecialGearEnhancementUseInfo"}}},
    %{name: "ErodedCountByEnhancementGrade", type: {:map, {:int, 2}, {:int, 4}}}
  ],

"PlayerLocationMonitoringRegisterRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "PvpRecordGuid", type: {:uint, 8}}
  ],

"MountUpdateSkillSlotInfoRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MountSkillSlotIndex", type: {:enum, "MountSkillSlotIndexType"}},
    %{name: "IsUsedForContinuousCombat", type: :bool}
  ],

"StrongholdBattleUseSiegeWeaponSlotNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid},
    %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
    %{name: "StrongholdBattleAttackSiegeWeaponSlotInfo", type: {:nullable, :message}},
    %{name: "SiegeWeaponCounts", type: {:map, :cuid, {:uint, 8}}}
  ],

"CovenantCurrencyDonationResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
    %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
    %{name: "PlayerInventoryItemAddInfo", type: {:nullable, {:struct, "ItemAddInfo"}}},
    %{name: "IsAnyRewardSentByMail", type: :bool},
    %{name: "CovenantCurrencyUpdateInfo", type: {:nullable, {:struct, "PointCurrencyContainerUpdateInfo"}}},
    %{name: "CovenantExperiencePoints", type: {:uint, 8}},
    %{name: "MultipleReward", type: {:int, 4}}
  ],

"CovenantRealmTransferCheckInfo" => [
    %{name: "CovenantTradeGoodsSalesInfos", type: {:list, {:struct, "CovenantTradeGoodsSalesInfo"}}},
    %{name: "HasRegisteredShopGoodsInCovenantShop", type: :bool},
    %{name: "HasRegisteredShopGoodsInGeneralShop", type: :unknown},
    %{name: "HasJoinedStrongholdBattle", type: :unknown},
    %{name: "HasJoinedExpedition", type: :unknown}
  ],

"CheckIsInCovenantRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmCuid", type: :cuid},
    %{name: "PlayerGuid", type: {:uint, 8}}
  ],

"AnniversaryStrongholdOccupationRecordQueryRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "AnniversaryCuid", type: :cuid},
    %{name: "AnniversaryBeginDateTime", type: :datetime},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"CovenantTradeGoodsListQueryResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "QueryInfo", type: {:nullable, {:struct, "CovenantTradeGoodsQueryInfo"}}},
    %{name: "GoodsInfos", type: {:list, {:struct, "CovenantTradeGoodsInfo"}}}
  ],

"CovenantAcquireCovenantMemberRoleRewardRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"InstanceEventCompleteNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "EventCuid", type: :cuid}
  ],

"CrossRealmCovenantDiplomacyWithdrawAllianceFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"FactionSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
    %{name: "Faction", type: {:enum, "FactionType"}}
  ],

"RealmInfoPubSubChannelInitialDataNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
    %{name: "RealmInfo", type: {:nullable, {:struct, "RealmInfo"}}}
  ],

"PubSubChannelDataNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "Channel", type: {:enum, "SubscriptionChannelType"}},
    %{name: "Parameter", type: {:nullable, {:struct, "Cuid"}}}
  ],

"CheatDeactivateArquiruneRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "ArquiruneCuid", type: :cuid}
  ],

"RealmAccountRealmTransferLimitedItemCountRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "RealmTransferKind", type: {:enum, "RealmTransferKindType"}}
  ],

"PlayerMarketSaleGoodsListRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}}
  ],

"CheatAbandonStrongholdRequest" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "StrongholdCuid", type: :cuid}
  ],

"PartyTargetLocationSetFailResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
  ],

"RewardItemIndexWithCount" => [
    %{name: "__base__", type: {:struct, "ItemIndexWithCount"}},
    %{name: "IsCovenantReward", type: :bool},
    %{name: "ItemAdditionalInfo", type: {:nullable, {:struct, "ItemCreateAdditionalInfo"}}}
  ],

"FollowerMovePathInfoResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "MovePathInfos", type: {:map, {:uint, 8}, {:struct, "TSharedPtr<FTzFollowerMovePathInfo"}}}
  ],

"CheatTestGearEnchantGradeResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
    %{name: "CostItemCuid", type: :cuid},
    %{name: "TestCount", type: {:int, 4}},
    %{name: "UpgradeCounts", type: {:map, {:enum, "GearEnchantGradeType"}, {:int, 4}}}
  ],

"PlayerCovenantWatchSynchronizeNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "CovenantGuids", type: :unknown}
  ],

"InventoryOverflowInfo" => [
    %{name: "OverflowedItemInfoList", type: {:list, {:struct, "ItemInfo"}}}
  ],

"InteractableDoodadInfo" => [
    %{name: "__base__", type: {:struct, "DoodadInfo"}},
    %{name: "RemainingInteractionCompleteCount", type: {:int, 4}}
  ],

"WorldMapPvpBattleDisplayKindUpdateNotify" => [
    %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
    %{name: "DistrictCuid", type: :cuid},
    %{name: "PvpBattleGuid", type: {:uint, 8}},
    %{name: "PvpBattleDisplayKind", type: {:enum, "PvpBattleDisplayKindType"}}
  ],

"CheatDeregisterCheatEnabledPlayerNameResponse" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "MessageId", type: {:int, 4}},
    %{name: "CheatEnabledPlayerNames", type: :unknown}
  ],

"SkillStageFlowNotify" => [
    %{name: "__base__", type: {:struct, "ErTozMessage"}},
    %{name: "SkillCuid", type: :cuid},
    %{name: "SkillSiid", type: {:int, 4}},
    %{name: "SkillStageFlowSiid", type: {:int, 4}},
    %{name: "CasterGuid", type: {:uint, 8}},
    %{name: "SubTargetingLocations_cm", type: {:list, :vector}},
    %{name: "AffectExemptLocations_cm", type: {:list, {:struct, "FVector2D"}}},
    %{name: "SkillStageInfos", type: {:list, {:struct, "SkillStageInfo"}}},
    %{name: "ServerUtcNow", type: :datetime}
  ]
}