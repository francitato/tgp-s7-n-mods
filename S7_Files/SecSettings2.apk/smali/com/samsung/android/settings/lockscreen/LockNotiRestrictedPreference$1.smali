.class Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;
.super Ljava/lang/Object;
.source "LockNotiRestrictedPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 170
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-get1(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-set0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Z)Z

    .line 175
    if-ltz p3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge p3, v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;

    move-result-object v0

    .line 178
    .local v0, "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    if-eqz v0, :cond_2

    .line 179
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 180
    iget-object v3, v0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 179
    invoke-static {v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 181
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-get0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;)Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$ReselectionSpinner;->setSelection(I)V

    .line 169
    .end local v0    # "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    return-void

    .line 182
    .restart local v0    # "item":Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$RestrictedItem;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/lockscreen/LockNotiRestrictedPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
