.class Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field finished:Z

.field packageName:Ljava/lang/String;

.field success:Z

.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->this$0:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z

    .line 299
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 300
    iput-boolean p2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 296
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
