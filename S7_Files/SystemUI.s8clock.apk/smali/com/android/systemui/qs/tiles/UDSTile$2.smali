.class Lcom/android/systemui/qs/tiles/UDSTile$2;
.super Lcom/android/systemui/qs/SystemSetting;
.source "UDSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UDSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UDSTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UDSTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/UDSTile;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UDSTile$2;->this$0:Lcom/android/systemui/qs/tiles/UDSTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/UDSTile;->refreshState()V

    .line 76
    return-void
.end method
