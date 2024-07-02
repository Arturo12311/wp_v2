%{
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
  %{name: "SharedFocusTargetInfo", type: :message}
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
],

"PartyAppointLeaderNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "PreviousLeaderGuid", type: {:uint, 8}},
  %{name: "LeaderAppointReason", type: {:enum, "PartyLeaderAppointReasonType"}}
],

"BattalionBanishMemberRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}}
],

"CovenantInviteRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "PlayerName", type: :string}
],

"ConvenienceOptionInfo" => [
  %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
  %{name: "HealthPointsPotionAutoUsageOptionInfo", type: {:nullable, {:struct, "PotionAutoUsageOptionInfo"}}},
  %{name: "ManaPointsPotionAutoUsageOptionInfo", type: {:nullable, {:struct, "PotionAutoUsageOptionInfo"}}},
  %{name: "AutoUseReplaceSpentItemPolicyOption", type: {:enum, "AutoUseReplaceSpentItemPolicyType"}},
  %{name: "SkillAutoUseManaPointsRestrictOptionInfo", type: {:nullable, {:struct, "SkillAutoUseManaPointsRestrictOptionInfo"}}},
  %{name: "PartyAutoCreationOnlyCovenantMemberOrFriend", type: :bool},
  %{name: "PartyAutoCreationAutoApprovalJoinApplication", type: :bool},
  %{name: "PartyInvitationAllowKind", type: {:enum, "PartyInvitationAllowKindType"}},
  %{name: "CovenantInvitable", type: :bool},
  %{name: "IsChatCurrencySpendWarned", type: :bool},
  %{name: "SomaItemUsePopupDisplayOption", type: :bool},
  %{name: "DeathPenaltyAutoRecoveryOption", type: :bool},
  %{name: "FollowerDispatchAutomationCovenantRecommendationFirst", type: :bool},
  %{name: "PowerSavingModeAutoSwitchMinutes", type: {:int, 4}},
  %{name: "GearEnhancementErodeNotifyDisplayOption", type: :bool},
  %{name: "GearEnhancementDestroyNotifyDisplayOption", type: :bool},
  %{name: "GearEnhancementNotErodedOnFailNotifyDisplayOption", type: :bool},
  %{name: "ErodedRestoreScrollUseNotifyDisplayOption", type: :bool},
  %{name: "NpcListAutoExpandAndCollapse", type: :bool},
  %{name: "MonsterBookAnalysisCostByLockCountDisplayOption", type: :bool},
  %{name: "GearMultipleEnhancementIncludeConfirmedEnhancementNotifyDisplayOption", type: :bool}
],

"FollowerItemAdditionalInfo" => [
  %{name: "__base__", type: {:struct, "ItemAdditionalInfo"}},
  %{name: "Tier", type: {:int, 4}},
  %{name: "Level", type: {:int, 4}},
  %{name: "ExperiencePoints", type: {:int, 8}},
  %{name: "LastLevelUpDateTime", type: {:struct, "FDateTime"}}
],

"ThreatListClearNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"DrownSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "HealthPointsLost", type: :float}
],

"SystemCastAffectSourceInfo" => [
  %{name: "__base__", type: {:struct, "CastAffectSourceInfo"}},
  %{name: "AffectSourceSystemCastKind", type: {:enum, "AffectSourceSystemCastKindType"}}
],

"AllRealmInfoPubSubChannelInitialDataNotify" => [
  %{name: "__base__", type: {:struct, "PubSubChannelInitialDataNotify"}},
  %{name: "RealmInfos", type: {:list, {:list, {:struct, "RealmInfo"}}}}
],

"SelfieDoodadInfo" => [
  %{name: "__base__", type: {:struct, "InteractableDoodadInfo"}}
],

"CheatEnterCovenantCampaignRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"CovenantDeleteCovenantMemberRoleNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantMemberRoleName", type: :string}
],

"CheatStrongholdApplyTaxResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CovenantRemoveJoinApplicationNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}}
],

"RankingViewInfo" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"SpellstoneAdditionalSkillStatsInfo" => [
  %{name: "ManaPointsCostDecreaseAmount", type: {:int, 4}},
  %{name: "ManaPointsCostDecreaseRatio_pe4", type: {:int, 4}},
  %{name: "CooldownDurationDecreaseAmount_msec", type: {:int, 4}},
  %{name: "CooldownDurationDecreaseRatio_pe4", type: {:int, 4}},
  %{name: "FeedbackHealthPointsAffectRatioIncreaseAmount", type: :float},
  %{name: "FeedbackHealthPointsAffectRatioIncreaseRatio", type: :float},
  %{name: "CharacterStatChangesDuringSkillProgress", type: {:list, {:struct, "CharacterStatChangeInfo"}}}
],

"PlayerCashShopInfo" => [
  %{name: "CashShopRefundableMerchandiseStorageBoxInfo", type: {:nullable, {:struct, "CashShopRefundableMerchandiseStorageBoxInfo"}}},
  %{name: "MerchandiseBuyCountInfoList", type: {:list, {:struct, "MerchandiseBuyCountInfo"}}}
],

"CovenantSynchronizeLivingTotemInfoNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantLivingTotemInfo", type: {:nullable, :message}}
],

"HandshakeResult" => [
  %{name: "Success", type: :bool}
],

"MapFogOpenRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "FogCuid", type: {:struct, "Cuid"}}
],

"CheatGetCrossRealmSeasonMaxEnterablePlayerCapacityRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "SeasonCuid", type: {:struct, "Cuid"}}
],

"PlayerSkillUseStatisticsNxLogInfo" => [
  %{name: "ArquiruneGrade", type: {:enum, "ItemGradeType"}},
  %{name: "SkillCuid", type: {:struct, "Cuid"}},
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

"RealmAccountLogoutRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"RejectDiplomacyChatRoomInvitationResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "MessageId", type: {:int, 4}}
],

