.class Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;
.super Ljava/lang/Object;
.source "DcmKeyguardLiveUXManager.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get0()[Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get0()[Landroid/net/Uri;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 111
    if-eqz v2, :cond_3

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get4(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Z

    move-result v0

    .line 114
    .local v0, "oldSavingMode":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get1(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get1(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    .line 114
    :cond_1
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-set0(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)Z

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get4(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get4(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get2(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-set1(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)Z

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get4(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->-get5(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->showDCMLiveUX()V

    .line 110
    .end local v0    # "oldSavingMode":Z
    :cond_3
    :goto_0
    return-void

    .line 122
    .restart local v0    # "oldSavingMode":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->hideDCMLiveUX()V

    goto :goto_0
.end method
