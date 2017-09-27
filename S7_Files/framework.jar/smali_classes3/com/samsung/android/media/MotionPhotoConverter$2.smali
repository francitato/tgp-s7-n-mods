.class Lcom/samsung/android/media/MotionPhotoConverter$2;
.super Landroid/media/MediaCodec$Callback;
.source "MotionPhotoConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/MotionPhotoConverter;->encodeMp4()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sawInoutEOS:Z

.field sawOutputEOS:Z

.field final synthetic this$0:Lcom/samsung/android/media/MotionPhotoConverter;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/MotionPhotoConverter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/media/MotionPhotoConverter;

    .prologue
    const/4 v0, 0x0

    .line 634
    iput-object p1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 635
    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawInoutEOS:Z

    .line 636
    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawOutputEOS:Z

    .line 634
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 3
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "e"    # Landroid/media/MediaCodec$CodecException;

    .prologue
    .line 704
    const-string/jumbo v0, "MotionPhotoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "encoder: onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderStopped:Z

    .line 706
    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v1, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v0, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 703
    return-void

    .line 706
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 13
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 642
    iget-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawInoutEOS:Z

    if-nez v0, :cond_2

    .line 644
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 646
    .local v11, "inputBuffer":Ljava/nio/ByteBuffer;
    if-eqz v11, :cond_3

    .line 647
    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v0, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 648
    .local v8, "decodedBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    .line 649
    .local v7, "capacity":I
    add-int/lit8 v0, v7, -0x10

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 650
    .local v10, "flags":I
    add-int/lit8 v0, v7, -0xc

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 651
    .local v3, "size":I
    add-int/lit8 v0, v7, -0x8

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 653
    .local v12, "presentationTimeUs":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 654
    invoke-virtual {v8}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 659
    and-int/lit8 v0, v10, 0x4

    if-eqz v0, :cond_0

    .line 660
    const-string/jumbo v0, "MotionPhotoConverter"

    const-string/jumbo v1, "encoder: saw input EOS!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawInoutEOS:Z

    .line 664
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 665
    iget-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawInoutEOS:Z

    if-eqz v0, :cond_1

    const/4 v6, 0x4

    .line 664
    :cond_1
    const/4 v2, 0x0

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 639
    .end local v3    # "size":I
    .end local v7    # "capacity":I
    .end local v8    # "decodedBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "flags":I
    .end local v11    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v12    # "presentationTimeUs":Ljava/lang/Long;
    :cond_2
    :goto_0
    return-void

    .line 667
    .restart local v11    # "inputBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    const-string/jumbo v0, "MotionPhotoConverter"

    const-string/jumbo v1, "encoder: input buffer is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    .end local v11    # "inputBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v9

    .line 670
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 5
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 679
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 680
    const-string/jumbo v1, "MotionPhotoConverter"

    const-string/jumbo v2, "encoder: saw output EOS!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iput-boolean v4, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawOutputEOS:Z

    .line 684
    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 686
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_2

    .line 687
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v1, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget v2, v2, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    invoke-virtual {v1, v2, v0, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 688
    invoke-virtual {p1, p2, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 690
    iget-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawInoutEOS:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->sawOutputEOS:Z

    if-eqz v1, :cond_1

    .line 691
    const-string/jumbo v1, "MotionPhotoConverter"

    const-string/jumbo v2, "encoder: Encoding was completed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iput-boolean v4, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderStopped:Z

    .line 693
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v2, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 694
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v1, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mEncoderWorkerLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 676
    :cond_1
    :goto_0
    return-void

    .line 693
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 698
    :cond_2
    const-string/jumbo v1, "MotionPhotoConverter"

    const-string/jumbo v2, "encoder: output buffer is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 713
    const-string/jumbo v1, "MotionPhotoConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoder: onOutputFormatChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-boolean v1, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    if-eqz v1, :cond_0

    .line 717
    :try_start_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Format changed twice!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 724
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v2, v2, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mEncVideoTrackIndex:I

    .line 725
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v1, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget v2, v2, Lcom/samsung/android/media/MotionPhotoConverter;->mRotationDegrees:I

    invoke-virtual {v1, v2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 726
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v1, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 727
    iget-object v1, p0, Lcom/samsung/android/media/MotionPhotoConverter$2;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/media/MotionPhotoConverter;->mOutMuxerStarted:Z

    .line 712
    return-void
.end method
