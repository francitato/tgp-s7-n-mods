.class Lcom/android/keyguard/util/ShortcutManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/util/ShortcutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/util/ShortcutManager;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string/jumbo v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const-string/jumbo v3, "ShortcutManager"

    const-string/jumbo v4, "recieve LOCKED_BOOT_COMPLETED via BroadcastReceiver, update Shortcuts"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v3}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "targetPackage":Ljava/lang/String;
    const-string/jumbo v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : Intent.EXTRA_REPLACING false,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/keyguard/util/ShortcutManager;->-get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/keyguard/util/ShortcutManager;->-get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 151
    if-eqz v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v3, v1}, Lcom/android/keyguard/util/ShortcutManager;->-wrap3(Lcom/android/keyguard/util/ShortcutManager;I)V

    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v1    # "i":I
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 159
    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 158
    if-eqz v3, :cond_6

    .line 160
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 162
    .restart local v2    # "targetPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v6, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/keyguard/util/ShortcutManager;->-get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    .line 164
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/keyguard/util/ShortcutManager;->-get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 163
    if-eqz v3, :cond_5

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    iget-object v4, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/keyguard/util/ShortcutManager;->-get1(Lcom/android/keyguard/util/ShortcutManager;)[Lcom/android/keyguard/util/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v3, v1, v4}, Lcom/android/keyguard/util/ShortcutManager;->-wrap4(Lcom/android/keyguard/util/ShortcutManager;ILandroid/content/ComponentName;)V

    .line 162
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    .end local v1    # "i":I
    .end local v2    # "targetPackage":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/keyguard/util/ShortcutManager$3;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v3}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_0
.end method
