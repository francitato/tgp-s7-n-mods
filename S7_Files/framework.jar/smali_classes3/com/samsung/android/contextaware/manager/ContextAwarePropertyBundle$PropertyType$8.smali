.class final enum Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType$8;
.super Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle$PropertyType;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->-get11()[I

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, [I

    if-eqz v0, :cond_0

    .line 249
    nop

    nop

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->-set10([I)[I

    .line 247
    :cond_0
    return-void
.end method