"CovenantCampOccupancyInfo" => [
  %{name: "__base__", type: {:struct, "HavenOccupancyInfo"}},
  %{name: "CovenantCampChangeCooldownExpireDateTime", type: {:struct, "FDateTime"}}
],

"CheatDistributeStrongholdMarketTaxRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}}
],

"CovenantSynchronizeJoinAppliedPlayerLevelChangedNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "Level", type: {:int, 4}}
],

"BattalionJoinApplicationRejectNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "BattalionGuid", type: {:uint, 8}},
  %{name: "JoinApplicationRejectReason", type: {:enum, "ETzJoinApplicationRejectReasonType"}}
],

"ExperiencePointsPlayerRankingViewInfo" => [
  %{name: "__base__", type: {:struct, "PlayerRankingViewInfo"}},
  %{name: "ExperiencePoints", type: {:uint, 8}}
],

"CovenantReturnHavenChangeRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}}
],

"CheatGetCheatEnabledPlayerNamesRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "MessageId", type: {:int, 4}}
],

"WarpCancelFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ResultCode", type: {:enum, "ETzResultCodeType"}}
],

"RankingQueryByNameResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "RankingTopicCuid", type: {:struct, "Cuid"}},
  %{name: "DateTime", type: {:nullable, {:struct, "FDateTime"}}},
  %{name: "TargetRankingInfo", type: {:nullable, :message}},
  %{name: "SelfRankingInfo", type: {:nullable, :message}}
],

"StrongholdRewardStatNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}},
  %{name: "IsOccupiedByNpcCovenant", type: :bool}
],

"CheatReleaseOccupiableNpcInactivityRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "NpcSpawnerCuid", type: {:struct, "Cuid"}}
],

"CheatChangeAllFollowersLevelResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CovenantBattalionExpeditionDeployStopLivingTotemRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"CheatAnniversaryAchievementResetResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "AnniversaryAchievementPointInfos", type: {:list, :message}}
],

"BuffPeriodicAffectNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "EntityGuid", type: {:uint, 8}},
  %{name: "BuffCuid", type: {:struct, "Cuid"}},
  %{name: "CasterGuid", type: {:uint, 8}},
  %{name: "HealthPointsDelta", type: {:int, 4}},
  %{name: "ManaPointsDelta", type: {:int, 4}},
  %{name: "ProtectedDamage", type: {:int, 4}}
],

"QuestAcceptRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "QuestVuid", type: {:struct, "Vuid"}},
  %{name: "FavorNpcGuid", type: {:uint, 8}}
],

"CovenantUpdateCovenantMemberRoleNameFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"InstanceFieldLeaveExpireNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ExpireTargetTime", type: {:struct, "DateTime"}}
],

"InventoryInfo" => [
  %{name: "ItemInfos", type: {:list, {:struct, "ItemInfo"}}},
  %{name: "MaxSlotCount", type: {:int, 4}}
],

"MarketGoodsSummaryInfoQueryNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "MarketGoodsSummaryQueryInfo", type: {:nullable, :message}},
  %{name: "MarketGoodsSummaryInfos", type: {:list, {:struct, "MarketGoodsSummaryInfo"}}}
],

"CreateDiplomacyChatRoomResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "MessageId", type: {:int, 4}}
],

"CovenantSupportBuildingWorkInfo" => [
  %{name: "BuildingCuid", type: {:struct, "Cuid"}},
  %{name: "OrderInfo", type: {:nullable, {:struct, "BuildingWorkOrderInfo"}}}
],

"CovenantCampInfo" => [
  %{name: "Cuid", type: {:struct, "Cuid"}},
  %{name: "CovenantCount", type: {:int, 4}},
  %{name: "TotalCovenantMemberCount", type: {:int, 4}},
  %{name: "UsingCapacity", type: {:int, 4}},
  %{name: "LimitCapacity", type: {:int, 4}}
],

"CovenantInvitationInfoUpdatedNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "InvitedCovenantGuids", type: {:list, {:uint, 8}}}
],

"CheatAcquireStanceResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "AcquireRequestedStance", type: {:struct, "StanceType"}},
  %{name: "Stance", type: {:struct, "StanceType"}},
  %{name: "StanceSwitchCooldownExpireDateTime", type: {:nullable, {:struct, "DateTime"}}},
  %{name: "InstalledStance", type: {:struct, "StanceType"}},
  %{name: "IsStanceInstallFreeChanceEnabled", type: :bool}
],

"FollowerDispatchAutomationResultNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
],

"PartyInviteRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "RealmPlayerId", type: {:struct, "RealmPlayerId"}}
],

"MissionRewardInfo" => [
  %{name: "MissionCuid", type: {:struct, "Cuid"}},
  %{name: "MissionStep", type: {:int, 4}},
  %{name: "AcquiredDateTime", type: {:nullable, {:struct, "DateTime"}}},
  %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}}
],

"SkillCasterMoveAffectInfo" => [
  %{name: "__base__", type: {:struct, "SkillMoveAffectInfo"}},
  %{name: "CasterMoveAffectKind", type: {:enum, "ETzCasterMoveAffectKindType"}}
],

"CheatMonsterBookResetCategoryResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CategoryCuid", type: {:struct, "Cuid"}},
  %{name: "MonsterBookInfo", type: {:nullable, {:struct, "MonsterBookInfo"}}}
],

"CheatClearRealmIntegrationBattleScoreResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CovenantUpdateIntroductionFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"StrongholdBattleInfo" => [
  %{name: "Guid", type: {:uint, 8}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}},
  %{name: "StrongholdBattleKind", type: {:enum, "ETzStrongholdBattleKindType"}},
  %{name: "StartTime", type: {:struct, "FDateTime"}},
  %{name: "BuildingStateInfos", type: {:map, {:struct, "Cuid"}, {:struct, "StrongholdBattleBuildingStateInfo"}}},
  %{name: "DefenseInfos", type: {:map, {:enum, "ETzStrongholdBattleDeploymentKindType"}, {:struct, "StrongholdBattleDefenseGroupInfo"}}},
  %{name: "AttackInfos", type: {:map, {:enum, "ETzStrongholdBattleDeploymentKindType"}, {:struct, "StrongholdBattleAttackInfo"}}}
],

"CovenantRubyShopMerchandiseResetResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CovenantBattalionSummaryInfo" => [
  %{name: "__base__", type: {:struct, "BattalionSummaryInfo"}},
  %{name: "ExpeditionSummaryInfo", type: {:nullable, {:struct, "ExpeditionSummaryInfo"}}}
],

"ServerDrivenPlayWaitingForResupplyStateInfo" => [
  %{name: "__base__", type: {:struct, "ServerDrivenPlayStateInfo"}}
],

"TrapInfo" => [
  %{name: "__base__", type: {:struct, "CharacterInfo"}},
  %{name: "TrapCuid", type: {:struct, "Cuid"}},
  %{name: "InstallerGuid", type: {:uint, 8}}
],

"GearBatchCraftRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "NpcGuid", type: {:uint, 8}},
  %{name: "CraftTargetGrades", type: {:list, {:enum, "ETzItemGradeType"}}},
  %{name: "CraftTargetGearCategories", type: {:list, {:enum, "ETzGearCategoryKindType"}}}
],

"CovenantRankingViewInfo" => [
  %{name: "__base__", type: {:struct, "RankingViewInfo"}},
  %{name: "Guid", type: {:uint, 8}},
  %{name: "OriginRealmCuid", type: {:struct, "Cuid"}},
  %{name: "Name", type: :string},
  %{name: "LeaderName", type: :string},
  %{name: "Level", type: {:int, 4}},
  %{name: "MemberCount", type: {:int, 2}},
  %{name: "MaxMemberCount", type: {:int, 2}},
  %{name: "EmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
  %{name: "CampCuid", type: {:struct, "Cuid"}},
  %{name: "OccupiedStrongholdCuids", type: {:list, {:struct, "Cuid"}}},
  %{name: "MainHavenCuid", type: {:struct, "Cuid"}}
],

"MarketSellReregisterResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "IsSuccessByGoodsGuids", type: {:map, {:uint, 8}, :bool}},
  %{name: "FailedGoodsGuid", type: {:uint, 8}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
],

"AnniversaryAchievementRewardRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "AnniversaryCuid", type: {:struct, "Cuid"}},
  %{name: "AnniversaryAchievementCycleBeginDateTime", type: {:struct, "DateTime"}},
  %{name: "AchievementCuid", type: {:struct, "Cuid"}}
],

"CovenantCampaignEnterResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
],

"CovenantDiplomacyInfos" => [
  %{name: "RequestInfos", type: {:map, {:uint, 8}, {:struct, "CovenantDiplomacyInfo"}}},
  %{name: "ResponseInfos", type: {:map, {:uint, 8}, {:struct, "CovenantDiplomacyInfo"}}}
],

"CovenantHistoryCheckCompleteArchitectureResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CovenantHistoryInfos", type: {:list, {:struct, "CovenantHistoryInfo"}}}
],

"CovenantPermissionsInfo" => [
  %{name: "CanEditCovenantInfo", type: :bool},
  %{name: "CanManageCovenantMember", type: :bool},
  %{name: "CanBanishMember", type: :bool},
  %{name: "CanManageHaven", type: :bool},
  %{name: "CanModifyTax", type: :bool},
  %{name: "CanManageDiplomacy", type: :bool},
  %{name: "CanManageDiplomacyChat", type: :bool},
  %{name: "CanDeclareBattle", type: :bool},
  %{name: "CanStartCampaign", type: :bool}
],

"CovenantRejectInvitationsRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantGuids", type: {:list, {:uint, 8}}}
],

"SpellstoneAdditionalStatsInfo" => [
  %{name: "SpellstoneAdditionalSkillStatsInfo", type: {:nullable, {:struct, "SpellstoneAdditionalSkillStatsInfo"}}},
  %{name: "SpellstoneAdditionalBuffStatsInfosByBuffKindAndApplicableSpellstoneBuffKind", type: {:map, :message, {:map, :message, {:struct, "SpellstoneAdditionalBuffStatsInfo"}}}},
  %{name: "SpellstoneAdditionalHealthAndManaStatsInfosByStatsAffectKind", type: {:map, :message, {:struct, "SpellstoneAdditionalHealthAndManaStatsInfo"}}}
],

"PlayerDeathNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "DeathRecordInfo", type: :message},
  %{name: "RestrictedResurrectionInfo", type: {:nullable, {:struct, "RestrictedResurrectionInfo"}}}
],

"ErosionInstalledWithoutPermissionUpdateNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ErosionInfo", type: {:struct, "ErosionInfo"}}
],

"CheatChangeTerritoryEntanglementGaugeResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatRegisterCheatEnabledPlayerNameResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "MessageId", type: {:int, 4}},
  %{name: "CheatEnabledPlayerNames", type: {:list, :string}}
],

"CheatClearRealmIntegrationBattleAllScoreRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"DeathPenaltyRecoverResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "RecoveredDeathPenaltyGuids", type: {:list, {:uint, 8}}},
  %{name: "DeathPenaltyFreeRecoveryInfo", type: :message},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
  %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
],

"MonsterBookExperiencePointsItemConsumeRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "NodeCuid", type: {:struct, "Cuid"}},
  %{name: "ItemGuidSelectors", type: {:list, {:struct, "ItemGuidSelector"}}}
],

"CovenantBattalionInfo" => [
  %{name: "__base__", type: {:struct, "BattalionInfo"}},
  %{name: "ExpeditionInfo", type: :message}
],

"CheatChangeSpiritualBondPowerResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"HonorableDieRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"CovenantLivingTotemWithStatsInfo" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "Cuid", type: {:struct, "Cuid"}},
  %{name: "Role", type: {:enum, "LivingTotemRoleType"}},
  %{name: "Tier", type: {:int, 4}},
  %{name: "CharacterPublicStatsInfo", type: :message},
  %{name: "CharacterPrivateStatsInfo", type: :message}
],

"CheatCreateAndEquipGearsRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "GearCuid", type: {:struct, "Cuid"}},
  %{name: "BoundAndEroded", type: {:enum, "TzBoundAndErodedType"}},
  %{name: "GearQuality", type: {:enum, "TzGearQualityType"}},
  %{name: "EnhancementGrade", type: {:int, 2}},
  %{name: "Count", type: {:int, 4}}
],

"ErTozMessageWithResultCode" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ResultCode", type: {:enum, "TzResultCodeType"}}
],

"CovenantCampBuildingCraftCancelRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "BuildingCraftCuid", type: {:struct, "Cuid"}}
],

"NavMeshTileCheckRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CheckRequestedTiles", type: {:list, {:struct, "TzNavMeshTileInfo"}}}
],

"LevelSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "NewLevel", type: {:int, 4}},
  %{name: "LastLevelUpDateTime", type: {:struct, "DateTime"}}
],

"MailCountQueryRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "MailTab", type: {:enum, "TzMailTabType"}}
],

"CheatResetGoodsBuyCountRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"StrongholdSummaryBuildingInfoNotify" => [
  %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
  %{name: "BuildingSpawnerCuid", type: {:struct, "Cuid"}},
  %{name: "BuildingSubscriptionSummaryInfo", type: {:nullable, {:struct, "TzBuildingSubscriptionSummaryInfo"}}}
],

"PowerSavingModeLootNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "RewardInfo", type: {:nullable, {:struct, "TzPowerSavingModeRewardInfo"}}}
],

"CheatNpcCombatLogNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "Message", type: :string}
],

"RealmInfoListResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "RealmInfos", type: {:list, {:struct, "RealmInfo"}}},
  %{name: "RealmAccountInfos", type: {:list, {:struct, "UniverseAccountRealmAccountInfo"}}},
  %{name: "AppliedRealmAccountGuids", type: {:list, {:uint, 8}}}
],

"BattalionCreateNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "BattalionInfo", type: {:nullable, {:struct, "BattalionInfo"}}}
],

"CheatDetachAllBuffsResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"WarpReturnResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
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

"PvpBattlePlayerId" => [
  %{name: "RealmCuid", type: {:struct, "Cuid"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "PlayerName", type: :string}
],

"StrongholdBattleAttackEndInfo" => [
  %{name: "Reason", type: {:enum, "StrongholdBattleEndReasonType"}},
  %{name: "AltarDestroyerGuid", type: {:uint, 8}},
  %{name: "AltarDestroyerName", type: :string}
],

"EquipmentPresetSelectResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "EquipmentPresetIndex", type: {:enum, "EquipmentPresetIndexType"}},
  %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
  %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}},
  %{name: "CostumeInfo", type: {:nullable, {:struct, "CostumeInfo"}}},
  %{name: "EquipmentPresetChangeCooldownExpirationDateTime", type: {:nullable, {:struct, "DateTime"}}}
],

"ItemAutoUseRegisterResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "ItemCuid", type: {:struct, "Cuid"}}
],

"StrongholdBattleAttackInfo" => [
  %{name: "DeclareHavenCuid", type: {:struct, "Cuid"}},
  %{name: "AttackGroupInfo", type: {:nullable, {:struct, "StrongholdBattleAttackGroupInfo"}}},
  %{name: "Phase", type: {:enum, "ETzStrongholdBattleAttackPhaseType"}},
  %{name: "DeclareDateTime", type: {:struct, "FDateTime"}},
  %{name: "StandByEndDateTime", type: {:struct, "FDateTime"}},
  %{name: "EndDateTime", type: {:struct, "FDateTime"}},
  %{name: "CarriageLivingTotemNpcGuid", type: {:uint, 8}},
  %{name: "StrongholdBattleStartLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
  %{name: "TargetBuildingSpawnerCuids", type: {:map, {:enum, "ETzStrongholdBattleAttackPhaseType"}, {:struct, "Cuid"}}},
  %{name: "OccupyAltarCurrentScore", type: {:int, 4}}
],

"ShopCashMerchandiseRestoreResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "RestorePaymentInfo", type: {:nullable, {:struct, "ToyMerchandisePaymentInfo"}}},
  %{name: "MerchandiseBuyResultInfo", type: {:nullable, {:struct, "MerchandiseBuyResultInfo"}}}
],

"CrossRealmCovenantDiplomacyWithdrawAllianceFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatSpawnDoodadRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "DoodadSpawnerCuid", type: {:struct, "Cuid"}},
  %{name: "Count", type: {:int, 4}}
],

"StrongholdBattleDisconnectNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}}
],

"CovenantGiftBoxInfo" => [
  %{name: "Guid", type: {:uint, 8}},
  %{name: "MissionCuid", type: {:struct, "Cuid"}},
  %{name: "MissionStep", type: {:int, 4}},
  %{name: "GiftBoxCuid", type: {:struct, "Cuid"}},
  %{name: "ExpireDateTime", type: {:struct, "FDateTime"}},
  %{name: "SenderPlayerGuid", type: {:uint, 8}},
  %{name: "SenderPlayerName", type: :string},
  %{name: "IsReceived", type: :bool},
  %{name: "ReceiveRewardInfo", type: {:nullable, :message}}
],

"ShopSellResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
  %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
],

"BattalionLeaderChangeableNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "TargetPlayerGuid", type: {:uint, 8}}
],

"CovenantWatchSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "TargetPlayerGuidToCreateDateTimes", type: {:map, {:uint, 8}, {:struct, "FDateTime"}}}
],

"CrossRealmCovenantDiplomacySynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CrossRealmCovenantDiplomacyInfos", type: {:nullable, {:struct, "CovenantDiplomacyInfos"}}}
],

