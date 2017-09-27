.class public final Lcom/android/keyguard/KeyguardRune;
.super Ljava/lang/Object;
.source "KeyguardRune.java"


# static fields
.field private static final BUILD_CHARACTERISTICS:Ljava/lang/String;

.field private static final CARRIER_SECURITY_POLICY:Ljava/lang/String;

.field private static final CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

.field private static final CMAS_OPERATOR_NAME:Ljava/lang/String;

.field private static final CONFIG_DMN_TYPE:Ljava/lang/String;

.field private static final CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

.field private static final EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

.field public static final HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

.field public static final IS_TABLET_DEVICE:Z

.field public static final SUPPORT_ATT_LOCK_TIMEOUT:Z

.field public static final SUPPORT_AUTO_LOCK_FOR_GEAR:Z

.field public static final SUPPORT_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

.field public static final SUPPORT_CMAS:Z

.field public static final SUPPORT_DATA_USAGE_REMINDER:Z

.field public static final SUPPORT_DCM_USIM_TEXT:Z

.field private static final SUPPORT_DEAD_ZONE:Ljava/lang/String;

.field public static final SUPPORT_DIRECTIONAL_LOCK:Z

.field public static final SUPPORT_DIRECT_CALL_TO_ECC:Z

.field public static final SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

.field public static final SUPPORT_DISABLE_SPEAK_PASSWORD:Z

.field public static final SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

.field public static final SUPPORT_DISCONNECTION_ADB_IN_LOCK_MODE:Z

.field public static final SUPPORT_GSIM_LOG:Z

.field public static final SUPPORT_HIGH_PERFORMACE_MODE:Z

.field public static final SUPPORT_HOME_WALLPAPER_TILT_EFFECT:Z

.field public static final SUPPORT_KDDI_USIM_TEXT:Z

.field public static final SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

.field public static final SUPPORT_KOR_USIM_TEXT:Z

.field public static final SUPPORT_KTT_USIM_TEXT:Z

.field public static final SUPPORT_LAYERED_WALLPAPER:Z

.field public static final SUPPORT_MOBILE_KEYBOARD:Z

.field public static final SUPPORT_MOTION_WALLPAPER:Z

.field public static final SUPPORT_MOVE_TO_EMERGENCY_CALL_LIST:Z

.field public static final SUPPORT_MULTI_SIM_DEVICE:Z

.field public static final SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

.field public static final SUPPORT_OPERATOR_WALLPAPER:Z

.field public static final SUPPORT_PERSIAN_CALENDAR:Z

.field public static final SUPPORT_PRESIDENTIAL_CMAS:Z

.field public static final SUPPORT_RIL_TALLRAT:Z

.field public static final SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

.field public static final SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

.field public static final SUPPORT_SERVICEBOX:Z

.field public static final SUPPORT_SHOWING_SWIPE_BOUNCER:Z

.field public static final SUPPORT_SIM_PERM_DISABLED:Z

.field public static final SUPPORT_SIM_PERSO_LOCK:Z

.field public static final SUPPORT_SIM_UNLOCK_TOAST:Z

.field public static final SUPPORT_SKIP_SHORTCUT_ARROW_SHOWING_VI:Z

.field public static final SUPPORT_SKT_PLMN:Z

.field public static final SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

.field public static final SUPPORT_SKT_USIM_TEXT:Z

.field public static final SUPPORT_SOFT_PHONE_DEVICE:Z

.field public static final SUPPORT_SPR_USIM_TEXT:Z

.field public static final SUPPORT_USC_USIM_TEXT:Z

.field public static final SUPPORT_USE_CDMA_CARD_TEXT:Z

.field public static final SUPPORT_USE_WFCPLMN_IN_AIRPLANE_MODE:Z

.field public static final SUPPORT_WARNING_FRP_MESSAGE:Z

.field public static final SUPPORT_WFC_PLMN_AT_AIRPLANE_MODE:Z

.field public static final SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

