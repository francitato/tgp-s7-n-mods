.class public final enum Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
.super Ljava/lang/Enum;
.source "WifiHs20SubscribedSp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CredType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

.field public static final enum SIM:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

.field public static final enum TLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

.field public static final enum TTLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

.field public static final enum UNKNOWN:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    const-string/jumbo v1, "TTLS"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TTLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    const-string/jumbo v1, "TLS"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    const-string/jumbo v1, "SIM"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->SIM:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->UNKNOWN:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TTLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->SIM:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->UNKNOWN:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->$VALUES:[Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->$VALUES:[Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    return-object v0
.end method
