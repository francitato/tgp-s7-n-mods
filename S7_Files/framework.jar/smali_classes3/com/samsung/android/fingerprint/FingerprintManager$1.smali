.class Lcom/samsung/android/fingerprint/FingerprintManager$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 780
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 785
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->-wrap1(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    .line 784
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 793
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    .line 796
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->-wrap1(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    .line 792
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 802
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityResumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 807
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivitySaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 812
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 817
    const-string/jumbo v0, "FPMS_FingerprintManager"

    const-string/jumbo v1, "onActivityStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->-get0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    .line 820
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->-wrap1(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    .line 816
    :cond_0
    return-void
.end method
