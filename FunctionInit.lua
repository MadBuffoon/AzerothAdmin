﻿-------------------------------------------------------------------------------------------------------------
--
-- AzerothAdmin Version 3.x
-- AzerothAdmin is a derivative of TrinityAdmin/MangAdmin.
--
-- Copyright (C) 2022 Free Software Foundation, Inc.
-- License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
-- This is free software: you are free to change and redistribute it.
-- There is NO WARRANTY, to the extent permitted by law.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
-- Repository: https://github.com/superstyro/AzerothAdmin
--
-------------------------------------------------------------------------------------------------------------

--Convention:
-- MangAdmin:PrepareScript(*nameofbutton*                    , Locale["*tooltiplocalisation*"]         , function() *functionnameandparameters()* end)

function InitControls()
--[[GM Tab]]
  MangAdmin:PrepareScript(ma_displaylevelbutton              , Locale["tt_DisplayAccountLvl"]          , function() DisplayAccountLevel() end)
  MangAdmin:PrepareScript(ma_gmonbutton                      , Locale["tt_GMOnButton"]                 , function() ToggleGMMode("on") end)
  MangAdmin:PrepareScript(ma_gmoffbutton                     , Locale["tt_GMOffButton"]                , function() ToggleGMMode("off") end)
  MangAdmin:PrepareScript(ma_flyonbutton                     , Locale["tt_FlyOnButton"]                , function() ToggleFlyMode("on") end)
  MangAdmin:PrepareScript(ma_flyoffbutton                    , Locale["tt_FlyOffButton"]               , function() ToggleFlyMode("off") end)
  MangAdmin:PrepareScript(ma_hoveronbutton                   , Locale["tt_HoverOnButton"]              , function() ToggleHoverMode(1) end)
  MangAdmin:PrepareScript(ma_hoveroffbutton                  , Locale["tt_HoverOffButton"]             , function() ToggleHoverMode(0) end)
  MangAdmin:PrepareScript(ma_whisperonbutton                 , Locale["tt_WhispOnButton"]              , function() ToggleWhisper("on") end)
  MangAdmin:PrepareScript(ma_whisperoffbutton                , Locale["tt_WhispOffButton"]             , function() ToggleWhisper("off") end)
  MangAdmin:PrepareScript(ma_invisibleonbutton               , Locale["tt_InvisOnButton"]              , function() ToggleVisible("off") end)
  MangAdmin:PrepareScript(ma_invisibleoffbutton              , Locale["tt_InvisOffButton"]             , function() ToggleVisible("on") end)
  MangAdmin:PrepareScript(ma_taxicheatonbutton               , Locale["tt_TaxiOnButton"]               , function() ToggleTaxicheat("on") end)
  MangAdmin:PrepareScript(ma_taxicheatoffbutton              , Locale["tt_TaxiOffButton"]              , function() ToggleTaxicheat("off") end)
  MangAdmin:PrepareScript(ma_mapsonbutton                    , Locale["tt_ShowMapsButton"]             , function() ToggleMaps(1) end)
  MangAdmin:PrepareScript(ma_mapsoffbutton                   , Locale["tt_HideMapsButton"]             , function() ToggleMaps(0) end)
  MangAdmin:PrepareScript(ma_instantkillbutton               , Locale["tt_instakill"]                  , function() InstantKill() end)
  MangAdmin:PrepareScript(ma_speedslider                     , Locale["tt_SpeedSlider"]                , {{"OnMouseUp", function() SetSpeed() end},{"OnValueChanged", function() ma_speedsliderText:SetText("Speed: "..string.format("%.1f", ma_speedslider:GetValue())) end}})
  MangAdmin:PrepareScript(ma_scaleslider                     , Locale["tt_ScaleSlider"]                , {{"OnMouseUp", function() SetScale() end},{"OnValueChanged", function() ma_scalesliderText:SetText("Scale: "..string.format("%.1f", ma_scaleslider:GetValue())) end}})
  MangAdmin:PrepareScript(ma_screenshotbutton                , Locale["tt_ScreenButton"]               , function() Screenie() end)
  MangAdmin:PrepareScript(ma_bankbutton                      , Locale["tt_BankButton"]                 , function() ShowBank() end)
  MangAdmin:PrepareScript(ma_dismountbutton                  , Locale["tt_Dismount"]                   , function() DismountPlayer() end)
  MangAdmin:PrepareScript(ma_setjail_a_button                , Locale["tt_SetJail_A_Button"]           , function() SetJail_A() end)
  MangAdmin:PrepareScript(ma_setjail_h_button                , Locale["tt_SetJail_H_Button"]           , function() SetJail_H() end)
  MangAdmin:PrepareScript(ma_gridnaviaheadbutton             , Locale["tt_N"]                          , function() GridNavigate(nil, nil); MangAdmin.db.char.nextGridWay = "north" end)
  MangAdmin:PrepareScript(ma_gridnavibackbutton              , Locale["tt_S"]                          , function() GridNavigate(nil, nil); MangAdmin.db.char.nextGridWay = "south" end)
  MangAdmin:PrepareScript(ma_gridnavirightbutton             , Locale["tt_E"]                          , function() GridNavigate(nil, nil); MangAdmin.db.char.nextGridWay = "east" end)
  MangAdmin:PrepareScript(ma_gridnavileftbutton              , Locale["tt_W"]                          , function() GridNavigate(nil, nil); MangAdmin.db.char.nextGridWay = "west" end)
  --MangAdmin:PrepareScript(ma_chatonbutton                    , Locale["tt_chatonbutton"]               , function() ToggleChat("on") end)
  --MangAdmin:PrepareScript(ma_chatoffbutton                   , Locale["tt_chatoffbutton"]              , function() ToggleChat("off") end)
  MangAdmin:PrepareScript(ma_waterwalkonbutton               , Locale["tt_waterwalkonbutton"]          , function() ToggleWaterwalk("on") end)
  MangAdmin:PrepareScript(ma_waterwalkoffbutton              , Locale["tt_watewrwalkoffbutton"]        , function() ToggleWaterwalk("off") end)
  MangAdmin:PrepareScript(ma_accountlockonbutton             , Locale["tt_accountlockonbutton"]        , function() ToggleAccountlock("on") end)
  MangAdmin:PrepareScript(ma_accountlockoffbutton            , Locale["tt_accountlockoffbutton"]       , function() ToggleAccountlock("off") end)
  MangAdmin:PrepareScript(ma_gmingamebutton                  , Locale["tt_gmingamebutton"]             , function() GMInGame() end)
  MangAdmin:PrepareScript(ma_gmlistbutton                    , Locale["tt_gmlistbutton"]               , function() GMList() end)
  MangAdmin:PrepareScript(ma_petcreatebutton                 , Locale["tt_petcreatebutton"]            , function() PetCreate() end)
  MangAdmin:PrepareScript(ma_petlearnbutton                  , Locale["tt_petlearnbutton"]             , function() PetLearn() end)
  MangAdmin:PrepareScript(ma_petunlearnbutton                , Locale["tt_petunlearnbutton"]           , function() PetUnLearn() end)
  MangAdmin:PrepareScript(ma_pettpbutton                     , Locale["tt_pettpbutton"]                , function() PetTP() end)
  MangAdmin:PrepareScript(ma_lookuptaxibutton                , Locale["tt_lookuptaxibutton"]           , function() LookupTaxi() end)
  MangAdmin:PrepareScript(ma_gotaxinodebutton                , Locale["tt_gotaxinodebutton"]           , function() GoTaxiNode() end)
  MangAdmin:PrepareScript(ma_gotriggerbutton                 , Locale["tt_gotriggerbutton"]            , function() GoTrigger() end)
  MangAdmin:PrepareScript(ma_goxybutton                      , Locale["tt_goxybutton"]                 , function() GoXY() end)
  MangAdmin:PrepareScript(ma_goxyzbutton                     , Locale["tt_goxyzbutton"]                , function() GoXYZ() end)
  MangAdmin:PrepareScript(ma_gozonexybutton                  , Locale["tt_gozonexybutton"]             , function() GoZoneXY() end)
  MangAdmin:PrepareScript(ma_lookupzonebutton                , Locale["tt_lookupzonebutton"]           , function() LookupZone() end)
  MangAdmin:PrepareScript(ma_castbutton                      , Locale["tt_castbutton"]                 , function() Cast() end)
  MangAdmin:PrepareScript(ma_castbackbutton                  , Locale["tt_castbackbutton"]             , function() CastBack() end)
  MangAdmin:PrepareScript(ma_castdistbutton                  , Locale["tt_castdistbutton"]             , function() CastDist() end)
  MangAdmin:PrepareScript(ma_castselfbutton                  , Locale["tt_castselfbutton"]             , function() CastSelf() end)
  MangAdmin:PrepareScript(ma_casttargetbutton                , Locale["tt_casttargetbutton"]           , function() CastTarget() end)
  MangAdmin:PrepareScript(ma_listitembutton                  , Locale["tt_listitembutton"]             , function() ListItem() end)
  MangAdmin:PrepareScript(ma_gmclearbutton                   , Locale["tt_gmclearbutton"]              , function() GmClear() end)
  MangAdmin:PrepareScript(ma_acctcreatebutton                , Locale["tt_acctcreatebutton"]           , function() AcctCreate() end)
  MangAdmin:PrepareScript(ma_acctdeletebutton                , Locale["tt_acctdeletebutton"]           , function() AcctDelete() end)
  MangAdmin:PrepareScript(ma_acctaddonbutton                 , Locale["tt_acctaddonbutton"]            , function() AcctAddon() end)
  MangAdmin:PrepareScript(ma_acctgmlvlbutton                 , Locale["tt_acctgmlvlbutton"]            , function() AcctGMLvl() end)
  MangAdmin:PrepareScript(ma_acctpasswdbutton                , Locale["tt_acctpasswdbutton"]           , function() AcctPasswd() end)
  MangAdmin:PrepareScript(ma_gmnotifybutton                  , Locale["tt_gmnotifybutton"]             , function() GMNotify() end)
  MangAdmin:PrepareScript(ma_teleaddbutton                   , Locale["tt_teleaddbutton"]              , function() TeleAddButton() end)
  MangAdmin:PrepareScript(ma_teledelbutton                   , Locale["tt_teledelbutton"]              , function() TeleDelButton() end)
  MangAdmin:PrepareScript(ma_speedsliderreset_button         , Locale["tt_SpeedSliderReset"]           , function() ResetSpeed() end)
  MangAdmin:PrepareScript(ma_scalesliderreset_button         , Locale["tt_ScaleSliderReset"]           , function() ResetScale() end)

  -- Speed Slider
  ma_speedslider:SetOrientation("HORIZONTAL")
  ma_speedslider:SetMinMaxValues(.5, 30)
  ma_speedslider:SetValueStep(0.5)
  ma_speedslider:SetValue(1)
  ma_speedsliderText:SetText("Speed: 1.0")
  -- Scale Slider
  ma_scaleslider:SetOrientation("HORIZONTAL")
  ma_scaleslider:SetMinMaxValues(0.1 , 10)
  ma_scaleslider:SetValueStep(0.1)
  ma_scaleslider:SetValue(1)
  ma_scalesliderText:SetText("Scale: 1.0")

