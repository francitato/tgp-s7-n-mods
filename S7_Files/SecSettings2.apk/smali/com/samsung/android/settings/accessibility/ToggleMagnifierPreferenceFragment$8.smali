.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$8;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->showFingerMagnifierDisablePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$8;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 518
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$8;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "finger_magnifier"

    const/4 v3, 0x0

    .line 517
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 518
    const/4 v2, 0x1

    .line 517
    if-ne v1, v2, :cond_0

    .line 518
    const/4 v0, 0x1

    .line 520
    .local v0, "state":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$8;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    .line 516
    return-void

    .line 519
    .end local v0    # "state":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "state":Z
    goto :goto_0
.end method