.field public static final WFC_PLMN_INFO_AT_AIRPLANE_MODE:Ljava/lang/String;

.field private static final mConfigDefLcdOnTimeOut:I

.field private static final mConfigLockTimeoutSetting:Ljava/lang/String;

.field private static sWiFiOnlyDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v4, "CscFeature_Setting_SupportDataUsageReminder"

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DATA_USAGE_REMINDER:Z

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v4, "CscFeature_Message_CMASOperator"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CMAS:Z

    .line 73
    const-string/jumbo v0, "us-spr"

    sget-object v4, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PRESIDENTIAL_CMAS:Z

    .line 88
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 89
    const-string/jumbo v4, "CscFeature_LockScreen_ConfigCarrierSecurityPolicy"

    .line 88
    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    .line 91
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    .line 92
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    .line 93
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    sput v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_SIM_PERSO_LOCK_PASSWORD_LENGTH:I

    .line 95
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WARNING_FRP_MESSAGE:Z

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 100
    const-string/jumbo v2, "CscFeature_LockScreen_SupportToastSimUnlockSuccess"

    .line 99
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_UNLOCK_TOAST:Z

    .line 103
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SAMSUNG_ACCOUNT_RECOVERY:Z

    .line 113
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 114
    const-string/jumbo v2, "CscFeature_LockScreen_ConfigCarrierTextPolicy"

    .line 113
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    .line 116
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_PLMN:Z

    .line 117
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

    .line 118
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    .line 119
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKT_USIM_TEXT:Z

    .line 120
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KTT_USIM_TEXT:Z

    .line 121
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DCM_USIM_TEXT:Z

    .line 122
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KDDI_USIM_TEXT:Z

    .line 123
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_e
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SPR_USIM_TEXT:Z

    .line 124
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    if-nez v0, :cond_11

    move v0, v1

    :goto_f
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USC_USIM_TEXT:Z

    .line 129
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 130
    const-string/jumbo v2, "CscFeature_LockScreen_ConfigEmergencyCallPolicy"

    .line 129
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    if-nez v0, :cond_12

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOVE_TO_EMERGENCY_CALL_LIST:Z

    .line 132
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    if-nez v0, :cond_13

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    .line 135
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 136
    const-string/jumbo v2, "CscFeature_RIL_SupportAllRat"

    .line 135
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_RIL_TALLRAT:Z

    .line 139
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 140
    const-string/jumbo v2, "CscFeature_LockScreen_DirectCallToEcc"

    .line 139
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DIRECT_CALL_TO_ECC:Z

    .line 144
    const-string/jumbo v0, ""

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 145
    const-string/jumbo v4, "CscFeature_Common_ConfigOpBrandingForWFC"

    const-string/jumbo v5, ""

    .line 144
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_WFCPLMN_IN_AIRPLANE_MODE:Z

    .line 148
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 149
    const-string/jumbo v2, "CscFeature_IMS_ConfigMdmnType"

    .line 148
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    if-nez v0, :cond_15

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SOFT_PHONE_DEVICE:Z

    .line 156
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_RIL_ConfigNetworkNameForEpdg"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->WFC_PLMN_INFO_AT_AIRPLANE_MODE:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, ""

    sget-object v2, Lcom/android/keyguard/KeyguardRune;->WFC_PLMN_INFO_AT_AIRPLANE_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_14
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WFC_PLMN_AT_AIRPLANE_MODE:Z

    .line 161
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v3, :cond_17

    move v0, v3

    :goto_15
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MULTI_SIM_DEVICE:Z

    .line 170
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_GSIM_LOG:Z

    .line 185
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_18

    :goto_16
    sput-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

    .line 189
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 190
    const-string/jumbo v2, "CscFeature_LockScreen_DisableTalkbackForSpeakPassword"

    .line 189
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISABLE_SPEAK_PASSWORD:Z

    .line 209
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 210
    const-string/jumbo v2, "CscFeature_RIL_USIMPersonalizationKOR"

    .line 209
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERSO_LOCK:Z

    .line 230
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 231
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SERVICEBOX"

    .line 230
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    sput-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    .line 252
    const-string/jumbo v0, "US_NORTH"

    .line 253
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    .line 256
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 257
    const-string/jumbo v2, "CscFeature_LockScreen_SupportAutoLockForGear"

    .line 256
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AUTO_LOCK_FOR_GEAR:Z

    .line 265
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isSupportWakeOnFingerPrint()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

    .line 285
    const-string/jumbo v0, "CINEMATIC"

    .line 286
    const-string/jumbo v2, "LAYERED"

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_LAYERED_WALLPAPER:Z

    .line 289
    const-string/jumbo v0, "CINEMATIC"

    .line 290
    const-string/jumbo v2, "CINEMATIC"

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOTION_WALLPAPER:Z

    .line 299
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 300
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    .line 299
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DIRECTIONAL_LOCK:Z

    .line 312
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 313
    const-string/jumbo v2, "CscFeature_LockScreen_EnableOperatorWallpaper"

    .line 312
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_OPERATOR_WALLPAPER:Z

    .line 316
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 317
    const-string/jumbo v2, "CscFeature_LockScreen_DisableADBConnDuringSecuredLock"

    .line 316
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISCONNECTION_ADB_IN_LOCK_MODE:Z

    .line 323
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_TILT_EFFECT"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_HOME_WALLPAPER_TILT_EFFECT:Z

    .line 329
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 330
    const-string/jumbo v2, "CscFeature_LockScreen_SupportWhiteDefaultWallpaper"

    .line 329
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

    .line 336
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    .line 367
    const-string/jumbo v0, "US_NORTH"

    .line 368
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_LockScreen_ConfigDisplayShorcutCircleArrow"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKIP_SHORTCUT_ARROW_SHOWING_VI:Z

    .line 381
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    .line 382
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->BUILD_CHARACTERISTICS:Ljava/lang/String;

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_TABLET_DEVICE:Z

    .line 395
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_LockScreen_ConfigClockDisplayPolicy"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    sput-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    .line 400
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 401
    const-string/jumbo v2, "CscFeature_LockScreen_HideRoamingTextOnDualClock"

    .line 400
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->HIDE_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    .line 429
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_LockScreen_ConfigDefLcdOnTimeOut"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 428
    sput v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    .line 434
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 435
    const-string/jumbo v2, "CscFeature_LockScreen_ConfigLockTimeoutSetting"

    .line 434
    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    .line 436
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    :goto_17
    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_ATT_LOCK_TIMEOUT:Z

    .line 442
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 443
    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    .line 442
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_HIGH_PERFORMACE_MODE:Z

    .line 448
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 449
    const-string/jumbo v2, "CscFeature_Common_SupportPersianCalendar"

    .line 448
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    .line 454
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    .line 549
    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    .line 53
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CMAS_OPERATOR_NAME:Ljava/lang/String;

    const-string/jumbo v4, "us"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 90
    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v4, "SupportSimPermanentDisable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_1

    .line 91
    :cond_3
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v4, "UseTMOSIMPINLock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_2

    .line 94
    :cond_4
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v4, "PersoLockPasswdLength(4)"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_3

    .line 95
    :cond_6
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "FactoryResetProtectionWarning"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_4

    .line 103
    :cond_7
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseSamsungAccountAuth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_5

    .line 115
    :cond_8
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseCdmaCardText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_6

    .line 116
    :cond_9
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "DisplayPlmnOnBottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_7

    .line 117
    :cond_a
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "BlockCarrierTextWhenSimNotReady"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_8

    .line 118
    :cond_b
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "DisplayUsimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_9

    .line 119
    :cond_c
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseSKTSimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_a

    .line 120
    :cond_d
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseKTTSimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_b

    .line 121
    :cond_e
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseDCMSimLockText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_c

    .line 122
    :cond_f
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseKDDISimText"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_d

    .line 123
    :cond_10
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseDefaultPlmnValueFromNetwork"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_e

    .line 124
    :cond_11
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "UseFixedPlmnValueForUSC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_f

    .line 131
    :cond_12
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "MoveToCallList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_10

    .line 132
    :cond_13
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->EMERGENCY_CALL_BUTTON_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "DisableEmergencyCallWhenOffline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_11

    :cond_14
    move v0, v3

    .line 144
    goto/16 :goto_12

    .line 150
    :cond_15
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DMN_TYPE:Ljava/lang/String;

    const-string/jumbo v2, "Softphone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_13

    :cond_16
    move v0, v3

    .line 158
    goto/16 :goto_14

    :cond_17
    move v0, v1

    .line 161
    goto/16 :goto_15

    :cond_18
    move v3, v1

    .line 185
    goto/16 :goto_16

    .line 436
    :cond_19
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->mConfigLockTimeoutSetting:Ljava/lang/String;

    const-string/jumbo v2, "10min"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_17
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 489
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithoutMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming()Z

    move-result v1

    .line 489
    if-eqz v1, :cond_0

    .line 491
    return v4

    .line 493
    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithMNC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 495
    .local v0, "tpm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "21901"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    return v4

    .line 500
    .end local v0    # "tpm":Landroid/telephony/TelephonyManager;
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardRune;->CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v2, "IgnoreNationalRoamingWithOptus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    const-string/jumbo v1, "50503"

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 500
    if-eqz v1, :cond_2

    .line 502
    return v4

    .line 504
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static canSetDcmLauncher()Z
    .locals 2

    .prologue
    .line 708
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_TEXT_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "UseDCMSimLockText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/KeyguardRune;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    const-string/jumbo v0, "  SUPPORT_DISAPPEAR_DEFAULT_PLMN: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISAPPEAR_DEFAULT_PLMN:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 726
    const-string/jumbo v0, "  SUPPORT_SEC_WAKE_ON_FINGERPRINT: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_WAKE_ON_FINGERPRINT:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 727
    const-string/jumbo v0, "  isNationalRoaming: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isNationalRoaming()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 728
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 723
    return-void
