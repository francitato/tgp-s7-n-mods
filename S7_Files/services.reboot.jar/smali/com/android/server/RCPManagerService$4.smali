.class Lcom/android/server/RCPManagerService$4;
.super Landroid/content/pm/IKnoxModeChangeObserver$Stub;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService;->registerKnoxModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/RCPManagerService;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/server/RCPManagerService$4;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxModeChange(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 768
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " RCP.onKnoxModeChange called for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :try_start_0
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v1

    .line 771
    const-string/jumbo v2, "IKnoxModeChangeObserver: calling startRCPProxy onKnoxModeChange "

    .line 770
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/android/server/RCPManagerService$4;->this$0:Lcom/android/server/RCPManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/RCPManagerService;->startRCPProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/RCPManagerService;->-get2()Ljava/lang/String;

    move-result-object v1

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IKnoxModeChangeObserver : Exception while startRCPProxy() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 776
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 775
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 774
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
