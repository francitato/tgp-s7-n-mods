.class final Landroid/os/BinderProxy;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# instance fields
.field private mObject:J

.field private mOrgue:J

.field private final mSelf:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/BinderProxy;->mSelf:Ljava/lang/ref/WeakReference;

    .line 683
    return-void
.end method

.method private final native destroy()V
.end method

.method private isMsgForGoogleLocation(Landroid/os/Parcel;)Z
    .locals 3
    .param p1, "data"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 715
    if-nez p1, :cond_0

    return v2

    .line 716
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 718
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    const/4 v0, 0x1

    return v0

    .line 721
    :cond_2
    return v2
.end method

.method private static final sendDeathNotice(Landroid/os/IBinder$DeathRecipient;)V
    .locals 3
    .param p0, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 701
    :try_start_0
    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "BinderNative"

    const-string/jumbo v2, "Uncaught exception from death notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendInfoToNSFLP(ILandroid/os/Parcel;)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;

    .prologue
    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 728
    .local v3, "mParcel":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, p2, v7, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 730
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 732
    sget-object v6, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v6, v3}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelableParcel;

    .line 734
    .local v5, "pp":Landroid/os/ParcelableParcel;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "interfaceName"

    invoke-virtual {p2}, Landroid/os/Parcel;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 738
    .local v4, "msg":Landroid/os/Message;
    const/16 v6, 0xc8

    iput v6, v4, Landroid/os/Message;->what:I

    .line 739
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 741
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v4, Landroid/os/Message;->arg2:I

    .line 742
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 744
    const-string/jumbo v6, "location"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v2

    .line 745
    .local v2, "mLocationManager":Landroid/location/ILocationManager;
    invoke-interface {v2, v4}, Landroid/location/ILocationManager;->notifyNSFLP(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 724
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "mLocationManager":Landroid/location/ILocationManager;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "pp":Landroid/os/ParcelableParcel;
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "Binder_FLP"

    const-string/jumbo v7, "failed to send info to nsflp"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 749
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 750
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 749
    throw v6
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 641
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 642
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 644
    const v2, 0x5f444d50

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 638
    return-void

    .line 646
    :catchall_0
    move-exception v2

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 654
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 655
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 656
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 658
    const v2, 0x5f444d50

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    return-void

    .line 659
    :catchall_0
    move-exception v2

    .line 660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    invoke-direct {p0}, Landroid/os/BinderProxy;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 688
    return-void

    .line 691
    :catchall_0
    move-exception v0

    .line 692
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 691
    throw v0
.end method

.method public native getInterfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native isBinderAlive()Z
.end method

.method public native linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native pingBinder()Z
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 617
    const/4 v0, 0x0

    return-object v0
.end method

.method public shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 668
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 669
    .local v1, "reply":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 670
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 671
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 672
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 673
    invoke-virtual {p5, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 675
    const v2, 0x5f434d44

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/os/BinderProxy;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 666
    return-void

    .line 677
    :catchall_0
    move-exception v2

    .line 678
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    throw v2
.end method

.method public transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    const-string/jumbo v0, "Unreasonably large binder buffer"

    invoke-static {p0, p1, p2, v0}, Landroid/os/Binder;->checkParcel(Landroid/os/IBinder;ILandroid/os/Parcel;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Landroid/os/Binder;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->addTrace()V

    .line 625
    :cond_0
    invoke-direct {p0, p2}, Landroid/os/BinderProxy;->isMsgForGoogleLocation(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/os/BinderProxy;->sendInfoToNSFLP(ILandroid/os/Parcel;)V

    .line 628
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BinderProxy;->transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public native transactNative(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
.end method