.end method

.method public static factoryResetWithoutUI()Z
    .locals 2

    .prologue
    .line 564
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CARRIER_SECURITY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "factoryResetWithoutUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 613
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    .line 614
    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string/jumbo v4, "com.sec.android.app.clockpackage"

    .line 613
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 616
    const-string/jumbo v3, "CscFeature_Clock_ConfigReplacePackage"

    .line 615
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "packageNameCSC":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 620
    return-object v1

    .line 622
    :cond_0
    return-object v0
.end method

.method public static getDefaultDisplayTimeout()I
    .locals 1

    .prologue
    .line 573
    sget v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    if-lez v0, :cond_0

    .line 574
    sget v0, Lcom/android/keyguard/KeyguardRune;->mConfigDefLcdOnTimeOut:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 573
    :goto_0
    return v0

    .line 574
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public static isArabicIndicForClockDigit()Z
    .locals 2

    .prologue
    .line 583
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "curLanguage":Ljava/lang/String;
    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isDcmLauncher(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 696
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.nttdocomo.android.dhome"

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardRune;->isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeadzoneExist()Z
    .locals 2

    .prologue
    .line 716
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "deadzone"

    sget-object v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DEAD_ZONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x1

    return v0

    .line 719
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDownloadableThemeApplied(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 476
    invoke-static {p0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isLTRClockLayoutDespiteArabic()Z
    .locals 2

    .prologue
    .line 593
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "curLanguage":Ljava/lang/String;
    const-string/jumbo v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNationalRoaming()Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 511
    const-string/jumbo v4, "gsm.sim.operator.numeric"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "simNumeric":Ljava/lang/String;
    const-string/jumbo v4, "gsm.operator.numeric"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ","

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    :cond_0
    return v6

    .line 514
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ","

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 515
    const/4 v2, 0x0

    .local v2, "simMCC":Ljava/lang/String;
    const/4 v0, 0x0

    .line 516
    .local v0, "plmnMCC":Ljava/lang/String;
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 517
    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "simMCC":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 522
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "plmnMCC":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 519
    .local v0, "plmnMCC":Ljava/lang/String;
    .local v2, "simMCC":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "simMCC":Ljava/lang/String;
    goto :goto_0

    .line 524
    :cond_3
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "plmnMCC":Ljava/lang/String;
    goto :goto_1
.end method

.method public static isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 704
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isReadable(Ljava/lang/String;)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 674
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 676
    .local v2, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 677
    .local v1, "bExist":Z
    const/4 v0, 0x0

    .line 679
    .local v0, "bCanRead":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 680
    .local v1, "bExist":Z
    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    .line 687
    .local v0, "bCanRead":Z
    if-nez v0, :cond_1

    .line 688
    const-string/jumbo v3, "KeyguardRune"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isReadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " canRead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return v6

    .line 683
    .local v0, "bCanRead":Z
    :cond_0
    const-string/jumbo v3, "KeyguardRune"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isReadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v6

    .line 692
    .local v0, "bCanRead":Z
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static isSupportWakeOnFingerPrint()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 627
    const-string/jumbo v1, "/sys/class/fingerprint/fingerprint/adm"

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRune;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "resultId":Ljava/lang/String;
    const-string/jumbo v1, "KeyguardRune"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWakeOnFingerPrint( resultId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    .line 630
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    return v2

    :cond_0
    move v1, v2

    .line 629
    goto :goto_0

    .line 634
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isWiFiOnlyDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 551
    sget v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 552
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 553
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    .line 557
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    sget v1, Lcom/android/keyguard/KeyguardRune;->sWiFiOnlyDevice:I

    if-ne v1, v3, :cond_2

    :goto_1
    return v3

    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    move v1, v3

    .line 555
    goto :goto_0

    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_2
    move v3, v2

    .line 557
    goto :goto_1
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 638
    invoke-static {p0}, Lcom/android/keyguard/KeyguardRune;->isReadable(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 639
    const-string/jumbo v9, "KeyguardRune"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readFromFile Failed isReadable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-object v12

    .line 643
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 645
    .local v1, "line":Ljava/lang/String;
    const/4 v6, 0x0

    .line 648
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 649
    .local v4, "nStart":J
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .end local v1    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 652
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 659
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v6, v7

    .line 660
    .end local v4    # "nStart":J
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 662
    if-eqz v6, :cond_1

    .line 664
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 670
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 655
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "nStart":J
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 656
    .local v2, "nEnd":J
    const-string/jumbo v9, "KeyguardRune"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readFromFile finish, time: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v2, v4

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 657
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 656
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 662
    if-eqz v7, :cond_3

    .line 664
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_3
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 665
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 666
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 665
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "nEnd":J
    .end local v4    # "nStart":J
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 666
    const-string/jumbo v9, "KeyguardRune"

    const-string/jumbo v10, "readFromFile"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 661
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 662
    :goto_4
    if-eqz v6, :cond_4

    .line 664
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 661
    :cond_4
    :goto_5
    throw v9

    .line 665
    :catch_3
    move-exception v0

    .line 666
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "KeyguardRune"

    const-string/jumbo v11, "readFromFile"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 661
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "nStart":J
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 659
    .end local v4    # "nStart":J
    .local v1, "line":Ljava/lang/String;
    .local v6, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method public static shouldAddTimeTextForRoamingTime()Z
    .locals 2

    .prologue
    .line 540
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "ShowRomaingTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "SetAutoTimeAsiaSeoul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 602
    const-string/jumbo v0, "lockscreen.rot_override"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 602
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldShowSeoulTextForHomeTime()Z
    .locals 2

    .prologue
    .line 536
    sget-object v0, Lcom/android/keyguard/KeyguardRune;->CONFIG_DUAL_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const-string/jumbo v1, "SetAsiaSeoulForHome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
