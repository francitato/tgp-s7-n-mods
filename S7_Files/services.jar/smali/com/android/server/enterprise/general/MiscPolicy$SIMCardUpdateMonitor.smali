.class Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMCardUpdateMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CURRENT_SIM_COUNTRY_ISO:Ljava/lang/String; = "CurrentSimCountryIso"

.field private static final CURRENT_SIM_OPERATOR:Ljava/lang/String; = "CurrentSimOperator"

.field private static final CURRENT_SIM_OPERATOR_NAME:Ljava/lang/String; = "CurrentSimOperatorName"

.field private static final CURRENT_SIM_PHONE_NUMBER:Ljava/lang/String; = "CurrentSimPhoneNumber"

.field private static final CURRENT_SIM_SERIAL_NUMBER:Ljava/lang/String; = "CurrentSimSerialNumber"

.field private static final PREVIOUS_SIM_COUNTRY_ISO:Ljava/lang/String; = "PreviousSimCountryIso"

.field private static final PREVIOUS_SIM_OPERATOR:Ljava/lang/String; = "PreviousSimOperator"

.field private static final PREVIOUS_SIM_OPERATOR_NAME:Ljava/lang/String; = "PreviousSimOperatorName"

.field private static final PREVIOUS_SIM_PHONE_NUMBER:Ljava/lang/String; = "PreviousSimPhoneNumber"

.field private static final PREVIOUS_SIM_SERIAL_NUMBER:Ljava/lang/String; = "PreviousSimSerialNumber"

.field private static final SIM_CARD_PREF:Ljava/lang/String; = "/data/system/SimCard.dat"

.field private static final SIM_CHANGE_OPERATION:Ljava/lang/String; = "SimChangeOperation"

.field private static final SIM_CHANGE_TIME:Ljava/lang/String; = "SimChangeTime"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mCtxt:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->saveSimState()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/general/MiscPolicy;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    const-string/jumbo v1, "SIMCardUpdateMonitor "

    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->TAG:Ljava/lang/String;

    .line 625
    new-instance v1, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$SIMCardBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 654
    new-instance v1, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor$1;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    iput-object p2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    .line 646
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    .line 647
    const-string/jumbo v2, "phone"

    .line 646
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 648
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->startSIMCardUpdates()V

    .line 649
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 644
    return-void
.end method

.method private saveSimState()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 665
    const-string/jumbo v2, "CurrentSimSerialNumber"

    .line 666
    const-string/jumbo v3, "/data/system/SimCard.dat"

    .line 664
    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "currentSN":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 668
    if-eqz v2, :cond_0

    .line 670
    return-void

    .line 674
    :cond_0
    const-string/jumbo v2, "PreviousSimCountryIso"

    .line 675
    const-string/jumbo v3, "CurrentSimCountryIso"

    const-string/jumbo v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 674
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 676
    const-string/jumbo v2, "PreviousSimOperator"

    .line 677
    const-string/jumbo v3, "CurrentSimOperator"

    const-string/jumbo v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 676
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 678
    const-string/jumbo v2, "PreviousSimOperatorName"

    .line 679
    const-string/jumbo v3, "CurrentSimOperatorName"

    const-string/jumbo v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 680
    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 678
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 681
    const-string/jumbo v2, "PreviousSimSerialNumber"

    .line 682
    const-string/jumbo v3, "CurrentSimSerialNumber"

    const-string/jumbo v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 683
    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 681
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 684
    const-string/jumbo v2, "PreviousSimPhoneNumber"

    .line 685
    const-string/jumbo v3, "CurrentSimPhoneNumber"

    const-string/jumbo v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 684
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 688
    const-string/jumbo v2, "CurrentSimCountryIso"

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 689
    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 688
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 690
    const-string/jumbo v2, "CurrentSimOperator"

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 691
    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 690
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 692
    const-string/jumbo v2, "CurrentSimOperatorName"

    .line 693
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 692
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 694
    const-string/jumbo v2, "CurrentSimSerialNumber"

    .line 695
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 694
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 696
    const-string/jumbo v2, "CurrentSimPhoneNumber"

    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 697
    const-string/jumbo v4, "/data/system/SimCard.dat"

    .line 696
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 700
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/SimCard.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    .local v1, "lFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a0

    invoke-static {v2, v3, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 663
    return-void
.end method

.method private startSIMCardUpdates()V
    .locals 3

    .prologue
    .line 707
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 708
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mCtxt:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    return-void
.end method
