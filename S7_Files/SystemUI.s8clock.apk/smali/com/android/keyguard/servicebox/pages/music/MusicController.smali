.class public Lcom/android/keyguard/servicebox/pages/music/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/MusicController$1;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsStartedListening:Z

.field private mLastMediaMetadata:Landroid/media/MediaMetadata;

.field private mLastPlaybackState:Landroid/media/session/PlaybackState;

.field private mLock:Ljava/lang/Object;

.field private mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    .line 40
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsStartedListening:Z

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;-><init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 47
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    .line 46
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    return-object v0
.end method

.method private startMusicStateListening()V
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsStartedListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 115
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsStartedListening:Z

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stopMusicStateListening()V
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsStartedListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 126
    return-void

    .line 129
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->removeOnPlaybackStateChangedListener()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsStartedListening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .prologue
    .line 59
    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 63
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .local v0, "c":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    if-ne v0, p1, :cond_1

    monitor-exit v4

    .line 66
    return-void

    .line 70
    .end local v0    # "c":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 72
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {p1, v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 73
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {p1, v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 75
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->startMusicStateListening()V

    .line 58
    :cond_3
    return-void

    .line 61
    .end local v2    # "ref$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .prologue
    .line 81
    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->clear()V

    .line 85
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "iIdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 87
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .line 89
    .local v0, "c":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_2

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "c":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    :cond_3
    monitor-exit v3

    .line 95
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->stopMusicStateListening()V

    .line 80
    :cond_4
    return-void

    .line 85
    .end local v1    # "iIdx":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestCacheData(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .prologue
    .line 101
    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 100
    return-void
.end method

.method public sendKeyToPlayer(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 107
    return-void
.end method
