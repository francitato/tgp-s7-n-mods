.class public Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;
.super Ljava/lang/Object;
.source "PermissionApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/model/PermissionApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PmCache"
.end annotation


# instance fields
.field private final mPackageInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;->mPackageInfoCache:Landroid/util/SparseArray;

    .line 408
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;->mPm:Landroid/content/pm/PackageManager;

    .line 407
    return-void
.end method


# virtual methods
.method public declared-synchronized getPackages(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;->mPackageInfoCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 413
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PmCache;->mPackageInfoCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 417
    return-object v0

    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
