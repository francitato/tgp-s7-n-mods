.class Lcom/samsung/android/settings/notification/SoundSettings$21;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SoundSettings;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/SoundSettings;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SoundSettings$21;->this$0:Lcom/samsung/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SoundSettings;->-wrap5(Lcom/samsung/android/settings/notification/SoundSettings;)V

    .line 1156
    :cond_0
    return-void
.end method
