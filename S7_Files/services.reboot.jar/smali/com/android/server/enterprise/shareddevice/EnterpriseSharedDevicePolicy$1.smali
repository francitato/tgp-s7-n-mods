.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;
.super Ljava/lang/Object;
.source "EnterpriseSharedDevicePolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 738
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Bound to Normal Keyguard!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-set1(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    .line 740
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-get2(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 742
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Normal Keyguard Service dismissed!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-get2(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/IKeyguardService;->keyguardDone(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 748
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Normal Keyguard Service not found!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 755
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unbound from Normal Keyguard!"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->-set1(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    .line 754
    return-void
.end method
