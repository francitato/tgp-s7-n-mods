.class Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;
.super Landroid/database/ContentObserver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataEnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/settings/DataSlotChoice;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 96
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, "DataEnabledObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 104
    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, "DataEnabledObserver().onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap3(Lcom/samsung/android/settings/DataSlotChoice;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    iget-object v1, p0, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v1}, Lcom/samsung/android/settings/DataSlotChoice;->-get2(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice;->-set0(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    .line 101
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataEnabledObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
