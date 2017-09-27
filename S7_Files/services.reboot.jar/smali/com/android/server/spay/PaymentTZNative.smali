.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "PaymentTZNative.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field private mMOPTZNativePtr_:J

.field private mProcessName:Ljava/lang/String;

.field private mRecvBufSize:I

.field private mRootName:Ljava/lang/String;

.field private mSendBufSize:I

.field private mTAId:I

.field private mTATechnology:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    .line 14
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "taId"    # I
    .param p2, "taTechnology"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/String;
    .param p4, "process"    # Ljava/lang/String;
    .param p5, "sendbufsize"    # I
    .param p6, "recvbufsize"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PaymentTZNative constructor: taId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iput p1, p0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 30
    iput p5, p0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    .line 31
    iput p6, p0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    .line 32
    iput-object p2, p0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(IJJ)Z
    .locals 10
    .param p1, "taFd"    # I
    .param p2, "taOffset"    # J
    .param p4, "taSize"    # J

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x1

    return v0

    .line 43
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p4, v0

    if-lez v0, :cond_2

    .line 44
    :cond_1
    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "SpayFw_loadTA: cannot get ta offset or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_2
    long-to-int v2, p2

    long-to-int v3, p4

    iget v4, p0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    .line 49
    iget v5, p0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iget v6, p0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iget-object v7, p0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    .line 48
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/spay/PaymentTZNative;->nativeCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 50
    iget-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 51
    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "Error: nativeCreateTLCommunicationContext failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_3
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public native nativeCreateTLCommunicationContext(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 6
    .param p1, "request"    # Landroid/spay/TACommandRequest;

    .prologue
    .line 72
    sget-boolean v2, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PaymentManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PaymentTZNative::processTACommand: request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; mMOPTZNativePtr_ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    new-instance v0, Landroid/spay/TACommandResponse;

    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    .line 74
    .local v0, "response":Landroid/spay/TACommandResponse;
    invoke-direct {p0, p1, v0}, Lcom/android/server/spay/PaymentTZNative;->nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    move-result v1

    .line 75
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 76
    const-string/jumbo v2, "PaymentManagerService"

    const-string/jumbo v3, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x0

    return-object v2

    .line 79
    :cond_1
    return-object v0
.end method

.method public unloadTA()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 61
    iget-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/spay/PaymentTZNative;->nativeDestroyTLCommunicationContext()V

    .line 67
    iput-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 68
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "PaymentTZNative::unloadTA called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    return-void
.end method