"StrongholdSummonWaveDefenseStartNotify" => [
  %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
  %{name: "StrongholdSummonWaveDefenseCuid", type: {:struct, "Cuid"}},
  %{name: "DistrictCuid", type: {:struct, "Cuid"}},
  %{name: "StrongholdSummonWaveDefenseStartDateTime", type: {:struct, "DateTime"}}
],

"PlayerFollowerInfo" => [
  %{name: "FollowerSquadSlots", type: {:map, {:uint, 1}, {:uint, 8}}},
  %{name: "FollowerDispatchOverallInfos", type: {:map, {:uint, 8}, {:struct, "FollowerDispatchOverallInfo"}}},
  %{name: "FollowerCollectionInfos", type: {:map, {:struct, "Cuid"}, {:struct, "FollowerCollectionInfo"}}}
],

"InteractableDoodadRemainingInteractionCompleteCountSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "RemainingInteractionCompleteCount", type: {:int, 4}}
],

"ChatQueryEntityInfoRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "MessageId", type: {:int, 4}},
  %{name: "Guid", type: {:uint, 8}}
],

"FollowerWorkInfo" => [
  %{name: "WorkState", type: {:enum, "FollowerWorkStateType"}},
  %{name: "MaxWorkTime_sec", type: {:int, 4}},
  %{name: "ElapsedWorkTime_sec", type: {:int, 4}},
  %{name: "CurrentWorkSpeed_mwpsec", type: {:int, 4}},
  %{name: "AccumulatedWorkAmount_mw", type: {:uint, 8}},
  %{name: "LastWorkUpdateDateTime", type: {:struct, "DateTime"}}
],

"CovenantUpdateOutLinkRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantOutLinkKind", type: {:enum, "CovenantOutLinkKindType"}},
  %{name: "Uri", type: :string}
],

"PlayerFavorInfo" => [
  %{name: "DistrictFavorDatabaseInfos", type: {:map, {:struct, "Cuid"}, {:struct, "DistrictFavorDatabaseInfo"}}},
  %{name: "ActiveFavorDatabaseInfos", type: {:map, {:struct, "Vuid"}, {:struct, "FavorDatabaseInfo"}}}
],

"GuiseUnequipFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"FocusNotify" => [
  %{name: "__base__", type: {:struct, "FocusRequest"}},
  %{name: "CharacterGuid", type: {:uint, 8}}
],

"CovenantDisplayInfo" => [
  %{name: "CovenantVuid", type: {:struct, "Vuid"}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
],

"CovenantQueryRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantGuid", type: {:uint, 8}}
],

"RPCExceptionMessage" => [
  %{name: "__base__", type: {:struct, "RPCMessage"}},
  %{name: "ErrorString", type: :string}
],

"StrongholdCancelProtectionReservationRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}}
],

"CovenantRealmTransferRegisterResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CovenantDiplomacyCancelReinforcementInvitationRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}},
  %{name: "CovenantGuid", type: {:uint, 8}}
],

"AutoBuySettingsInfo" => [
  %{name: "Settings", type: {:map, {:struct, "Cuid"}, {:int, 4}}}
],

"CovenantRecommendResourceKindFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "HavenCuid", type: {:struct, "Cuid"}},
  %{name: "RecommendedResourceKinds", type: {:list, {:enum, "ResourceKindType"}}}
],

"RealmCovenantId" => [
  %{name: "RealmCuid", type: {:struct, "Cuid"}},
  %{name: "CovenantVuid", type: {:struct, "Vuid"}}
],

"CheatClearCollectionByCollectionCategoryCuidFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"ContaminationInfo" => [
  %{name: "Stage", type: {:enum, "ContaminationStageType"}},
  %{name: "UpdatedValue", type: {:int, 4}},
  %{name: "UpdatedDateTime", type: {:struct, "DateTime"}},
  %{name: "TotalDecrement_psec", type: {:int, 4}},
  %{name: "ContaminationNaturalDecreaseInfos", type: {:map, {:enum, "ContaminationNaturalDecreaseType"}, {:int, 4}}},
  %{name: "CastVeilDateTime", type: {:nullable, {:struct, "DateTime"}}},
  %{name: "RemoveVeilDateTime", type: {:nullable, {:struct, "DateTime"}}},
  %{name: "FullContamination", type: {:int, 4}}
],

"NormalDoodadInfo" => [
  %{name: "__base__", type: {:struct, "InteractableDoodadInfo"}},
  %{name: "NormalDoodadState", type: {:enum, "ETzNormalDoodadStateType"}}
],

"StrongholdSettleAccountInfo" => [
  %{name: "AccumulatedGoldTaxAmount", type: {:int, 8}},
  %{name: "GoldHistoryInfos", type: {:map, {:struct, "FDateTime"}, {:struct, "GoldHistoryInfo"}}}
],

"CovenantBattalionExpeditionDeployStopLivingTotemFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"HavenOrganizationStatsDetailInfo" => [
  %{name: "Stats", type: {:map, {:enum, "ETzHavenOrganizationStatSourceType"}, {:map, {:struct, "FTzCuid"}, {:int, 4}}}}
],

"CheatClearDeathPenaltyRecordResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CovenantRealmTransferReadyToRealmTransferRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "UseItem", type: :bool},
  %{name: "UseCurrency", type: :bool}
],

"DestroyerEnterDistrictNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "PlayerName", type: :string},
  %{name: "DistrictCuid", type: {:struct, "FTzCuid"}}
],

"CheatExpeditionOpenRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ExpeditionCuid", type: {:struct, "FTzCuid"}},
  %{name: "SealedSiteCuid", type: {:struct, "FTzCuid"}}
],

"FollowerCollectionUpdateNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CollectionInfos", type: {:map, {:struct, "FTzCuid"}, {:struct, "FollowerCollectionInfo"}}}
],

"ErosionInstallCancelRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
],

"BattalionOptionModifyResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "PlayerBattalionOptionInfo"}}}
],

"RedrawableItemSelectResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
],

"EntityRemoveNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "EntityRemoveReason", type: {:enum, "EntitySpawnRemoveReasonType"}}
],

"CheatCharacterPrivateStatsInfoRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CharacterGuid", type: {:uint, 8}}
],

"CrossRealmCovenantDiplomacyDeclareHostilityFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"UpdateLastViewedChatRecordsIndexRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ChatRecordsIndices", type: {:list, {:struct, "ChatRecordsIndex"}}}
],

"MonsterBookExperiencePointsItemConsumeResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}},
  %{name: "UpdatedNodeStateInfo", type: {:nullable, {:struct, "MonsterBookNodeAcquiredStateInfo"}}},
  %{name: "UpdatedCollectionInfo", type: {:nullable, {:struct, "MonsterBookCollectionInfo"}}},
  %{name: "ReceivedRewardInfo", type: {:nullable, {:struct, "ReceivedRewardInfo"}}}
],

"StrongholdWorldMapFirstOccupationRewardEarliestReceivableDateTimeNotify" => [
  %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
  %{name: "FirstOccupationRewardEarliestReceivableDateTime", type: {:nullable, {:struct, "DateTime"}}}
],

"RealmAccountRealmTransferLimitedItemCountResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "ItemCountByCuid", type: {:map, {:struct, "Cuid"}, {:uint, 8}}},
  %{name: "ItemCountByItemGradeAndItemCategory", type: {:map, {:enum, "ItemCategoryType"}, {:map, {:enum, "ItemGradeType"}, {:uint, 8}}}},
  %{name: "GearCountByItemGradeAndGearKind", type: {:map, {:enum, "GearKindType"}, {:map, {:enum, "ItemGradeType"}, {:uint, 8}}}},
  %{name: "AffectItemCountByItemGradeAndAffectItemKind", type: {:map, {:enum, "AffectItemKindType"}, {:map, {:enum, "ItemGradeType"}, {:uint, 8}}}},
  %{name: "NonUsableItemCountByItemGradeAndNonUsableItemKind", type: {:map, {:enum, "NonUsableItemKindType"}, {:map, {:enum, "ItemGradeType"}, {:uint, 8}}}}
],

"CheatNoticeResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "MessageId", type: {:int, 4}}
],

"CheatAcquireAndSetToSquadFollowerResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "FollowerSquadSlots", type: {:map, {:uint, 1}, {:uint, 8}}}
],

"RealmIntegrationSelectRealmAccountResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "RealmAccountGuid", type: {:uint, 8}},
  %{name: "RealmAccountInfo", type: {:nullable, {:struct, "RealmAccountInfo"}}},
  %{name: "PlayerSummaryInfos", type: {:map, {:uint, 8}, {:struct, "PlayerSummaryInfo"}}},
  %{name: "LatestPlayedPlayerGuid", type: {:uint, 8}},
  %{name: "CanCheatCommand", type: :bool},
  %{name: "RealmIntegrationRealmAccountInfos", type: {:list, {:struct, "RealmIntegrationRealmAccountInfo"}}}
],

"UniverseAccountLogoutResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"OccupiableNpcRandomBuffStateUpdateNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "NpcSpawnerCuid", type: {:struct, "Cuid"}},
  %{name: "RealmCovenantId", type: {:struct, "RealmCovenantId"}},
  %{name: "IsRandomBuffNpc", type: :bool},
  %{name: "NxLogBaseParameterInfo", type: {:nullable, :message}}
],

"StanceSwitchNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}},
  %{name: "Stance", type: {:enum, "StanceType"}}
],

"ContaminationActionInfo" => [
  %{name: "__base__", type: {:struct, "TriggerWorldActionInfo"}}
],

"ChatOptionInfo" => [
  %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
  %{name: "ChatTabFilter", type: {:list, {:enum, "ChatKindType"}}},
  %{name: "ItemAcquireNotifyDisplayOption", type: :bool},
  %{name: "ExperiencePointsAndGoldAcquireNotifyDisplayOption", type: :bool},
  %{name: "PartyOrBattalionMemberItemAcquireNotifyDisplayOption", type: :bool},
  %{name: "CovenantRewardAcquireNotifyDisplayOption", type: :bool},
  %{name: "CovenantMemberCovenantRewardAcquireNotifyDisplayOption", type: :bool},
  %{name: "ChatMacros", type: {:map, {:int, 4}, :string}}
],

"PartyQueryMemberCandidateRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "RealmPlayerName", type: {:struct, "RealmPlayerName"}}
],

"WarpResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
],

"CheatSetHavenBuildingAndItemRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "HavenCuid", type: {:struct, "Cuid"}}
],

"CheatTeleportToSpawnerRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "SpawnerCuid", type: {:struct, "Cuid"}},
  %{name: "Radius_cm", type: :float}
],

"GearSlotPresetModifyRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
  %{name: "UnequipGearSlots", type: {:list, :message}}
],

"CheatInitializeQuestDataRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"GenerateVivoxTokenResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "MessageId", type: {:int, 4}},
  %{name: "Token", type: :string},
  %{name: "Subject", type: :string}
],

"InteractionCancelRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "DoodadGuid", type: {:uint, 8}}
],

"NpcSpeechBalloonTextFormatInfo" => [
  %{name: "TextFormatParameters", type: {:list, :string}}
],

"CovenantDiplomacyConfirmReinforcementInvitationResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"AutoDonateSettingOptionInfo" => [
  %{name: "__base__", type: {:struct, "BaseGameOptionInfo"}},
  %{name: "ItemFilterCuidToItemGrade", type: {:map, {:struct, "Cuid"}, :message}},
  %{name: "IsContainEnhancedItem", type: :bool},
  %{name: "IsContainEnchantedItem", type: :bool},
  %{name: "IsContainBasicCollectableItem", type: :bool}
],

"AllRealmInfoPubSubChannelUpdateDataNotify" => [
  %{name: "__base__", type: {:struct, "PubSubChannelUpdateDataNotify"}},
  %{name: "RealmStateInfos", type: {:list, {:struct, "RealmStateInfo"}}}
],

"FieldEnterCompleteResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "FieldInitializeInfo", type: {:nullable, {:struct, "FieldInitializeInfo"}}},
  %{name: "ServerNavMeshCrcChecksum", type: {:uint, 4}},
  %{name: "ClientNavMeshCrcChecksum", type: {:uint, 4}},
  %{name: "EntitySpawnReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}},
  %{name: "LastSourceWarpPointCuid", type: {:struct, "Cuid"}}
],

"PlayerSkillSlotInfo" => [
  %{name: "SkillCuid", type: {:struct, "Cuid"}}
],

"TutorialsInfo" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CompletedTutorialCuids", type: {:list, {:struct, "Cuid"}}},
  %{name: "CurrentTutorialCuid", type: {:struct, "Cuid"}},
  %{name: "CurrentTutorialStepNo", type: {:int, 4}}
],

"BuffProtectNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "BuffGuid", type: {:uint, 8}},
  %{name: "BuffHealthPoints", type: {:uint, 8}}
],

"CheatPaidAttendanceResetRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PaidAttendanceCuid", type: {:struct, "Cuid"}}
],

"AnniversaryAchievementInitializeDataNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "AnniversaryAchievementInfos", type: {:map, {:struct, "Cuid"}, {:list, {:struct, "AnniversaryAchievementInfo"}}}}
],

"RewardAnniversaryRewardInfo" => [
  %{name: "AnniversaryRewardCuid", type: {:struct, "Cuid"}},
  %{name: "Amount", type: {:uint, 8}}
],

"TeleportInfo" => [
  %{name: "LocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
  %{name: "TeleportReason", type: {:enum, "ETzEntitySpawnRemoveReasonType"}}
],

"CovenantItemUseResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "ItemGuid", type: {:uint, 8}}
],

"CheatSpawnTerritoryBossResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatUnlockAllContentsRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
],

"RankingInfo" => [
  %{name: "PreviousRanking", type: {:nullable, {:int, 4}}},
  %{name: "CurrentRanking", type: {:nullable, {:int, 4}}},
  %{name: "ViewInfo", type: :message}
],

"MarketGoodsQueryInfo" => [
  %{name: "__base__", type: {:struct, "MarketGoodsSummaryQueryInfo"}},
  %{name: "GearAdditionalInfo", type: {:nullable, {:struct, "GearAdditionalInfo"}}},
  %{name: "MarketOrderByKind", type: {:struct, "MarketOrderByKindType"}}
],

"CheatChangeStrongholdAllBuildingLevelRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}},
  %{name: "BuildingKind", type: {:struct, "BuildingKindType"}},
  %{name: "BuildingLevel", type: {:int, 4}}
],

"RegionContentPlayInfoRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"CovenantGiftQueryResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "CovenantGiftInfo", type: {:nullable, {:struct, "CovenantGiftInfo"}}},
  %{name: "LastCovenantGiftInfo", type: {:nullable, {:struct, "CovenantGiftInfo"}}}
],

"GearSlotPresetModifyResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "EquipGearSlotInfos", type: {:list, {:struct, "GearSlotInfo"}}},
  %{name: "UnequipGearSlots", type: {:list, {:struct, "GearSlotType"}}},
  %{name: "PlayerPublicStatsInfo", type: {:nullable, {:struct, "PlayerPublicStatsInfo"}}},
  %{name: "PlayerPrivateStatsInfo", type: {:nullable, {:struct, "PlayerPrivateStatsInfo"}}}
],

"CheatSummonPlayerNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "RegionCuid", type: {:struct, "Cuid"}},
  %{name: "Location_cm", type: {:struct, "Vector"}}
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

"CovenantRecommendBuildingWorkResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"PartyAppointLeaderRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "PlayerGuid", type: {:uint, 8}}
],

"CheatFillHealthPointsAndManaPointsToFullResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"BattalionSummaryInfo" => [
  %{name: "BattalionGuid", type: {:uint, 8}},
  %{name: "CovenantGuid", type: {:uint, 8}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}},
  %{name: "CreateDateTime", type: {:struct, "FDateTime"}},
  %{name: "BattalionOptionInfo", type: {:nullable, {:struct, "BattalionOptionInfo"}}},
  %{name: "BattalionLeaderInfo", type: {:nullable, {:struct, "BattalionMemberInfo"}}},
  %{name: "AverageMemberLevel", type: {:int, 4}},
  %{name: "MemberCount", type: {:int, 4}},
  %{name: "BattalionLeaderLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
  %{name: "AssemblyLocationInfo", type: {:nullable, {:struct, "LocationInfo"}}},
  %{name: "IsJoinable", type: :bool}
],

"BuildingAccessPermissionSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "BuildingAccessPermissionKind", type: {:enum, "BuildingAccessPermissionKindType"}}
],

"StrongholdBattleJoinedCovenantInfo" => [
  %{name: "BattalionGuid", type: {:uint, 8}},
  %{name: "DeploymentKind", type: {:enum, "StrongholdBattleDeploymentKindType"}},
  %{name: "CovenantVuid", type: {:struct, "Vuid"}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
],

"CheatRemoveAllWorldMapMarkerResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "WorldMapMarkerKind", type: {:enum, "WorldMapMarkerKindType"}},
  %{name: "RemovedGuids", type: {:list, {:uint, 8}}},
  %{name: "ServerDrivenPlayOptionInfo", type: {:nullable, {:struct, "ServerDrivenPlayOptionInfo"}}}
],

"FindPathRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "MessageId", type: {:int, 4}},
  %{name: "Location_cm", type: {:struct, "FVector"}},
  %{name: "Destination_cm", type: {:struct, "FVector"}},
  %{name: "SufficientlyCloseDistance_cm", type: :float}
],

"RealmAccountLoginRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "RealmCuid", type: {:struct, "Cuid"}},
  %{name: "IsFastLogin", type: :bool}
],

"TerritoryContaminationStageChangeNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "TerritoryCuid", type: {:struct, "Cuid"}},
  %{name: "BeforeContaminationStage", type: {:enum, "ContaminationStageType"}},
  %{name: "AfterContaminationStage", type: {:enum, "ContaminationStageType"}}
],

"PartyQueryMemberCandidateResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "RealmPlayerName", type: {:nullable, {:struct, "RealmPlayerName"}}},
  %{name: "PartyMemberCoreInfo", type: {:nullable, {:struct, "PartyMemberCoreInfo"}}}
],

"CovenantOrganizationStatsSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantOrganizationStatsDetailInfo", type: {:struct, "CovenantOrganizationStatsDetailInfo"}}
],

"ItemCuidSelector" => [
  %{name: "__base__", type: {:struct, "MultipleItemSelector"}},
  %{name: "ItemCuid", type: {:struct, "Cuid"}},
  %{name: "ItemCount", type: {:nullable, {:int, 8}}}
],

"StrongholdBattleGuidSynchronizeNotify" => [
  %{name: "__base__", type: {:struct, "EntitySynchronizeMessage"}},
  %{name: "StrongholdBattleGuid", type: {:uint, 8}}
],

"PlayerStrongholdBattleStatisticsInfo" => [
  %{name: "TotalDamageDone", type: {:int, 8}},
  %{name: "TotalBuildingDamageDone", type: {:int, 8}},
  %{name: "TotalHealDone", type: {:int, 8}},
  %{name: "SkillUseStatisticsNxLogInfos", type: {:list, {:struct, "PlayerSkillUseStatisticsNxLogInfo"}}}
],

"GuiseChangeNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "GuiseCuid", type: {:struct, "Cuid"}}
],

"StrongholdBattleTeleportToSpireRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "SpireWarpNpcGuid", type: {:uint, 8}},
  %{name: "RequestSpireCuid", type: {:struct, "Cuid"}}
],

"StrongholdBattleBattalionDismissNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StrongholdCuid", type: {:struct, "Cuid"}},
  %{name: "DeploymentKind", type: :message}
],

"ServerDrivenPlayStateNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "StateInfo", type: :message}
],

"CheatSpawnFromSpawnerResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatCancelAllStrongholdProtectionResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"AccountAffectDetachNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "AccountAffectGuid", type: {:uint, 8}}
],

"ShowLevelUpEffectNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "LastLevelForLevelUpNotify", type: {:int, 4}}
],

"CheatAccomplishAchievementResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"DeleteFromChatBlockListResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatChangeAmityRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ClanCuid", type: {:struct, "Cuid"}},
  %{name: "Amity", type: {:int, 8}}
],

"CovenantUpdateJoinKindNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantJoinKind", type: {:enum, "ETzCovenantJoinKindType"}}
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

"NxLogCharFieldMoveInfo" => [
  %{name: "FieldIdBef", type: {:struct, "Cuid"}},
  %{name: "FieldUidBef", type: {:uint, 8}},
  %{name: "DistrictBef", type: {:struct, "Cuid"}},
  %{name: "TeleportReason", type: {:nullable, {:uint, 1}}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
  %{name: "CombinedInventoryUpdateInfo", type: {:nullable, {:struct, "CombinedInventoryUpdateInfo"}}}
],

"SeasonPassLevelBuyResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "MessageId", type: {:int, 4}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}},
  %{name: "SeasonPassExperiencePoints", type: {:int, 8}}
],

"InteractionResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatResetAllAetherOptionResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CheatChangeFollowerLevelResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"CovenantJoinedStrongholdBattleInfoRemoveNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "CovenantJoinedStrongholdBattleInfo", type: :message}
],

"NpcOccupationCovenantViewInfo" => [
  %{name: "__base__", type: {:struct, "NpcOccupationCovenantInfo"}},
  %{name: "CovenantName", type: :string},
  %{name: "CovenantEmblemInfo", type: {:nullable, {:struct, "CovenantEmblemInfo"}}}
],

"StrongholdBattleStatisticsDeadEventInfo" => [
  %{name: "__base__", type: {:struct, "StrongholdBattleStatisticsEventInfo"}},
  %{name: "KillerGuid", type: {:uint, 8}}
],

"ContentsRelockNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "ContentsUnlockKinds", type: {:list, {:struct, "ContentsUnlockKindType"}}}
],

"CheatCraftCovenantLivingTotemResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"BattalionChangeJoinableNotify" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}},
  %{name: "IsJoinable", type: :bool}
],

"StrongholdBuildingCraftResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"ErFrontServerSessionCancelWaitingQueueResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"ChatFailResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}}
],

"TeaseResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "PvpRecordGuid", type: {:uint, 8}},
  %{name: "CurrencyContainerUpdateInfo", type: {:nullable, {:struct, "PlayerCurrencyContainerUpdateInfo"}}}
],

"KickPreexistingSessionConfirmRequest" => [
  %{name: "__base__", type: {:struct, "ErTozMessage"}}
],

"ErLoginServerInitialDevBotAuthenticateInfo" => [
  %{name: "__base__", type: {:struct, "ErLoginServerInitialDevAuthenticateInfo"}}
],

"RegisteredGoodsBuyCountKey" => [
  %{name: "ItemCuid", type: {:struct, "Cuid"}},
  %{name: "CovenantGuid", type: {:uint, 8}},
  %{name: "ShopKind", type: {:enum, "TzShopKindType"}}
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

"SpawnLayerInfo" => [
  %{name: "SpawnLayerCuid", type: {:struct, "Cuid"}},
  %{name: "IsActivated", type: :bool},
  %{name: "LastActivatedDateTime", type: {:nullable, {:struct, "DateTime"}}},
  %{name: "LastDeactivatedDateTime", type: {:nullable, {:struct, "DateTime"}}}
],

"CovenantPayDividendResponse" => [
  %{name: "__base__", type: {:struct, "ErTozMessageWithResultCode"}},
  %{name: "DividendResultInfo", type: {:nullable, :message}}
]
}

# batch 27 - 283 still needs to be
