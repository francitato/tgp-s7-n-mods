.class Lcom/android/server/net/NetworkPolicyManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v13, "android.intent.extra.UID"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1078
    .local v11, "uid":I
    const/4 v13, -0x1

    if-ne v11, v13, :cond_0

    return-void

    .line 1080
    :cond_0
    const-string/jumbo v13, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1085
    const/4 v4, 0x0

    .line 1086
    .local v4, "cscAllowRRList":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    .line 1087
    const-string/jumbo v14, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    .line 1086
    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1088
    .local v4, "cscAllowRRList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1090
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 1091
    const-string/jumbo v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1094
    .local v8, "listApps":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v13, v8

    if-ge v6, v13, :cond_1

    .line 1095
    aget-object v13, v8, v6

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1097
    .local v9, "pkg":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1098
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_3

    .line 1099
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 1100
    .local v3, "appid":I
    if-ne v3, v11, :cond_3

    .line 1101
    const-string/jumbo v13, "NetworkPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "package name: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string/jumbo v13, "NetworkPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Apply Roaming Reduction Whitelist. uid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/16 v14, 0x1002

    const/4 v15, 0x1

    invoke-static {v13, v3, v14, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap20(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    .end local v6    # "i":I
    .end local v8    # "listApps":[Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v14, v13, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1114
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v13, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap21(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "cscAllowRRList":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    monitor-exit v14

    .line 1073
    :cond_2
    return-void

    .line 1107
    .restart local v4    # "cscAllowRRList":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v8    # "listApps":[Ljava/lang/String;
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v5

    .line 1094
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1113
    .end local v6    # "i":I
    .end local v8    # "listApps":[Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1116
    .end local v4    # "cscAllowRRList":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const-string/jumbo v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1117
    const-string/jumbo v13, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1118
    .local v7, "isReplacing":Z
    if-eqz v7, :cond_5

    return-void

    .line 1119
    :cond_5
    const-string/jumbo v13, "NetworkPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ACTION_PACKAGE_REMOVED for uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-get12(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 1122
    .local v12, "uidPolicy":I
    const/16 v13, 0x1002

    if-ne v12, v13, :cond_6

    .line 1123
    const-string/jumbo v13, "NetworkPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Remove Roaming Reduction Whitelist. uid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v13, v11, v14, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap20(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V

    .line 1127
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v14, v13, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1128
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v13, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap15(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1127
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13
.end method
