.class Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MptcpStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/GigaMultiPath;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "GigaMultiPath"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MPTCPStateReceiver: onReceive action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string/jumbo v6, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 352
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get5(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get5(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 353
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get4(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v7}, Lcom/samsung/android/settings/GigaMultiPath;->-get6(Lcom/samsung/android/settings/GigaMultiPath;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get5(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 356
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 357
    const-string/jumbo v6, "GigaMultiPath"

    const-string/jumbo v7, "MPTCP State intent is received"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string/jumbo v6, "mptcp_state"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 359
    .local v2, "mptcpState":I
    if-nez v2, :cond_2

    .line 360
    iget-object v4, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v4}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 347
    .end local v2    # "mptcpState":I
    :cond_1
    :goto_0
    return-void

    .line 361
    .restart local v2    # "mptcpState":I
    :cond_2
    if-ne v2, v4, :cond_3

    .line 362
    iget-object v5, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 364
    :cond_3
    const-string/jumbo v4, "GigaMultiPath"

    const-string/jumbo v6, "Cannot enable/disable MPTCP"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v4}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 367
    .end local v2    # "mptcpState":I
    :cond_4
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 368
    const-string/jumbo v6, "wifi_state"

    .line 369
    const/4 v7, 0x4

    .line 368
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 370
    .local v3, "state":I
    const/4 v6, 0x2

    if-ne v6, v3, :cond_5

    return-void

    .line 371
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6, v3}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap0(Lcom/samsung/android/settings/GigaMultiPath;I)Z

    move-result v1

    .line 372
    .local v1, "isState":Z
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get1(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get2(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    .line 373
    iget-object v4, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaMultiPath;->-set2(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    .line 374
    iget-object v4, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v4}, Lcom/samsung/android/settings/GigaMultiPath;->-get0(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 375
    iget-object v4, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaMultiPath;->-set1(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    .line 376
    iget-object v4, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap3(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    goto :goto_0

    .line 378
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get2(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6, v5}, Lcom/samsung/android/settings/GigaMultiPath;->-set2(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    .line 380
    if-eqz v1, :cond_7

    .line 381
    iget-object v4, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-object v5, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v5}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap3(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    goto/16 :goto_0

    .line 383
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get5(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 384
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get4(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v7}, Lcom/samsung/android/settings/GigaMultiPath;->-get6(Lcom/samsung/android/settings/GigaMultiPath;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get5(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 387
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 388
    iget-object v6, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v6}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    .line 389
    iget-object v7, p0, Lcom/samsung/android/settings/GigaMultiPath$MptcpStateReceiver;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v7}, Lcom/samsung/android/settings/GigaMultiPath;->-get3(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mptcp_value"

    .line 388
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    :goto_1
    invoke-virtual {v6, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    :cond_9
    move v4, v5

    goto :goto_1
.end method
