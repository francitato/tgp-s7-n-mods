.class final Landroid/app/SystemServiceRegistry$12;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/samsung/android/content/clipboard/SemClipboardManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/content/clipboard/SemClipboardManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 368
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 369
    iget-object v2, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 368
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$12;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    return-object v0
.end method