--[[Char Tab]]
  InitModelFrame()
  MangAdmin:PrepareScript(ma_modelrotatelbutton              , Locale["tt_RotateLeft"]                 , function() ModelRotateLeft() end)
  MangAdmin:PrepareScript(ma_modelrotaterbutton              , Locale["tt_RotateRight"]                , function() ModelRotateRight() end)
  MangAdmin:PrepareScript(ma_killbutton                      , Locale["tt_killbutton"]                 , function() KillSomething() end)
  MangAdmin:PrepareScript(ma_revivebutton                    , Locale["tt_reviveplayer"]               , function() RevivePlayer() end)
  MangAdmin:PrepareScript(ma_savebutton                      , Locale["tt_saveplayer"]                 , function() SavePlayer() end)
  MangAdmin:PrepareScript(ma_kickbutton                      , Locale["tt_KickButton"]                 , function() KickPlayer() end)
  MangAdmin:PrepareScript(ma_cooldownbutton                  , Locale["tt_CooldownButton"]             , function() Cooldown() end)
  MangAdmin:PrepareScript(ma_guidbutton                      , Locale["tt_GUIDButton"]                 , function() ShowGUID() end)
  MangAdmin:PrepareScript(ma_pinfobutton                     , Locale["tt_PinfoButton"]                , function() Pinfo() end)
  MangAdmin:PrepareScript(ma_distancebutton                  , Locale["tt_DistanceButton"]             , function() Distance() end)
  MangAdmin:PrepareScript(ma_recallbutton                    , Locale["tt_RecallButton"]               , function() Recall() end)
  MangAdmin:PrepareScript(ma_demorphbutton                   , Locale["tt_DemorphButton"]              , function() Demorph() end)
  MangAdmin:PrepareScript(ma_showmapsbutton                  , Locale["tt_ShowMapsCharButton"]         , function() ToggleMapsChar(1) end)
  MangAdmin:PrepareScript(ma_hidemapsbutton                  , Locale["tt_HideMapsCharButton"]         , function() ToggleMapsChar(0) end)
  MangAdmin:PrepareScript(ma_gpsbutton                       , Locale["tt_GPSButton"]                  , function() GPS() end)
  MangAdmin:PrepareScript(ma_learnlangbutton                 , Locale["tt_learnlangbutton"]            , function() LearnSpell(UIDropDownMenu_GetSelectedValue(ma_learnlangdropdown)) end)
  MangAdmin:PrepareScript(ma_modifybutton                    , Locale["tt_modifybutton"]               , function() Modify(UIDropDownMenu_GetSelectedValue(ma_modifydropdown),ma_modifyeditbox:GetText()) end)
  MangAdmin:PrepareScript(ma_resetbutton                     , Locale["tt_resetbutton"]                , function() Reset(UIDropDownMenu_GetSelectedValue(ma_resetdropdown)) end)
  MangAdmin:PrepareScript(ma_modelzoominbutton               , Locale["tt_modelzoominbutton"]          , function() CharModelZoomIn() end)
  MangAdmin:PrepareScript(ma_modelzoomoutbutton              , Locale["tt_modelzoomoutbutton"]         , function() CharModelZoomOut() end)
  MangAdmin:PrepareScript(ma_charbindsight                   , Locale["tt_charbindsight"]              , function() CharBindSight() end)
  MangAdmin:PrepareScript(ma_charunbindsight                 , Locale["tt_charunbindsight"]            , function() CharUnBindSight() end)
  MangAdmin:PrepareScript(ma_charrenamebutton                , Locale["tt_charrename"]                 , function() CharRename() end)
  MangAdmin:PrepareScript(ma_charcustomizebutton             , Locale["tt_charcustomize"]              , function() CharCustomize() end)
  MangAdmin:PrepareScript(ma_charchangeracebutton            , Locale["tt_charchangerace"]             , function() CharChangeRace() end)
  MangAdmin:PrepareScript(ma_charchangefactionbutton         , Locale["tt_charchnagefaction"]          , function() CharChangeFaction() end)
  MangAdmin:PrepareScript(ma_charcombatstopbutton            , Locale["tt_charcombatstop"]             , function() CharCombatStop() end)
  MangAdmin:PrepareScript(ma_charmaxskillbutton              , Locale["tt_charmaxskill"]               , function() CharMaxSkill() end)
  MangAdmin:PrepareScript(ma_charfreezebutton                , Locale["tt_charfreeze"]                 , function() CharFreeze() end)
  MangAdmin:PrepareScript(ma_charunfreezebutton              , Locale["tt_charunfreeze"]               , function() CharUnFreeze() end)
  MangAdmin:PrepareScript(ma_charlistfreezebutton            , Locale["tt_charlistfreeze"]             , function() CharListFreeze() end)
  MangAdmin:PrepareScript(ma_charpossessbutton               , Locale["tt_charpossess"]                , function() CharPossess() end)
  MangAdmin:PrepareScript(ma_charunpossessbutton             , Locale["tt_charunpossess"]              , function() CharUnPossess() end)
  MangAdmin:PrepareScript(ma_charrecallbutton                , Locale["tt_charrecall"]                 , function() CharRecall() end)
  MangAdmin:PrepareScript(ma_charrepairitemsbutton           , Locale["tt_charrepair"]                 , function() CharRepair() end)

  LearnLangDropDownInitialize()
  UIDropDownMenu_Initialize(ma_learnlangdropdown , LearnLangDropDownInitialize)
  UIDropDownMenu_SetWidth(ma_learnlangdropdown          ,100)
  UIDropDownMenu_SetButtonWidth(ma_learnlangdropdown    ,20)
  ModifyDropDownInitialize()
  UIDropDownMenu_Initialize(ma_modifydropdown , ModifyDropDownInitialize)
  UIDropDownMenu_SetWidth(ma_modifydropdown             , 100)
  UIDropDownMenu_SetButtonWidth(ma_modifydropdown       , 20)
  ResetDropDownInitialize()
  UIDropDownMenu_Initialize(ma_resetdropdown , ResetDropDownInitialize)
  UIDropDownMenu_SetWidth(ma_resetdropdown              , 100)
  UIDropDownMenu_SetButtonWidth(ma_resetdropdown        , 20)

  MangAdmin:PrepareScript(ma_banbutton                       , Locale["tt_banbutton"]                  , function() BanButton() end)
  MangAdmin:PrepareScript(ma_gonamebutton                    , Locale["tt_gonamebutton"]               , function() GoNameButton() end)
  MangAdmin:PrepareScript(ma_createguildbutton               , Locale["tt_createguildbutton"]          , function() CreateGuildButton() end)
  MangAdmin:PrepareScript(ma_baninfobutton                   , Locale["tt_baninfobutton"]              , function() BanInfoButton() end)
  MangAdmin:PrepareScript(ma_groupgobutton                   , Locale["tt_groupgobutton"]              , function() GroupGoButton() end)
  MangAdmin:PrepareScript(ma_guildinvitebutton               , Locale["tt_guildinvitebutton"]          , function() GuildInviteButton() end)
  MangAdmin:PrepareScript(ma_banlistbutton                   , Locale["tt_banlistbutton"]              , function() BanlistButton() end)
  MangAdmin:PrepareScript(ma_namegobutton                    , Locale["tt_namegobutton"]               , function() NameGoButton() end)
  MangAdmin:PrepareScript(ma_guildrankbutton                 , Locale["tt_guildrankbutton"]            , function() GuildRankButton() end)
  MangAdmin:PrepareScript(ma_telegroupbutton                 , Locale["tt_telegroupbutton"]            , function() TeleGroupButton() end)
  MangAdmin:PrepareScript(ma_unbanbutton                     , Locale["tt_unbanbutton"]                , function() UnBanButton() end)
  MangAdmin:PrepareScript(ma_guilddeletebutton               , Locale["tt_guilddeletebutton"]          , function() GuildDeleteButton() end)
  MangAdmin:PrepareScript(ma_guilduninvitebutton             , Locale["tt_guilduninvitebutton"]        , function() GuildUninviteButton() end)
  MangAdmin:PrepareScript(ma_telenamebutton                  , Locale["tt_telenamebutton"]             , function() TeleNameButton() end)
  MangAdmin:PrepareScript(ma_mutebutton                      , Locale["tt_mutebutton"]                 , function() MuteButton() end)
  MangAdmin:PrepareScript(ma_charmorphbutton                 , Locale["tt_charmorphbutton"]            , function() CharMorphButton() end)
  MangAdmin:PrepareScript(ma_charaurabutton                  , Locale["tt_charaurabutton"]             , function() CharAuraButton() end)
  MangAdmin:PrepareScript(ma_charunaurabutton                , Locale["tt_charunaurabutton"]           , function() CharUnAuraButton() end)
  MangAdmin:PrepareScript(ma_jailabutton                     , Locale["tt_JailAButton"]                , function() JailA() end)
  MangAdmin:PrepareScript(ma_jailhbutton                     , Locale["tt_JailHButton"]                , function() JailH() end)
  MangAdmin:PrepareScript(ma_unjailbutton                    , Locale["tt_UnJailButton"]               , function() UnJail() end)
  MangAdmin:PrepareScript(ma_unmutebutton                    , Locale["tt_UnMuteButton"]               , function() UnMuteButton() end)
  MangAdmin:PrepareScript(ma_questaddbutton                  , Locale["tt_QuestAddButton"]             , function() QuestAddButton() end)
  MangAdmin:PrepareScript(ma_questcompletebutton             , Locale["tt_QuestCompleteButton"]        , function() QuestCompleteButton() end)
  MangAdmin:PrepareScript(ma_questremovebutton               , Locale["tt_QuestRemoveButton"]          , function() QuestRemoveButton() end)
  MangAdmin:PrepareScript(ma_damagebutton                    , Locale["tt_DamageButton"]               , function() DamageButton() end)
  MangAdmin:PrepareScript(ma_hideareabutton                  , Locale["tt_HideAreaButton"]             , function() HideAreaButton() end)
  MangAdmin:PrepareScript(ma_showareabutton                  , Locale["tt_ShowAreaButton"]             , function() ShowAreaButton() end)
  MangAdmin:PrepareScript(ma_honoraddbutton                  , Locale["tt_HonorAddButton"]             , function() HonorAddButton() end)
  MangAdmin:PrepareScript(ma_honorupdatebutton               , Locale["tt_HonorUpdateButton"]          , function() HonorUpdateButton() end)

