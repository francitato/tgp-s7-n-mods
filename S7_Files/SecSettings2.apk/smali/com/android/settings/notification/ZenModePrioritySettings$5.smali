.class Lcom/android/settings/notification/ZenModePrioritySettings$5;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModePrioritySettings;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 138
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v2}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get0(Lcom/android/settings/notification/ZenModePrioritySettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v6

    .line 139
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 140
    .local v1, "val":Z
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v3, 0xab

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 141
    sget-boolean v2, Lcom/android/settings/notification/ZenModePrioritySettings;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrefChange allowRepeatCallers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    .line 143
    const/16 v3, 0x10

    .line 142
    invoke-static {v2, v1, v3}, Lcom/android/settings/notification/ZenModePrioritySettings;->-wrap0(Lcom/android/settings/notification/ZenModePrioritySettings;ZI)I

    move-result v0

    .line 144
    .local v0, "priorityCategories":I
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v3}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 145
    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$5;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-static {v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iget v5, v5, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 144
    invoke-static {v2, v0, v3, v4, v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->-wrap1(Lcom/android/settings/notification/ZenModePrioritySettings;IIII)V

    .line 146
    return v6
.end method
