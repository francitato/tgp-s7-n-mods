.class Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
.super Ljava/lang/Object;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HarmonyEASService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThirdPartyAppDetails"
.end annotation


# instance fields
.field final mHashValueToPkgNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mThirdPartyPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUnknownPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;-><init>()V

    return-void
.end method