--[[NPC Tab]]
  InitModelFrameNPC()
  MangAdmin:PrepareScript(ma_npcmodelrotatelbutton           , Locale["tt_NPCRotateLeft"]              , function() NpcModelRotateLeft() end)
  MangAdmin:PrepareScript(ma_npcmodelrotaterbutton           , Locale["tt_NPCRotateRight"]             , function() NpcModelRotateRight() end)
  MangAdmin:PrepareScript(ma_npckillbutton                   , Locale["tt_NPCKillButton"]              , function() NPCKillSomething() end)
  MangAdmin:PrepareScript(ma_respawnbutton                   , Locale["tt_npcrespawn"]                 , function() Respawn() end)
  MangAdmin:PrepareScript(ma_npcdistancebutton               , Locale["tt_NPCDistanceButton"]          , function() NPCDistance() end)
  MangAdmin:PrepareScript(ma_npcguidbutton                   , Locale["tt_NPCGUIDButton"]              , function() NPCShowGUID() end)
  MangAdmin:PrepareScript(ma_npcinfobutton                   , Locale["tt_NPCInfoButton"]              , function() NPCInfo() end)
  MangAdmin:PrepareScript(ma_npcdemorphbutton                , Locale["tt_NPCDemorph"]                 , function() NPCDemorph() end)
  MangAdmin:PrepareScript(ma_npcmovebutton                   , Locale["tt_NPCMove"]                    , function() NPCMove() end)
  MangAdmin:PrepareScript(ma_npcdelbutton                    , Locale["tt_NPCDel"]                     , function() NPCDel() end)
  MangAdmin:PrepareScript(ma_NPC_guidgetbutton               , Locale["tt_getguid"]                    , function() NPC_GUID_Get() end)
  MangAdmin:PrepareScript(ma_NPC_addbutton                   , Locale["tt_NPCAdd"]                     , function() NPC_Add() end)
  MangAdmin:PrepareScript(ma_npcgobutton                     , Locale["tt_NPCGo"]                      , function() NPCGo() end)
  MangAdmin:PrepareScript(ma_npcmorphbutton                  , Locale["tt_NPCMorph"]                   , function() NPCMorph() end)
  MangAdmin:PrepareScript(ma_npcsaybutton                    , Locale["tt_NPCSay"]                     , function() NPCSay() end)
  MangAdmin:PrepareScript(ma_npcyellbutton                   , Locale["tt_NPCYell"]                    , function() NPCYell() end)
  MangAdmin:PrepareScript(ma_npcaurabutton                   , Locale["tt_NPCAura"]                    , function() NPCAura() end)
  MangAdmin:PrepareScript(ma_npcunaurabutton                 , Locale["tt_NPCUnaura"]                  , function() NPCUnaura() end)
  MangAdmin:PrepareScript(ma_npcemotebutton                  , Locale["tt_PlayEmote"]                  , function() NpcEmote(UIDropDownMenu_GetSelectedValue(ma_npcemotedropdown)) end)
  MangAdmin:PrepareScript(ma_npcemotebutton_a                , Locale["tt_PlayEmote"]                  , function() NpcEmote(UIDropDownMenu_GetSelectedValue(ma_npcemotedropdown_a)) end)
  MangAdmin:PrepareScript(ma_npcdisplayupbutton              , Locale["tt_DisplayUp"]                  , function() DisplayUP() end)
  MangAdmin:PrepareScript(ma_npcdisplaydownbutton            , Locale["tt_DisplayDown"]                , function() DisplayDown() end)
  MangAdmin:PrepareScript(ma_npcID_UPbutton                  , Locale["tt_IDUp"]                       , function() ID_UP() end)
  MangAdmin:PrepareScript(ma_npcID_DOWNbutton                , Locale["tt_IDDown"]                     , function() ID_DOWN() end)
  MangAdmin:PrepareScript(ma_npcmodelzoominbutton            , Locale["tt_npcmodelzoominbutton"]       , function() NPCModelZoomIn() end)
  MangAdmin:PrepareScript(ma_npcmodelzoomoutbutton           , Locale["tt_npcmodelzoomoutbutton"]      , function() NPCModelZoomOut() end)
  MangAdmin:PrepareScript(ma_npcbindsight                    , Locale["tt_npcbindsight"]               , function() NPCBindSight() end)
  MangAdmin:PrepareScript(ma_npcunbindsight                  , Locale["tt_npcunbindsight"]             , function() NPCUnBindSight() end)
  MangAdmin:PrepareScript(ma_npccometomebutton               , Locale["tt_npccometome"]                , function() NPCComeToMe() end)
  MangAdmin:PrepareScript(ma_npcpossessbutton                , Locale["tt_npcpossess"]                 , function() NPCPossess() end)
  MangAdmin:PrepareScript(ma_npcunpossessbutton              , Locale["tt_npcunpossess"]               , function() NPCUnPossess() end)
  MangAdmin:PrepareScript(ma_npcfreezebutton                 , Locale["tt_NPCFreezeButton"]            , function() NPCFreeze() end)
  MangAdmin:PrepareScript(ma_npcfreezedelbutton              , Locale["tt_NPCFreezeDelButton"]         , function() NPCFreezeDEL() end)
  MangAdmin:PrepareScript(ma_way_endaddbutton                , Locale["tt_WayEndAdd"]                  , function() WayEndAdd() end)
  MangAdmin:PrepareScript(ma_npcunfreeze_addwaybutton        , Locale["tt_NPCAddWay"]                  , function() NPCAdd_Way() end)
  MangAdmin:PrepareScript(ma_way_modifyaddbutton             , Locale["tt_WayMAdd"]                    , function() WayModifyAdd() end)
  MangAdmin:PrepareScript(ma_way_modifydelbutton             , Locale["tt_WayModifyDel"]               , function() WayModifyDel() end)
  MangAdmin:PrepareScript(ma_way_showonbutton                , Locale["tt_WayShow1"]                   , function() WayShowOn() end)
  MangAdmin:PrepareScript(ma_way_showoffbutton               , Locale["tt_WayShow0"]                   , function() WayShowOff() end)
  MangAdmin:PrepareScript(ma_npcunfreeze_addway_showonbutton , Locale["tt_NPCAdd_WayShowOn"]           , function() NPCAdd_WayShowOn() end)
  MangAdmin:PrepareScript(ma_npcunfreeze_waybutton           , Locale["tt_NPCUnFreeze_WayButton"]      , function() NPCUnFreeze_Way() end)
  MangAdmin:PrepareScript(ma_npcunfreeze_randombutton        , Locale["tt_NPCUnFreeze_RandomButton"]   , function() NPCUnFreeze_Random() end)
  MangAdmin:PrepareScript(ma_movestackbutton                 , Locale["tt_MoveStackButton"]            , function() ShowMove() end)

