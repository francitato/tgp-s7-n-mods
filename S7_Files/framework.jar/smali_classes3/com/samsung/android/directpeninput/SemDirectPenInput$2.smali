.class Lcom/samsung/android/directpeninput/SemDirectPenInput$2;
.super Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;
.source "SemDirectPenInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/directpeninput/SemDirectPenInput;

    .prologue
    .line 2987
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultReceived(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "clientId"    # I
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3005
    const-string/jumbo v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceCallback onResultReceived() clientID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3007
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3004
    return-void
.end method

.method public onTextDeleted(III)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2998
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "mServiceCallback onTextDeleted()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3000
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2997
    return-void
.end method

.method public onTextInserted(IILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "clientId"    # I
    .param p2, "where"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "nextCursor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2991
    const-string/jumbo v1, "DirectPenInput"

    const-string/jumbo v2, "mServiceCallback onTextInserted()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2993
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2990
    return-void
.end method

.method public onUpdateDialog(I)V
    .locals 4
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3012
    const-string/jumbo v1, "DirectPenInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mServiceCallback onUpdateDialog() clientID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    iget-object v1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$2;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3014
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3011
    return-void
.end method
