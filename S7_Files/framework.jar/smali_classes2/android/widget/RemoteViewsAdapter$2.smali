.class Landroid/widget/RemoteViewsAdapter$2;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 942
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 945
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    const/4 v0, -0x1

    .line 948
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    monitor-enter v2

    .line 949
    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    .line 951
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 953
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/RemoteViewsAdapter;->-wrap3(Landroid/widget/RemoteViewsAdapter;IZ)V

    .line 956
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-wrap1(Landroid/widget/RemoteViewsAdapter;)V

    .line 944
    .end local v0    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 948
    .restart local v0    # "position":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 959
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$2;->this$0:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-wrap0(Landroid/widget/RemoteViewsAdapter;)V

    goto :goto_0
.end method