--[[Gob Tab]]
  MangAdmin:PrepareScript(ma_objgobutton                     , Locale["tt_ObjGo"]                      , function() OBJGo() end)
  MangAdmin:PrepareScript(ma_objaddbutton                    , Locale["tt_ObjAdd"]                     , function() OBJAdd() end)
  MangAdmin:PrepareScript(ma_objmovebutton                   , Locale["tt_ObjMove"]                    , function() OBJMove() end)
  MangAdmin:PrepareScript(ma_objturnbutton                   , Locale["tt_ObjTurn"]                    , function() OBJTurn() end)
  MangAdmin:PrepareScript(ma_objdelbutton                    , Locale["tt_ObjDel"]                     , function() OBJDel() end)
  MangAdmin:PrepareScript(ma_objnearbutton                   , Locale["tt_ObjNear"]                    , function() OBJNear() end)
  MangAdmin:PrepareScript(ma_objtargetbutton                 , Locale["tt_ObjTarget"]                  , function() OBJTarget() end)
  MangAdmin:PrepareScript(ma_gobactivatebutton               , Locale["tt_ObjActivate"]                , function() OBJActivate() end)
  MangAdmin:PrepareScript(ma_gobaddtempbutton                , Locale["tt_ObjAddTemp"]                 , function() OBJAddTemp() end)
  MangAdmin:PrepareScript(ma_gobinfobutton                   , Locale["tt_ObjInfo"]                    , function() OBJInfo() end)
  MangAdmin:PrepareScript(ma_gobsetphasebutton               , Locale["tt_ObjSetPhase"]                , function() OBJSetPhase() end)
  MangAdmin:PrepareScript(ma_gobshowmodel                    , "Shows the model"                       , function() ShowGobModel() end)
  InitGobModelFrame()
  MangAdmin:PrepareScript(ma_gobmodelrotatelbutton           , Locale["tt_RotateLeft"]                 , function() GobModelRotateLeft() end)
  MangAdmin:PrepareScript(ma_gobmodelrotaterbutton           , Locale["tt_RotateRight"]                , function() GobModelRotateRight() end)
  MangAdmin:PrepareScript(ma_gobmodelzoominbutton            , Locale["tt_modelzoominbutton"]          , function() GobModelZoomIn() end)
  MangAdmin:PrepareScript(ma_gobmodelzoomoutbutton           , Locale["tt_modelzoomoutbutton"]         , function() GobModelZoomOut() end)
  MangAdmin:PrepareScript(ma_gobmoveforwardbutton            , "Move forward"                          , function() DMFront() end)
  MangAdmin:PrepareScript(ma_gobmovebackbutton               , "Move back"                             , function() DMBack() end)
  MangAdmin:PrepareScript(ma_gobmoveleftbutton               , "Move left"                             , function() DMLeft() end)
  MangAdmin:PrepareScript(ma_gobmoverightbutton              , "Move right"                            , function() DMRight() end)
  MangAdmin:PrepareScript(ma_gobmoveupbutton                 , "Move up"                               , function() DMUP() end)
  MangAdmin:PrepareScript(ma_gobmovedownbutton               , "Move down"                             , function() DMDown() end)
  MangAdmin:PrepareScript(ma_gobspawnherebutton              , "Spawn here"                            , function() DMSS2() end)
  MangAdmin:PrepareScript(ma_spawnonmovecheck                , ""                                      , function() CheckToggle("spawn") end)
  MangAdmin:PrepareScript(ma_moveonmovecheck                 , ""                                      , function() CheckToggle("move") end)

