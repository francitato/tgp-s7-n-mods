.class public Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
.super Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy$Stub;
.source "EnterpriseCertEnrollPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;,
        Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final DBG:Z

.field private static final KNOX_CERTENROL_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

.field private static final KNOX_CERTENROL_PERMISSION_NEW:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERTENROLL"

.field private static final PACKAGENAME:Ljava/lang/String; = "com.samsung.android.certenrolservice"

.field private static TAG:Ljava/lang/String;

.field private static mScepServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/keystore/ICertEnrollmentService;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private CEP_BIND_ACTION:Ljava/lang/String;

.field final interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/knox/keystore/ICertEnrollmentService;",
            ">;"
        }
    .end annotation
.end field

.field final interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/knox/keystore/ICertEnrollmentService;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

.field private receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

.field private receiverOld:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/util/HashMap;ILjava/lang/String;IZ)V
    .locals 0
    .param p1, "map"    # Ljava/util/HashMap;
    .param p2, "userId"    # I
    .param p3, "certProfileType"    # Ljava/lang/String;
    .param p4, "adminUid"    # I
    .param p5, "removal"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindServiceAndCallPending(Ljava/util/HashMap;ILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "certHash"    # Ljava/lang/String;
    .param p2, "txId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "refNumber"    # Ljava/lang/String;
    .param p6, "callerid"    # I

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "mAdminId"    # I
    .param p3, "mContainerId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    .line 116
    const-string/jumbo v0, "EnterpriseSCEPPolicy"

    sput-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/IEnterpriseCertEnrollPolicy$Stub;-><init>()V

    .line 113
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    .line 114
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 118
    const-string/jumbo v0, "com.samsung.android.CEP_BIND"

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 127
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    .line 128
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiverOld:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    .line 130
    iput-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 134
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    .line 135
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    .line 142
    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EnterpriseSCEPPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 146
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->registerEnterpriseSCEPpolicyReciever()V

    .line 147
    invoke-static {}, Lcom/android/server/enterprise/scep/CEPVersion;->writeVersionInProperties()V

    .line 141
    return-void
.end method

.method private aliasExists(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/EnrollmentProfile;)Z
    .locals 9
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "profile"    # Lcom/samsung/android/knox/keystore/EnrollmentProfile;

    .prologue
    .line 1077
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "In aliasExists..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v4, 0x0

    .line 1080
    .local v4, "exists":Z
    if-nez p2, :cond_0

    .line 1081
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Profile null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return v4

    .line 1085
    :cond_0
    iget-object v6, p2, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCredentialStorage(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v5

    .line 1087
    .local v5, "storage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    iget-object v0, p2, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    .line 1088
    .local v0, "aliasToFind":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1089
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Alias provided is invalid!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return v4

    .line 1093
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1094
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Universal Certificate Storage Manager Service not found!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return v4

    .line 1099
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-interface {v6, p1, v5}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "aliases":[Ljava/lang/String;
    if-nez v1, :cond_4

    .line 1101
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "No alias found for given input!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return v4

    .line 1105
    :cond_4
    const/4 v6, 0x0

    array-length v7, v1

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v3, v1, v6

    .line 1106
    .local v3, "existingAlias":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1107
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Alias \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' found!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    const/4 v4, 0x1

    .line 1115
    .end local v1    # "aliases":[Ljava/lang/String;
    .end local v3    # "existingAlias":Ljava/lang/String;
    :cond_5
    :goto_1
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Alias \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\'found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return v4

    .line 1105
    .restart local v1    # "aliases":[Ljava/lang/String;
    .restart local v3    # "existingAlias":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1112
    .end local v1    # "aliases":[Ljava/lang/String;
    .end local v3    # "existingAlias":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1113
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private bindSCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 23
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    .line 364
    const/16 v17, -0x259

    .line 365
    .local v17, "ret":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 368
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v11, "bindInent":Landroid/content/Intent;
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bindSCEPService - CEPBINDAction -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move-object/from16 v0, p1

    iget v8, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 374
    .local v8, "adminId":I
    move-object/from16 v0, p1

    iget v9, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 375
    .local v9, "containerId":I
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_0

    .line 376
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Caller AdminUid is : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_1

    .line 378
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Caller mContainerId is : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    .line 381
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_2

    .line 382
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Caller mContainerId after correction: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 384
    .local v6, "callID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    .line 385
    const-string/jumbo v5, "user"

    .line 384
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 386
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 387
    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    .line 388
    .local v22, "userlistSize":I
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Device Userlist size : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v2, 0x0

    invoke-virtual {v14, v11, v2, v9}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    .line 390
    .local v19, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v13, 0x0

    .line 391
    .local v13, "flag":Z
    const/4 v12, 0x0

    .line 392
    .local v12, "compName":Landroid/content/ComponentName;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 393
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v12    # "compName":Landroid/content/ComponentName;
    .local v16, "resInfo$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 394
    .local v15, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 395
    .local v18, "servcInfo":Landroid/content/pm/ServiceInfo;
    new-instance v12, Landroid/content/ComponentName;

    .line 396
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 397
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 395
    invoke-direct {v12, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v12, "compName":Landroid/content/ComponentName;
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_4

    .line 399
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bindSCEPService - Package  Name -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 400
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 399
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bindSCEPService - Service  Name -- "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 402
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 401
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_4
    if-eqz v12, :cond_3

    .line 405
    const/4 v13, 0x1

    .line 410
    .end local v12    # "compName":Landroid/content/ComponentName;
    .end local v15    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "resInfo$iterator":Ljava/util/Iterator;
    .end local v18    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_5
    if-nez v13, :cond_6

    const/16 v2, -0x259

    return v2

    .line 411
    :cond_6
    new-instance v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v9, v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V

    .line 412
    .local v4, "cSCEPConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I

    move-result v2

    return v2
.end method

.method private bindServiceAndCallPending(Ljava/util/HashMap;ILjava/lang/String;IZ)V
    .locals 14
    .param p2, "userId"    # I
    .param p3, "certProfileType"    # Ljava/lang/String;
    .param p4, "adminUid"    # I
    .param p5, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/keystore/ICertEnrollmentService;",
            ">;I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    if-eqz p1, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 694
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_0

    .line 695
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Binding for performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    .line 697
    .local v13, "service":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    if-nez p5, :cond_3

    .line 698
    invoke-interface {v13}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->performKeyStoreUnlockedOperations()V

    .line 724
    .end local v13    # "service":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_2

    .line 725
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "End of performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_2
    return-void

    .line 700
    .restart local v13    # "service":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :cond_3
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->performPreAdminRemovalOperations(I)V

    goto :goto_0

    .line 702
    .end local v13    # "service":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getServiceComponent(ILjava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 703
    .local v11, "compName":Landroid/content/ComponentName;
    if-eqz v11, :cond_1

    .line 704
    new-instance v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;

    const/4 v2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$SCEPConnection;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILjava/lang/String;Z)V

    .line 705
    .local v4, "cSCEPConnect":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 706
    .local v3, "action":Landroid/content/Intent;
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 708
    .local v6, "callID":J
    const/4 v10, 0x1

    move-object v2, p0

    move-object/from16 v5, p3

    move/from16 v8, p4

    move/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I

    move-result v12

    .line 709
    .local v12, "res":I
    sget-boolean v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v2, :cond_5

    .line 710
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Binding status for performKeyStoreUnlockedOperations/performPreAdminRemovalOperations for userId["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "] and protocol["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "] status["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "]"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_5
    const/16 v2, -0x258

    if-ne v12, v2, :cond_1

    .line 712
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 713
    :cond_6
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t find the service for userId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-void

    .line 712
    :cond_7
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 716
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    .line 717
    .restart local v13    # "service":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    if-nez p5, :cond_8

    .line 718
    invoke-interface {v13}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->performKeyStoreUnlockedOperations()V

    goto/16 :goto_0

    .line 720
    :cond_8
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->performPreAdminRemovalOperations(I)V

    goto/16 :goto_0
.end method

.method private bindToService(Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;JIIZ)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cSCEPConnect"    # Landroid/content/ServiceConnection;
    .param p3, "mCepProtocol"    # Ljava/lang/String;
    .param p4, "callID"    # J
    .param p6, "adminId"    # I
    .param p7, "containerId"    # I
    .param p8, "withThread"    # Z

    .prologue
    const/4 v3, 0x1

    .line 419
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p7}, Landroid/os/UserHandle;-><init>(I)V

    .line 420
    .local v1, "uHandle":Landroid/os/UserHandle;
    if-eqz p8, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 422
    :goto_0
    if-eqz p8, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 424
    .local v0, "status":Z
    if-eqz v0, :cond_3

    .line 425
    if-eqz p8, :cond_2

    invoke-direct {p0, p7, p3, v3}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V

    .line 427
    :goto_1
    invoke-direct {p0, p6, p7, p3}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->insertOrUpdateDB(IILjava/lang/String;)V

    .line 428
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    const/16 v2, -0x258

    return v2

    .line 421
    .end local v0    # "status":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_0

    .line 426
    .restart local v0    # "status":Z
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p7, p3, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V

    goto :goto_1

    .line 431
    :cond_3
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BindToServiceFailed AppId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | Container= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | protocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    const/16 v2, -0x259

    return v2
.end method

.method private enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 157
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CERTENROLL"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 156
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 150
    :cond_1
    return-void
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 673
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 674
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 675
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 676
    const-string/jumbo v2, "calling this from your main thread can lead to deadlock"

    .line 675
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 672
    :cond_0
    return-void
.end method

.method private getCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    .locals 6
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 662
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 663
    .local v0, "containerId":I
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 664
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 665
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    return-object v2

    .line 668
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    :cond_0
    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCEPService null mAdminUid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] mContainerUid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] and packageName["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1
    return-object v5
.end method

.method private getCredentialStorage(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 2
    .param p1, "credentialStorageBundle"    # Landroid/os/Bundle;

    .prologue
    .line 995
    new-instance v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 996
    .local v0, "credentialStorage":Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    const-string/jumbo v1, "com.sec.enterprise.intent.extra.UCM_CS_MANUFACTURER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    .line 997
    const-string/jumbo v1, "com.sec.enterprise.intent.extra.UCM_CS_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 998
    const-string/jumbo v1, "com.sec.enterprise.intent.extra.UCM_CS_PACKAGENAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 999
    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    .line 164
    const-string/jumbo v1, "enterprise_policy_new"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageInfoOfAdmin(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "callerPkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 654
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 658
    .end local v0    # "callerPkgName":Ljava/lang/String;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-object v0
.end method

.method private getServiceComponent(ILjava/lang/String;)Landroid/content/ComponentName;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "certProfileType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 729
    new-instance v0, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->CEP_BIND_ACTION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "bindInent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 731
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v9, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 732
    .local v6, "servicesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 733
    .local v1, "compName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 734
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "compName":Landroid/content/ComponentName;
    .local v4, "resInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 735
    .local v3, "resInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 736
    .local v5, "servcInfo":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    .line 737
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 738
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 736
    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .local v1, "compName":Landroid/content/ComponentName;
    sget-boolean v7, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v7, :cond_1

    .line 740
    sget-object v7, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getServiceComponent - Package  Name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 741
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 740
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sget-object v7, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getServiceComponent - Service  Name -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 743
    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 742
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_1
    if-eqz v1, :cond_0

    .line 746
    return-object v1

    .line 750
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v3    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "servcInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    return-object v10
.end method

.method private getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    .line 989
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    return-object v0
.end method

.method private insertOrUpdateDB(IILjava/lang/String;)V
    .locals 7
    .param p1, "adminId"    # I
    .param p2, "containerId"    # I
    .param p3, "cepProtocol"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 171
    const/4 v3, 0x0

    .line 174
    .local v3, "ret":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v0, "cv":Landroid/content/ContentValues;
    if-eq p1, v6, :cond_0

    :try_start_0
    const-string/jumbo v4, "cepAgentUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    :cond_0
    if-eq p2, v6, :cond_1

    const-string/jumbo v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v4, "protocol"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v1, "cvWhere":Landroid/content/ContentValues;
    if-eq p1, v6, :cond_3

    const-string/jumbo v4, "cepAgentUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    :cond_3
    if-eq p2, v6, :cond_4

    const-string/jumbo v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    :cond_4
    if-eqz p3, :cond_5

    const-string/jumbo v4, "protocol"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_5
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "EnterpriseCertEnrollPolicy"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 186
    .local v3, "ret":Z
    if-nez v3, :cond_6

    .line 187
    sget-boolean v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v4, :cond_6

    .line 188
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    .line 189
    const-string/jumbo v5, "insertOrUpdateDB - DB operation failed"

    .line 188
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "ret":Z
    :cond_6
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isCallerPackageWhitelistedInUCM(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "credentialStorageBundle"    # Landroid/os/Bundle;

    .prologue
    .line 1028
    const/4 v7, 0x0

    .line 1029
    .local v7, "result":Z
    const/4 v2, 0x0

    .line 1030
    .local v2, "appIdenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1031
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1032
    .local v3, "callingUID":I
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "In isPackageWhitelisted..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    if-nez p2, :cond_0

    .line 1034
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "credentialStorageBundle is null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return v7

    .line 1037
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1038
    .local v4, "data":Landroid/os/Bundle;
    const-string/jumbo v8, "access_type"

    const/16 v9, 0x67

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1040
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1041
    iget-object v8, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCredentialStorage(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v9

    invoke-interface {v8, p1, v9, v4}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 1042
    .local v2, "appIdenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 1043
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 1044
    .local v0, "app":Lcom/samsung/android/knox/AppIdentity;
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1045
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "All packages whitelisted*"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    const/4 v7, 0x1

    .line 1062
    .end local v0    # "app":Lcom/samsung/android/knox/AppIdentity;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v2    # "appIdenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :cond_2
    :goto_0
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "calling uid of caller package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return v7

    .line 1049
    .restart local v0    # "app":Lcom/samsung/android/knox/AppIdentity;
    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    .restart local v2    # "appIdenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :cond_3
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "calling uid of packages "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v3, :cond_1

    .line 1051
    const/4 v7, 0x1

    .line 1052
    goto :goto_0

    .line 1057
    .end local v0    # "app":Lcom/samsung/android/knox/AppIdentity;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .local v2, "appIdenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :cond_4
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "UCM service not found!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1059
    .end local v2    # "appIdenList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/AppIdentity;>;"
    :catch_0
    move-exception v5

    .line 1060
    .local v5, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "credentialStorageBundle"    # Landroid/os/Bundle;

    .prologue
    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, "result":Z
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "In isCredentialStorageManaged..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-nez p2, :cond_0

    .line 1010
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "credentialStorageBundle is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return v1

    .line 1013
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "com.sec.enterprise.intent.extra.UCM_CS_NAME"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getUCMService()Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1016
    iget-object v2, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->manager:Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCredentialStorage(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1023
    .end local v1    # "result":Z
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return v1

    .line 1018
    .restart local v1    # "result":Z
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "UCM service not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isUCMAllowedAndManaged(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "credentialStorageBundle"    # Landroid/os/Bundle;

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->knoxSupportUCM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private knoxSupportUCM()Z
    .locals 4

    .prologue
    .line 1068
    sget-object v1, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "In knoxSupportUCM..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v0, 0x0

    .line 1071
    .local v0, "result":Z
    const/4 v0, 0x1

    .line 1072
    sget-object v1, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Does KNOX support UCM? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return v0
.end method

.method private registerEnterpriseSCEPpolicyReciever()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 197
    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    .line 199
    const-string/jumbo v1, "registerEnterpriseSCEPpolicyReciever - Binding the receiver"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    .line 202
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiverOld:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    .line 203
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v3, "systemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiverOld:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 211
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "systemFilter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .restart local v3    # "systemFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.samsung.action.CEP_CERT_ENROLL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiver:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 214
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_CERTENROLL_INTERNAL"

    move-object v8, v3

    move-object v10, v4

    .line 213
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 216
    iget-object v5, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->receiverOld:Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$EnterpriseCEPpolicyReciever;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 217
    const-string/jumbo v9, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL_INTERNAL"

    move-object v8, v3

    move-object v10, v4

    .line 216
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method private sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "certHash"    # Ljava/lang/String;
    .param p2, "txId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "refNumber"    # Ljava/lang/String;
    .param p6, "callerid"    # I

    .prologue
    .line 282
    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    if-nez v10, :cond_0

    .line 283
    sget-object v10, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, " SendBroadcastToMDMAgent mContext is null----- "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 287
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.knox.intent.CEP_CERT_ENROLL_STATUS"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v3, "intentCaller":Landroid/content/Intent;
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getPackageInfoOfAdmin(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.CERT_HASH"

    invoke-virtual {v3, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.TRANSACTION_ID"

    invoke-virtual {v3, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.STATUS"

    move/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.ALIAS"

    move-object/from16 v0, p4

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.REFERENCE_NUMBER"

    move-object/from16 v0, p5

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.action.knox.certenroll.CEP_CERT_ENROLL_STATUS"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v6, "intentCallerOld":Landroid/content/Intent;
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getPackageInfoOfAdmin(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.CERT_HASH"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.TRANSACTION_ID"

    invoke-virtual {v6, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.STATUS"

    move/from16 v0, p3

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.ALIAS"

    move-object/from16 v0, p4

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string/jumbo v10, "com.samsung.extra.knox.certenroll.REFERENCE_NUMBER"

    move-object/from16 v0, p5

    invoke-virtual {v6, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 304
    .local v4, "id":J
    new-instance v9, Landroid/os/UserHandle;

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 305
    .local v9, "userHandleId":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v10, v3, v9, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 306
    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v10, v6, v9, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 307
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    const-string/jumbo v10, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 311
    .local v8, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 312
    .local v7, "message":Ljava/lang/String;
    if-eqz p3, :cond_d

    .line 313
    const-string/jumbo v7, "CEP service handling request failed : "

    .line 314
    .local v7, "message":Ljava/lang/String;
    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    .line 315
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Request Pending"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 343
    :goto_0
    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 344
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "severity"

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string/jumbo v10, "group"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string/jumbo v10, "outcome"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 348
    const-string/jumbo v10, "uid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string/jumbo v10, "component"

    const-string/jumbo v11, "EnterpriseCertEnrollPolicy"

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v10, "message"

    invoke-virtual {v2, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v10, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 355
    .end local v2    # "cv":Landroid/content/ContentValues;
    :cond_1
    sget-object v10, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v11, " SendBroadcastToMDMAgent ----- "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v10, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " SCEP Intent Calling UserId / UID : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 316
    :cond_2
    const/4 v10, -0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_3

    .line 317
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Error From Server"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 318
    :cond_3
    const/4 v10, -0x2

    move/from16 v0, p3

    if-ne v0, v10, :cond_4

    .line 319
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Network Error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 320
    :cond_4
    const/16 v10, -0x131

    move/from16 v0, p3

    if-ne v0, v10, :cond_5

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Invalid Request"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 322
    :cond_5
    const/16 v10, -0x1f8

    move/from16 v0, p3

    if-ne v0, v10, :cond_6

    .line 323
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "KeyStore is not locked"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 324
    :cond_6
    const/16 v10, -0x134

    move/from16 v0, p3

    if-ne v0, v10, :cond_7

    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "CCM Not Supported"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 326
    :cond_7
    const/16 v10, -0x132

    move/from16 v0, p3

    if-ne v0, v10, :cond_8

    .line 327
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Transaction ID not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 328
    :cond_8
    const/16 v10, -0x191

    move/from16 v0, p3

    if-ne v0, v10, :cond_9

    .line 329
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Certificate Verification failed, Pass proper Hash"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 330
    :cond_9
    const/16 v10, -0x190

    move/from16 v0, p3

    if-ne v0, v10, :cond_a

    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Certificate is missing, Pass proper Hash"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 332
    :cond_a
    const/16 v10, -0x135

    move/from16 v0, p3

    if-ne v0, v10, :cond_b

    .line 333
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Alias Exists"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 334
    :cond_b
    const/4 v10, -0x3

    move/from16 v0, p3

    if-ne v0, v10, :cond_c

    .line 335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Unknown Error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 337
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 340
    .local v7, "message":Ljava/lang/String;
    :cond_d
    const-string/jumbo v7, "CEP service handling request succeeded"

    .local v7, "message":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private sendBroadcastToCEPAgent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "mAdminId"    # I
    .param p3, "mContainerId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v2, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getPackageInfoOfAdmin(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v4, "com.samsung.extra.knox.certenroll.SERVICE_USERID"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string/jumbo v4, "com.samsung.extra.knox.certenroll.SERVICE_PROTOCOL"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 228
    .local v0, "id":J
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 229
    .local v3, "userHandle":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_CERTENROLL"

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 231
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    sget-boolean v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v4, :cond_0

    .line 233
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " sendBroadcastToSCEP ------- SCEP Intent Calling UserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / Service UserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / Service pkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return-void
.end method

.method private takeInterfaceOnBlockingQueue(ILjava/lang/String;Z)V
    .locals 10
    .param p1, "containerId"    # I
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "withThread"    # Z

    .prologue
    .line 438
    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_0

    .line 439
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ">>>> takeInterfaceOnBlockingQueue, containerId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " :thread:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    const/4 v3, 0x0

    .line 443
    .local v3, "interfaceSCEP":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    if-eqz p3, :cond_2

    .line 444
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueueBlocking:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v8, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-object v3, v0

    .line 447
    .local v3, "interfaceSCEP":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "take interface using queue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v3    # "interfaceSCEP":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 453
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "takeInterfaceOnBlockingQueue bind service is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void

    .line 446
    .local v3, "interfaceSCEP":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->interfaceQueuePolling:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v8, 0x1388

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .local v3, "interfaceSCEP":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    goto :goto_0

    .line 448
    .end local v3    # "interfaceSCEP":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 456
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    if-eqz v6, :cond_5

    .line 457
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 458
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 459
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 460
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_4
    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_5

    .line 464
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    .line 465
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeInterfaceOnBlockingQueue service was present overwrite mAdminUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 466
    const-string/jumbo v8, "] pkgName["

    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 466
    const-string/jumbo v8, "] "

    .line 465
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 464
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    :cond_5
    :goto_2
    return-void

    .line 468
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v5, "newEntry":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/knox/keystore/ICertEnrollmentService;>;"
    invoke-virtual {v5, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-boolean v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v6, :cond_5

    .line 472
    sget-object v6, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeInterfaceOnBlockingQueue service was not present overwrite mAdminUid["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 474
    const-string/jumbo v8, "] pkgName["

    .line 473
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 474
    const-string/jumbo v8, "]"

    .line 473
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 472
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public activateEnrollCertService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Framework activateEnrollCertService - calling....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 272
    if-eqz p1, :cond_1

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->bindSCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 275
    :cond_1
    const/16 v0, -0x259

    return v0
.end method

.method public deleteUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "certificateHash"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 598
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-result-object v1

    .line 599
    .local v1, "mScepService":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    if-eqz v1, :cond_0

    .line 601
    :try_start_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-interface {v1, p3, v2}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->deleteUserCertificate(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 606
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public enrollUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/keystore/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "enrollmentProfile"    # Lcom/samsung/android/knox/keystore/EnrollmentProfile;
    .param p5, "hashCACert"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/keystore/EnrollmentProfile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 494
    .local p4, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 495
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-result-object v18

    .line 496
    .local v18, "mScepService":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    const/16 v17, 0x0

    .line 498
    .local v17, "exception":Z
    const/4 v7, -0x3

    .line 500
    .local v7, "errorCode":I
    if-eqz p3, :cond_6

    .line 501
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    const-string/jumbo v5, "UCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Keystore type -> UCM!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->isUCMAllowedAndManaged(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 504
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error in handling UCM Keystore type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v17, 0x1

    .line 506
    const/16 v7, -0x136

    .line 511
    :goto_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->isCallerPackageWhitelistedInUCM(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 512
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "MDM package not whitelisted"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v17, 0x1

    .line 514
    const/16 v7, -0x138

    .line 519
    :goto_1
    if-nez v17, :cond_0

    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->aliasExists(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/EnrollmentProfile;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 521
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Alias \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' already exists!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v17, 0x1

    .line 523
    const/16 v7, -0x135

    .line 535
    :cond_0
    :goto_2
    if-eqz v18, :cond_1

    if-eqz v17, :cond_7

    .line 543
    :cond_1
    :goto_3
    new-instance v19, Ljava/security/SecureRandom;

    invoke-direct/range {v19 .. v19}, Ljava/security/SecureRandom;-><init>()V

    .line 544
    .local v19, "secureRandomg":Ljava/security/SecureRandom;
    invoke-virtual/range {v19 .. v19}, Ljava/security/SecureRandom;->nextInt()I

    move-result v20

    .line 545
    .local v20, "uniqueId":I
    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    if-nez v4, :cond_8

    :cond_2
    const-string/jumbo v8, ""

    .line 546
    .local v8, "alias":Ljava/lang/String;
    :goto_4
    if-eqz v17, :cond_9

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 548
    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 508
    .end local v8    # "alias":Ljava/lang/String;
    .end local v19    # "secureRandomg":Ljava/security/SecureRandom;
    .end local v20    # "uniqueId":I
    :cond_3
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Credential Storage \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "com.sec.enterprise.intent.extra.UCM_CS_NAME"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' is allowed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 516
    :cond_4
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Credential Storage \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    const-string/jumbo v9, "com.sec.enterprise.intent.extra.UCM_CS_NAME"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' is allowed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 525
    :cond_5
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Alias \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' does not exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 531
    :cond_6
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "enrollmentProfile is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 537
    :cond_7
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->enrollUserCertificate(Lcom/samsung/android/knox/keystore/EnrollmentProfile;Ljava/util/List;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 538
    :catch_0
    move-exception v16

    .line 539
    .local v16, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Exception in handlePreAdminRemoval:"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 545
    .end local v16    # "e":Landroid/os/RemoteException;
    .restart local v19    # "secureRandomg":Ljava/security/SecureRandom;
    .restart local v20    # "uniqueId":I
    :cond_8
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    .restart local v8    # "alias":Ljava/lang/String;
    goto/16 :goto_4

    .line 547
    :cond_9
    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/16 v12, -0x259

    move-object/from16 v9, p0

    move-object v13, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5
.end method

.method public getCertEnrollmentStatus(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "requestId"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-result-object v1

    .line 619
    .local v1, "mScepService":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    if-eqz v1, :cond_0

    .line 621
    :try_start_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-interface {v1, p3, v2}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->getCertEnrollmentStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public isEnrollCertServiceActivated(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 640
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 641
    .local v0, "containerId":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 642
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->insertOrUpdateDB(IILjava/lang/String;)V

    .line 643
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 645
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1122
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1123
    sget-object v1, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enterprise SCEP service is added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_0
    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure add service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 686
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Start of unlock of keystore happened."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;)V

    new-array v1, v2, [[Ljava/lang/Integer;

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$KeystoreUnlockOperations;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 688
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "End of unlock of keystore happened."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 963
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 983
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->mScepServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 982
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 971
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnPreAdminRemoval started with thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v4, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;-><init>(Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;ILcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;)V

    new-array v1, v3, [[Ljava/lang/Integer;

    new-array v2, v3, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy$AdminRemoveOperations;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 978
    sget-object v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnPreAdminRemoval End with thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void
.end method

.method public renewUserCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "mCepProtocol"    # Ljava/lang/String;
    .param p3, "certificateHash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 568
    .local p4, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->enforcePermission(Lcom/samsung/android/knox/ContextInfo;)V

    .line 569
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->getCEPService(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/keystore/ICertEnrollmentService;

    move-result-object v11

    .line 570
    .local v11, "mScepService":Lcom/samsung/android/knox/keystore/ICertEnrollmentService;
    const/4 v10, 0x0

    .line 571
    .local v10, "exception":Z
    if-eqz v11, :cond_0

    .line 573
    :try_start_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v11, v0, v1, v2}, Lcom/samsung/android/knox/keystore/ICertEnrollmentService;->renewUserCertificate(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 574
    :catch_0
    move-exception v9

    .line 575
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception in handlePreAdminRemoval:"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/4 v10, 0x1

    .line 579
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    .line 580
    .local v12, "secureRandomg":Ljava/security/SecureRandom;
    invoke-virtual {v12}, Ljava/security/SecureRandom;->nextInt()I

    move-result v13

    .line 581
    .local v13, "uniqueId":I
    if-eqz v10, :cond_1

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v5, -0x3

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 583
    :goto_0
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 582
    :cond_1
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v6, ""

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/16 v5, -0x259

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->sendBroadcastToAgentStatus(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method
