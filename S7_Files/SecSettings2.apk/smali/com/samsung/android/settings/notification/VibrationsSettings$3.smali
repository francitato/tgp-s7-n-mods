.class Lcom/samsung/android/settings/notification/VibrationsSettings$3;
.super Ljava/lang/Object;
.source "VibrationsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VibrationsSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VibrationsSettings;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 147
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    .local v0, "val":Z
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/VibrationsSettings;->-wrap0(Lcom/samsung/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 149
    const-string/jumbo v3, "vibrate_when_ringing"

    .line 150
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 148
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 150
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