--[[Tele Tab]]
  MangAdmin:PrepareScript(ma_ContScrollBarEntry1             , nil                                     , function() MangAdmin.db.char.selectedCont = "EK_N"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry2             , nil                                     , function() MangAdmin.db.char.selectedCont = "EK_S"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry3             , nil                                     , function() MangAdmin.db.char.selectedCont = "K"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry4             , nil                                     , function() MangAdmin.db.char.selectedCont = "Ou"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry5             , nil                                     , function() MangAdmin.db.char.selectedCont = "N_A"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry6             , nil                                     , function() MangAdmin.db.char.selectedCont = "N_H"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry7             , nil                                     , function() MangAdmin.db.char.selectedCont = "BG"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry8             , nil                                     , function() MangAdmin.db.char.selectedCont = "I_EK"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry9             , nil                                     , function() MangAdmin.db.char.selectedCont = "I_K"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry10            , nil                                     , function() MangAdmin.db.char.selectedCont = "I_O"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry11            , nil                                     , function() MangAdmin.db.char.selectedCont = "I_N"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry12            , nil                                     , function() MangAdmin.db.char.selectedCont = "OT"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)
  MangAdmin:PrepareScript(ma_ContScrollBarEntry13            , nil                                     , function() MangAdmin.db.char.selectedCont = "CUS"; cont=MangAdmin.db.char.selectedCont; TeleScrollUpdate() end)

