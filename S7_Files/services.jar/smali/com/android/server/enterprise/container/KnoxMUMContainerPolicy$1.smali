.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 504
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    const-string/jumbo v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    .line 506
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 508
    .local v1, "state":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get11(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "***** Restarting Bluetooth *****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-set1(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Z)Z

    .line 511
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 503
    .end local v1    # "state":I
    :cond_0
    return-void
.end method
