.class Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2$1;
.super Ljava/lang/Object;
.source "GrantPermissionsViewHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2$1;->this$1:Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2$1;->this$1:Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;

    iget-object v0, v0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->-wrap0(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)V

    .line 257
    return-void
.end method
