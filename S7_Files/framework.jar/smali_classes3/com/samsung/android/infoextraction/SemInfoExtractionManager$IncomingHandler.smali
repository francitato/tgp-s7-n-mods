.class Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;
.super Landroid/os/Handler;
.source "SemInfoExtractionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, -0x1

    .line 432
    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "received Extraction data : success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "req_time"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 434
    .local v0, "receivedReqTime":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v2, "semExtractedInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/infoextraction/SemExtractedInfo;>;"
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "SemExtractedInfo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 436
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v3, v3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    if-eqz v3, :cond_0

    .line 437
    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sent to mOnExtractionCompletedListener ReqTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " extracted size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v3, v3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    invoke-interface {v3, v0, v1, v2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;->onExtractionCompleted(JLjava/util/List;)V

    .line 439
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-static {v3, v6, v7}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-set1(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;J)J

    .line 440
    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mInfoExtractionResultListener is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v3, v3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    if-eqz v3, :cond_1

    .line 445
    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sent to InfoExtractionListener ReqTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " extracted size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v3, v3, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    long-to-int v4, v0

    invoke-interface {v3, v4, v2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;->onCompleted(ILjava/util/List;)V

    .line 450
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;->this$0:Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    invoke-static {v3, v6, v7}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-set1(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;J)J

    .line 431
    return-void

    .line 448
    :cond_1
    invoke-static {}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mInfoExtractionListener is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
