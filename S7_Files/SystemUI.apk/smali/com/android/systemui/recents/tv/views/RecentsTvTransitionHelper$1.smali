.class Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$1;
.super Ljava/lang/Object;
.source "RecentsTvTransitionHelper.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;->launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;Lcom/android/systemui/recents/tv/views/TaskCardView;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;
    .param p2, "val$task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$1;->this$0:Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/RecentsTvTransitionHelper$1;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 66
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 62
    return-void
.end method
