.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->registerECContainerNameChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 439
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v17

    .line 441
    const-string/jumbo v19, "persona"

    .line 440
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 443
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v14

    .line 444
    .local v14, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v9

    .line 445
    .local v9, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Inside try personas is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 447
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "pInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/SemPersonaInfo;

    .line 448
    .local v12, "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v12, :cond_1

    .line 449
    invoke-virtual {v12}, Lcom/samsung/android/knox/SemPersonaInfo;->isECContainer()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-wrap0(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/UserManager;

    move-result-object v17

    iget v0, v12, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v16

    .line 451
    .local v16, "uinfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get7(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v17

    iget v0, v12, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v11

    .line 452
    .local v11, "ownerUid":I
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Lcom/samsung/android/knox/ContextInfo;

    iget v0, v12, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v10

    .line 453
    .local v10, "knoxContainerManager":Lcom/samsung/android/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v17, v0

    iget v0, v12, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->getECName(I)Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "ECName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ECName in  broadcast receiver : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "com.sec.knox.containeragent2"

    .line 456
    new-instance v19, Landroid/os/UserHandle;

    iget v0, v12, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    .line 455
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 457
    .local v5, "appContext":Landroid/content/Context;
    const/4 v6, 0x0

    .line 458
    .local v6, "changedName":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 459
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 460
    .local v15, "r":Landroid/content/res/Resources;
    const-string/jumbo v17, "app_name_settings"

    .line 461
    const-string/jumbo v18, "string"

    const-string/jumbo v19, "com.sec.knox.containeragent2"

    .line 460
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 461
    const/16 v19, 0x0

    aput-object v4, v18, v19

    .line 460
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "changedName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "ChangedName in  broadcast receiver : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-nez v6, :cond_2

    .line 464
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " Settings"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 467
    .end local v6    # "changedName":Ljava/lang/String;
    .end local v15    # "r":Landroid/content/res/Resources;
    :cond_2
    const/4 v7, 0x0

    .line 468
    .local v7, "changedStatus":Z
    if-eqz v16, :cond_3

    if-eqz v10, :cond_3

    .line 469
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/samsung/android/knox/SemPersonaManager;->DEFAULT_KNOX_NAME:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 470
    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v17

    .line 473
    const-string/jumbo v18, "com.sec.knox.containeragent2/com.sec.knox.containeragent2.ui.settings.KnoxSettingsActivity"

    .line 470
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 483
    .end local v7    # "changedStatus":Z
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "changedStatus in  broadcast receiver : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 489
    .end local v4    # "ECName":Ljava/lang/String;
    .end local v5    # "appContext":Landroid/content/Context;
    .end local v9    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .end local v10    # "knoxContainerManager":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v11    # "ownerUid":I
    .end local v12    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v13    # "pInfo$iterator":Ljava/util/Iterator;
    .end local v14    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .end local v16    # "uinfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v8

    .line 490
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get1()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getContainers exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 476
    .restart local v4    # "ECName":Ljava/lang/String;
    .restart local v5    # "appContext":Landroid/content/Context;
    .restart local v7    # "changedStatus":Z
    .restart local v9    # "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .restart local v10    # "knoxContainerManager":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .restart local v11    # "ownerUid":I
    .restart local v12    # "pInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .restart local v13    # "pInfo$iterator":Ljava/util/Iterator;
    .restart local v14    # "personas":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    .restart local v16    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_5
    :try_start_1
    invoke-virtual {v10}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v17

    .line 479
    const-string/jumbo v18, "com.sec.knox.containeragent2/com.sec.knox.containeragent2.ui.settings.KnoxSettingsActivity2"

    .line 476
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/knox/application/ApplicationPolicy;->changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .local v7, "changedStatus":Z
    goto :goto_1
.end method
