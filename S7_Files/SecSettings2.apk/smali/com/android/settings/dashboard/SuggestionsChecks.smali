.class public Lcom/android/settings/dashboard/SuggestionsChecks;
.super Ljava/lang/Object;
.source "SuggestionsChecks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/SuggestionsChecks$1;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/app/IWallpaperManagerCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/settings/dashboard/SuggestionsChecks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/SuggestionsChecks$1;-><init>(Lcom/android/settings/dashboard/SuggestionsChecks;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mCallback:Landroid/app/IWallpaperManagerCallback;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SuggestionsChecks;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method
