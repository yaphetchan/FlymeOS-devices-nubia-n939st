.class final Lcom/android/settings/WirelessSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "toggle_nsd"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const-string v15, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 532
    .local v14, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 533
    .local v10, "myUserId":I
    if-eqz v10, :cond_e

    const/4 v7, 0x1

    .line 534
    .local v7, "isSecondaryUser":Z
    :goto_0
    invoke-virtual {v14, v10}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    .line 535
    .local v6, "isRestrictedUser":Z
    if-nez v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1120065

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v8, 0x1

    .line 538
    .local v8, "isWimaxEnabled":Z
    :goto_1
    if-eqz v8, :cond_0

    const-string v15, "no_config_mobile_networks"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 540
    :cond_0
    const-string v15, "wimax_settings"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_1
    if-eqz v7, :cond_2

    .line 544
    const-string v15, "vpn_settings"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_2
    const-string v15, "nfc"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/NfcManager;

    .line 550
    .local v9, "manager":Landroid/nfc/NfcManager;
    if-eqz v9, :cond_3

    .line 551
    invoke-virtual {v9}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 552
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v1, :cond_3

    .line 553
    const-string v15, "toggle_nfc"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v15, "android_beam_settings"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_3
    if-nez v7, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 560
    :cond_4
    const-string v15, "mobile_network_settings"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    const-string v15, "manage_mobile_plan"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0008

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 568
    .local v5, "isMobilePlanEnabled":Z
    if-nez v5, :cond_6

    .line 569
    const-string v15, "manage_mobile_plan"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_6
    const-string v15, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 575
    .local v13, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v6, :cond_8

    .line 576
    :cond_7
    const-string v15, "sms_application"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 582
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const-string v15, "android.hardware.type.television"

    invoke-virtual {v11, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 583
    const-string v15, "toggle_airplane"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_9
    const-string v15, "proxy_settings"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    const-string v15, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 592
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v7, :cond_a

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v15

    if-nez v15, :cond_b

    .line 593
    :cond_a
    const-string v15, "tether_settings"

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x112006e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 600
    .local v4, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v4, :cond_c

    .line 601
    :try_start_0
    const-string v15, "com.android.cellbroadcastreceiver"

    invoke-virtual {v11, v15}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 603
    const/4 v4, 0x0

    .line 609
    :cond_c
    :goto_2
    if-nez v7, :cond_d

    if-nez v4, :cond_d

    .line 614
    :cond_d
    return-object v12

    .line 533
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isCellBroadcastAppLinkEnabled":Z
    .end local v5    # "isMobilePlanEnabled":Z
    .end local v6    # "isRestrictedUser":Z
    .end local v7    # "isSecondaryUser":Z
    .end local v8    # "isWimaxEnabled":Z
    .end local v9    # "manager":Landroid/nfc/NfcManager;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v13    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 535
    .restart local v6    # "isRestrictedUser":Z
    .restart local v7    # "isSecondaryUser":Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 606
    .restart local v2    # "cm":Landroid/net/ConnectivityManager;
    .restart local v4    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v5    # "isMobilePlanEnabled":Z
    .restart local v8    # "isWimaxEnabled":Z
    .restart local v9    # "manager":Landroid/nfc/NfcManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 607
    .local v3, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 521
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f060065

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 522
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
