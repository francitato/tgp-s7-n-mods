.class Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest$1;
.super Ljava/lang/Object;
.source "LibraryStressTest.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/autotest/LibraryStressTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContextChanged(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 55
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CMD_PROCESS_FAULT_DETECTION:I

    if-ne p1, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "Service"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    const-string/jumbo v1, ", CheckResult="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "CheckResult"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