--[[Tickets Tab]]
  MangAdmin:PrepareScript(ma_tabbutton_ticket                , Locale["tt_TicketButton"]               , function() ShowTicketTab() end)
  MangAdmin:PrepareScript(ma_resetticketsbutton              , "Reset loaded tickets"                  , function() ResetTickets() end)
  MangAdmin:PrepareScript(ma_loadallticktsbutton             , "Load All tickets"                      , function() RefreshTickets() end)
  MangAdmin:PrepareScript(ma_loadonlineticketsbutton         , "Load online player tickets"            , function() RefreshOnlineTickets() end)
  MangAdmin:PrepareScript(ma_deleteticketbutton              , nil                                     , function() Ticket("delete") end)
  MangAdmin:PrepareScript(ma_answerticketbutton              , nil                                     , function() Ticket("answer") end)
  MangAdmin:PrepareScript(ma_getcharticketbutton             , nil                                     , function() Ticket("getchar") end)
  MangAdmin:PrepareScript(ma_gocharticketbutton              , nil                                     , function() Ticket("gochar") end)
  MangAdmin:PrepareScript(ma_whisperticketbutton             , nil                                     , function() Ticket("whisper") end)
  MangAdmin:PrepareScript(ma_goticketbutton                  , nil                                     , function() Ticket("goticket") end)
  MangAdmin:PrepareScript(ma_showbutton                      , "Show loaded tickets"                   , function() ShowTickets() end)
  --ma_showticketsbutton
