.class public Landroid/net/ip/IpManager$WaitForProvisioningCallback;
.super Landroid/net/ip/IpManager$Callback;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForProvisioningCallback"
.end annotation


# instance fields
.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/net/ip/IpManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 151
    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 153
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 150
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iput-object p1, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    .line 145
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 142
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 133
    monitor-enter p0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/net/ip/IpManager$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
