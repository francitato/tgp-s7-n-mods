.class Lcom/android/server/cover/CoverManagerService$5;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$5;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, -0x4

    .line 194
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 196
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 193
    return-void
.end method
