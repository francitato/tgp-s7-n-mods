.class Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;
.super Ljava/lang/Object;
.source "SecSettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

.field final synthetic val$highlight:Landroid/graphics/drawable/Drawable;

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
    .param p2, "val$listView"    # Landroid/widget/ListView;
    .param p3, "val$position"    # I
    .param p4, "val$highlight"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$position:I

    iput-object p4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    new-instance v1, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3$1;

    iget v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$position:I

    iget-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;->val$highlight:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3$1;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;ILandroid/widget/ListView;Landroid/graphics/drawable/Drawable;)V

    .line 481
    const-wide/16 v2, 0x3e8

    .line 465
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    return-void
.end method