--[[Misc Tab]]
  MangAdmin:PrepareScript(ma_bgcolorshowbutton               , nil                                     , function() ShowColorPicker("bg") end)
  MangAdmin:PrepareScript(ma_frmcolorshowbutton              , nil                                     , function() ShowColorPicker("frm") end)
  MangAdmin:PrepareScript(ma_btncolorshowbutton              , nil                                     , function() ShowColorPicker("btn") end)
  MangAdmin:PrepareScript(ma_linkifiercolorbutton            , nil                                     , function() ShowColorPicker("linkifier") end)
  MangAdmin:PrepareScript(ma_applystylebutton                , nil                                     , function() ApplyStyleChanges() end)
  --MangAdmin:PrepareScript(ma_windowismovable                 , nil                                     , function() AllowMovableWindow() end)
  MangAdmin:PrepareScript(ma_changeweatherbutton             , nil                                     , function() ChangeWeather(UIDropDownMenu_GetSelectedValue(ma_weatherdropdown)) end)

--[[Server Tab]]
  MangAdmin:PrepareScript(ma_announcebutton                  , Locale["tt_AnnounceButton"]             , function() Announce(ma_announceeditbox:GetText()) end)
  MangAdmin:PrepareScript(ma_resetannouncebutton             , nil                                     , function() ma_announceeditbox:SetText("") end)
  MangAdmin:PrepareScript(ma_shutdownbutton                  , Locale["tt_ShutdownButton"]             , function() Shutdown(ma_shutdowneditbox:GetText()) end)
  MangAdmin:PrepareScript(ma_loadtablebutton                 , nil                                     , function() ReloadTable(UIDropDownMenu_GetSelectedValue(ma_reloadtabledropdown)) end)
  MangAdmin:PrepareScript(ma_loadscriptsbutton               , nil                                     , function() ReloadScripts() end)

