.class Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 3029
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 3034
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 3043
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2, p1}, Lcom/android/internal/app/ResolverActivity;->-set1(Lcom/android/internal/app/ResolverActivity;I)I

    .line 3044
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get28(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->-get29(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3045
    .local v1, "prevIcon":Landroid/widget/ImageView;
    const v2, 0x1080805

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3047
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-get28(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3048
    .local v0, "curIcon":Landroid/widget/ImageView;
    const v2, 0x1080804

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3050
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2, p1}, Lcom/android/internal/app/ResolverActivity;->-set10(Lcom/android/internal/app/ResolverActivity;I)I

    .line 3038
    return-void
.end method
