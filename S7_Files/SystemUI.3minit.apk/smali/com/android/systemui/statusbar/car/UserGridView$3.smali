.class Lcom/android/systemui/statusbar/car/UserGridView$3;
.super Ljava/lang/Object;
.source "UserGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/UserGridView;->onUserSwitched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/UserGridView;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$3;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView$3;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridView;->-wrap0(Lcom/android/systemui/statusbar/car/UserGridView;)V

    .line 102
    return-void
.end method