--[[Log Tab]]
--[[Who Tab]]
  MangAdmin:PrepareScript(ma_resetwhobutton                  , nil                                     , function() ResetWho() end)
  MangAdmin:PrepareScript(ma_deletewhobutton                 , nil                                     , function() Who("delete") end)
  MangAdmin:PrepareScript(ma_answerwhobutton                 , nil                                     , function() Who("answer") end)
  MangAdmin:PrepareScript(ma_summonwhobutton                 , nil                                     , function() Who("getchar") end)
  MangAdmin:PrepareScript(ma_gocharwhobutton                 , nil                                     , function() Who("gochar") end)
  MangAdmin:PrepareScript(ma_whisperwhobutton                , nil                                     , function() Who("whisper") end)
  MangAdmin:PrepareScript(ma_who_customizebutton             , Locale["tt_who_customize"]              , function() Who("customize") end)
  MangAdmin:PrepareScript(ma_who_chardeletebutton            , Locale["tt_who_chardelete"]             , function() Who("chardelete") end)
  MangAdmin:PrepareScript(ma_who_charrenamebutton            , Locale["tt_who_charrename"]             , function() Who("charrename") end)
  MangAdmin:PrepareScript(ma_who_1daybanbutton               , Locale["tt_who_1daybanbutton"]          , function() Who("1dayban") end)
  MangAdmin:PrepareScript(ma_who_permbanbutton               , Locale["tt_who_permbanbutton"]          , function() Who("permban") end)
  MangAdmin:PrepareScript(ma_who_jailabutton                 , Locale["tt_who_jailabutton"]            , function() Who("jaila") end)
  MangAdmin:PrepareScript(ma_who_jailhbutton                 , Locale["tt_who_jailhbutton"]            , function() Who("jailh") end)
  MangAdmin:PrepareScript(ma_who_unjailbutton                , Locale["tt_who_unjailbutton"]           , function() Who("unjail") end)
end