.class public Lcom/flyme/deviceoriginalsettings/search/Index;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/search/Index$1;,
        Lcom/flyme/deviceoriginalsettings/search/Index$SaveSearchQueryTask;,
        Lcom/flyme/deviceoriginalsettings/search/Index$UpdateIndexTask;,
        Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field private static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field private static MAX_SAVED_SEARCH_QUERY:J

.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SELECT_COLUMNS:[Ljava/lang/String;

.field private static sInstance:Lcom/flyme/deviceoriginalsettings/search/Index;


# instance fields
.field private final mBaseAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

.field private final mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_rank"

    aput-object v1, v0, v3

    const-string v1, "data_title"

    aput-object v1, v0, v4

    const-string v1, "data_summary_on"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data_keywords"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "class_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent_action"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intent_target_package"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "intent_target_class"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data_key_reference"

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    .line 129
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data_title"

    aput-object v1, v0, v3

    const-string v1, "data_title_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_keywords"

    aput-object v1, v0, v5

    sput-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_summary_on"

    aput-object v1, v0, v3

    const-string v1, "data_summary_on_normalized"

    aput-object v1, v0, v4

    const-string v1, "data_summary_off"

    aput-object v1, v0, v5

    const-string v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    const-string v1, "data_entries"

    aput-object v1, v0, v7

    sput-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    .line 144
    const-wide/16 v0, 0x40

    sput-wide v0, Lcom/flyme/deviceoriginalsettings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 165
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseAuthority"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    new-instance v0, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    .line 221
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mBaseAuthority:Ljava/lang/String;

    .line 223
    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/search/Index;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/search/Index;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/search/Index;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/provider/SearchIndexableData;
    .param p4, "x4"    # Ljava/util/Map;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/deviceoriginalsettings/search/Index;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 88
    sget-wide v0, Lcom/flyme/deviceoriginalsettings/search/Index;->MAX_SAVED_SEARCH_QUERY:J

    return-wide v0
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 25
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 593
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 595
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 596
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_0
    return-void

    .line 601
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 602
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 603
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 604
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 605
    .local v16, "providerRank":I
    if-lez v16, :cond_1

    add-int v17, p5, v16

    .line 607
    .local v17, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 608
    .local v23, "title":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 609
    .local v20, "summaryOn":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 610
    .local v19, "summaryOff":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 611
    .local v12, "entries":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 613
    .local v15, "keywords":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 615
    .local v18, "screenTitle":Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, "className":Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 618
    .local v13, "iconResId":I
    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 619
    .local v7, "action":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 621
    .local v22, "targetPackage":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 624
    .local v21, "targetClass":Ljava/lang/String;
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 625
    .local v14, "key":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 627
    .local v24, "userId":I
    new-instance v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 628
    .local v11, "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    move/from16 v0, v17

    iput v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->rank:I

    .line 629
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 630
    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 631
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 632
    iput-object v12, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 633
    iput-object v15, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 634
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 635
    iput-object v8, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 636
    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    .line 637
    iput v13, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->iconResId:I

    .line 638
    iput-object v7, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 639
    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 640
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 641
    iput-object v14, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 642
    move/from16 v0, v24

    iput v0, v11, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->userId:I

    .line 644
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/flyme/deviceoriginalsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 648
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    .end local v12    # "entries":Ljava/lang/String;
    .end local v13    # "iconResId":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keywords":Ljava/lang/String;
    .end local v16    # "providerRank":I
    .end local v17    # "rank":I
    .end local v18    # "screenTitle":Ljava/lang/String;
    .end local v19    # "summaryOff":Ljava/lang/String;
    .end local v20    # "summaryOn":Ljava/lang/String;
    .end local v21    # "targetClass":Ljava/lang/String;
    .end local v22    # "targetPackage":Ljava/lang/String;
    .end local v23    # "title":Ljava/lang/String;
    .end local v24    # "userId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v16    # "providerRank":I
    :cond_1
    move/from16 v17, p5

    .line 605
    goto/16 :goto_2

    .line 648
    .end local v16    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V
    .locals 18
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "baseRank"    # I

    .prologue
    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 546
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 548
    .local v10, "cursor":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 549
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_0
    return-void

    .line 554
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 555
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 556
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 558
    .local v12, "providerRank":I
    if-lez v12, :cond_1

    add-int v13, p5, v12

    .line 560
    .local v13, "rank":I
    :goto_2
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 562
    .local v17, "xmlResId":I
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 563
    .local v8, "className":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 565
    .local v11, "iconResId":I
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 566
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 568
    .local v16, "targetPackage":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 571
    .local v15, "targetClass":Ljava/lang/String;
    new-instance v14, Landroid/provider/SearchIndexableResource;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 572
    .local v14, "sir":Landroid/provider/SearchIndexableResource;
    iput v13, v14, Landroid/provider/SearchIndexableResource;->rank:I

    .line 573
    move/from16 v0, v17

    iput v0, v14, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 574
    iput-object v8, v14, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 575
    move-object/from16 v0, p2

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 576
    iput v11, v14, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 577
    iput-object v7, v14, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 578
    move-object/from16 v0, v16

    iput-object v0, v14, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 579
    iput-object v15, v14, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 581
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 585
    .end local v7    # "action":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "count":I
    .end local v11    # "iconResId":I
    .end local v12    # "providerRank":I
    .end local v13    # "rank":I
    .end local v14    # "sir":Landroid/provider/SearchIndexableResource;
    .end local v15    # "targetClass":Ljava/lang/String;
    .end local v16    # "targetPackage":Ljava/lang/String;
    .end local v17    # "xmlResId":I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v9    # "count":I
    .restart local v12    # "providerRank":I
    :cond_1
    move/from16 v13, p5

    .line 558
    goto :goto_2

    .line 585
    .end local v12    # "providerRank":I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 323
    :try_start_0
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getBaseRankForAuthority(Ljava/lang/String;)I

    move-result v5

    .line 325
    .local v5, "baseRank":I
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mBaseAuthority:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    .line 328
    .local v1, "context":Landroid/content/Context;
    :goto_0
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 329
    .local v3, "uriForResources":Landroid/net/Uri;
    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/search/Index;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 332
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 333
    .local v9, "uriForRawData":Landroid/net/Uri;
    sget-object v10, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object v6, p0

    move-object v7, v1

    move-object v8, p1

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/flyme/deviceoriginalsettings/search/Index;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;I)V

    .line 335
    const/4 v0, 0x1

    .line 339
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "uriForResources":Landroid/net/Uri;
    .end local v5    # "baseRank":I
    .end local v9    # "uriForRawData":Landroid/net/Uri;
    :goto_1
    return v0

    .line 325
    .restart local v5    # "baseRank":I
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 336
    .end local v5    # "baseRank":I
    :catch_0
    move-exception v12

    .line 337
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create context for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V

    .line 348
    return-void
.end method

.method private buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 695
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v0, p2

    .line 698
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 699
    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_0

    .line 703
    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "colums"    # [Ljava/lang/String;
    .param p3, "withOrderBy"    # Z

    .prologue
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    if-eqz p3, :cond_0

    .line 656
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v1, "data_rank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSearchSQLForColumn(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    sget-object v2, Lcom/flyme/deviceoriginalsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 666
    sget-object v2, Lcom/flyme/deviceoriginalsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    sget-object v2, Lcom/flyme/deviceoriginalsettings/search/Index;->SELECT_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 668
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_1
    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string v2, "prefs_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildSearchWhereStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefs_index"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " MATCH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildSearchMatchStringForColumns(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 684
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 688
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "saved_queries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const-string v1, " ORDER BY rowId DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_0
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 271
    :cond_0
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/non_indexables_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/indexables_xml_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1113
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1114
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1116
    .local v2, "tv":Landroid/util/TypedValue;
    const/4 v0, 0x0

    .line 1117
    .local v0, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1118
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_1

    .line 1119
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1124
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 1121
    :cond_1
    iget-object v0, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1124
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1103
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "resId"    # I

    .prologue
    .line 1128
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1129
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, p4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 1131
    .local v5, "tv":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 1132
    .local v1, "data":[Ljava/lang/String;
    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1133
    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_0

    .line 1134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1137
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1138
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_2

    .line 1139
    const/4 v6, 0x0

    .line 1146
    :goto_1
    return-object v6

    .line 1137
    .end local v0    # "count":I
    :cond_1
    array-length v0, v1

    goto :goto_0

    .line 1141
    .restart local v0    # "count":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1143
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    const-string v6, "|"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1146
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1073
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1109
    sget-object v0, Lcom/flyme/deviceoriginalsettings/R$styleable;->Preference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1085
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1097
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1091
    sget-object v0, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1079
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 750
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 755
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 751
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 753
    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v0, v2

    .line 755
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/Index;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->sInstance:Lcom/flyme/deviceoriginalsettings/search/Index;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/flyme/deviceoriginalsettings/search/Index;

    const-string v1, "com.android.settings"

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->sInstance:Lcom/flyme/deviceoriginalsettings/search/Index;

    .line 217
    :goto_0
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->sInstance:Lcom/flyme/deviceoriginalsettings/search/Index;

    return-object v0

    .line 215
    :cond_0
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/Index;->sInstance:Lcom/flyme/deviceoriginalsettings/search/Index;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 371
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 372
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v9, Lcom/flyme/deviceoriginalsettings/search/Index;->EMPTY_LIST:Ljava/util/List;

    .line 387
    :goto_0
    return-object v9

    .line 376
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 379
    .local v6, "count":I
    if-lez v6, :cond_1

    .line 380
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 387
    .end local v6    # "count":I
    .end local v8    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    :try_start_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 355
    .local v1, "packageContext":Landroid/content/Context;
    invoke-static {p2}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 356
    .local v2, "uriForNonIndexableKeys":Landroid/net/Uri;
    sget-object v3, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/search/Index;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 361
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "uriForNonIndexableKeys":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v3, Lcom/flyme/deviceoriginalsettings/search/Index;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getSearchIndexProvider(Ljava/lang/Class;)Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 808
    :try_start_0
    const-string v3, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 809
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 823
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Index"

    const-string v5, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    move-object v3, v4

    .line 823
    goto :goto_0

    .line 812
    :catch_1
    move-exception v2

    .line 813
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v3, "Index"

    const-string v5, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 815
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Index"

    const-string v5, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 818
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Index"

    const-string v5, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "provider"    # Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;
    .param p5, "className"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 930
    .local p9, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p4, :cond_1

    .line 931
    const-string v3, "Index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    return-void

    .line 935
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v24

    .line 937
    .local v24, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;>;"
    if-eqz v24, :cond_4

    .line 938
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    .line 939
    .local v25, "rawSize":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 940
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .line 943
    .local v23, "raw":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 939
    :cond_2
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 947
    :cond_3
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 951
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->enabled:Z

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->userId:I

    move/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v3 .. v20}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_1

    .line 970
    .end local v21    # "i":I
    .end local v23    # "raw":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    .end local v25    # "rawSize":I
    :cond_4
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v26

    .line 972
    .local v26, "resList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    if-eqz v26, :cond_0

    .line 973
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v27

    .line 974
    .local v27, "resSize":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 975
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/provider/SearchIndexableResource;

    .line 978
    .local v22, "item":Landroid/provider/SearchIndexableResource;
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 974
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 982
    :cond_5
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    if-nez v3, :cond_6

    move/from16 v9, p6

    .line 983
    .local v9, "itemIconResId":I
    :goto_4
    move-object/from16 v0, v22

    iget v3, v0, Landroid/provider/SearchIndexableResource;->rank:I

    if-nez v3, :cond_7

    move/from16 v10, p7

    .line 984
    .local v10, "itemRank":I
    :goto_5
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v8, p5

    .line 987
    .local v8, "itemClassName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v22

    iget v7, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v12, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v13, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/flyme/deviceoriginalsettings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 982
    .end local v8    # "itemClassName":Ljava/lang/String;
    .end local v9    # "itemIconResId":I
    .end local v10    # "itemRank":I
    :cond_6
    move-object/from16 v0, v22

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    goto :goto_4

    .line 983
    .restart local v9    # "itemIconResId":I
    :cond_7
    move-object/from16 v0, v22

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    goto :goto_5

    .line 984
    .restart local v10    # "itemRank":I
    :cond_8
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    goto :goto_6
.end method

.method private indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "xmlResId"    # I
    .param p5, "fragmentName"    # Ljava/lang/String;
    .param p6, "iconResId"    # I
    .param p7, "rank"    # I
    .param p8, "intentAction"    # Ljava/lang/String;
    .param p9, "intentTargetPackage"    # Ljava/lang/String;
    .param p10, "intentTargetClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    .local p11, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v42, 0x0

    .line 833
    .local v42, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v42

    .line 837
    :cond_0
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    .local v43, "type":I
    const/4 v3, 0x1

    move/from16 v0, v43

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v43

    if-ne v0, v3, :cond_0

    .line 841
    :cond_1
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 842
    .local v40, "nodeName":Ljava/lang/String;
    const-string v3, "PreferenceScreen"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 843
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .end local v40    # "nodeName":Ljava/lang/String;
    .end local v43    # "type":I
    :catch_0
    move-exception v39

    .line 918
    .local v39, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    .end local v39    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    if-eqz v42, :cond_2

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v3

    .line 848
    .restart local v40    # "nodeName":Ljava/lang/String;
    .restart local v43    # "type":I
    :cond_3
    :try_start_2
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v41

    .line 849
    .local v41, "outerDepth":I
    invoke-static/range {v42 .. v42}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v38

    .line 851
    .local v38, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v11

    .line 853
    .local v11, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 861
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 863
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 864
    .local v7, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 866
    .local v14, "keywords":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 873
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    const/4 v3, 0x1

    move/from16 v0, v43

    if-eq v0, v3, :cond_9

    const/4 v3, 0x3

    move/from16 v0, v43

    if-ne v0, v3, :cond_5

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    move/from16 v0, v41

    if-le v3, v0, :cond_9

    .line 874
    :cond_5
    const/4 v3, 0x3

    move/from16 v0, v43

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    move/from16 v0, v43

    if-eq v0, v3, :cond_4

    .line 878
    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v40

    .line 880
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    .line 881
    move-object/from16 v0, p11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    .line 886
    .restart local v6    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    .line 888
    .restart local v14    # "keywords":Ljava/lang/String;
    const-string v3, "CheckBoxPreference"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 889
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 891
    .restart local v7    # "summary":Ljava/lang/String;
    const/4 v9, 0x0

    .line 893
    .local v9, "entries":Ljava/lang/String;
    const-string v3, "ListPreference"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 894
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v9

    .line 898
    :cond_6
    const/4 v8, 0x0

    const/16 v18, 0x1

    const/16 v20, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v20}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 919
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "summary":Ljava/lang/String;
    .end local v9    # "entries":Ljava/lang/String;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v38    # "attrs":Landroid/util/AttributeSet;
    .end local v40    # "nodeName":Ljava/lang/String;
    .end local v41    # "outerDepth":I
    .end local v43    # "type":I
    :catch_1
    move-exception v39

    .line 920
    .local v39, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing PreferenceScreen"

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 903
    .end local v39    # "e":Ljava/io/IOException;
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v11    # "screenTitle":Ljava/lang/String;
    .restart local v14    # "keywords":Ljava/lang/String;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v38    # "attrs":Landroid/util/AttributeSet;
    .restart local v40    # "nodeName":Ljava/lang/String;
    .restart local v41    # "outerDepth":I
    .restart local v43    # "type":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 904
    .local v24, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v25

    .line 906
    .local v25, "summaryOff":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 907
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 910
    :cond_8
    const/16 v26, 0x0

    const/16 v35, 0x1

    const/16 v37, -0x1

    move-object/from16 v20, p0

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, v6

    move-object/from16 v27, p5

    move-object/from16 v28, v11

    move/from16 v29, p6

    move/from16 v30, p7

    move-object/from16 v31, v14

    move-object/from16 v32, p8

    move-object/from16 v33, p9

    move-object/from16 v34, p10

    move-object/from16 v36, v19

    invoke-direct/range {v20 .. v37}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 922
    .end local v6    # "title":Ljava/lang/String;
    .end local v14    # "keywords":Ljava/lang/String;
    .end local v24    # "summaryOn":Ljava/lang/String;
    .end local v25    # "summaryOff":Ljava/lang/String;
    :cond_9
    if-eqz v42, :cond_a

    invoke-interface/range {v42 .. v42}, Landroid/content/res/XmlResourceParser;->close()V

    .line 924
    :cond_a
    return-void
.end method

.method private indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;)V
    .locals 19
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "raw"    # Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .prologue
    .line 721
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    :goto_0
    return-void

    .line 725
    :cond_0
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v10, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->iconResId:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->rank:I

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->enabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->userId:I

    move/from16 v18, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v18}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "sir"    # Landroid/provider/SearchIndexableResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 761
    .local p4, "nonIndexableKeysFromResource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p3, :cond_1

    .line 762
    const-string v1, "Index"

    const-string v2, "Cannot index a null resource!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v12, "nonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    iget v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    sget v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    if-le v1, v2, :cond_3

    .line 769
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 770
    .local v15, "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 771
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    :cond_2
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v7, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v12}, Lcom/flyme/deviceoriginalsettings/search/Index;->indexFromResource(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 779
    .end local v15    # "resNonIndxableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 780
    const-string v1, "Index"

    const-string v2, "Cannot index an empty Search Provider name!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    :cond_4
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 785
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_5

    .line 786
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SearchIndexableResource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' should implement the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/flyme/deviceoriginalsettings/search/Indexable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interface!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 793
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/flyme/deviceoriginalsettings/search/Index;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    move-result-object v7

    .line 794
    .local v7, "provider":Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;
    if-eqz v7, :cond_0

    .line 795
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v7, v1}, Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v14

    .line 796
    .local v14, "providerNonIndexableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 797
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 800
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v8, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v9, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    move-object/from16 v0, p3

    iget v10, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move-object/from16 v0, p3

    iget-boolean v11, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/flyme/deviceoriginalsettings/search/Index;->indexFromProvider(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;Ljava/lang/String;IIZLjava/util/List;)V

    goto/16 :goto_0
.end method

.method private indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/provider/SearchIndexableData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    instance-of v0, p3, Landroid/provider/SearchIndexableResource;

    if-eqz v0, :cond_1

    .line 712
    check-cast p3, Landroid/provider/SearchIndexableResource;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/deviceoriginalsettings/search/Index;->indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 713
    .restart local p3    # "data":Landroid/provider/SearchIndexableData;
    :cond_1
    instance-of v0, p3, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    if-eqz v0, :cond_0

    .line 714
    check-cast p3, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .end local p3    # "data":Landroid/provider/SearchIndexableData;
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/search/Index;->indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;)V

    goto :goto_0
.end method

.method private static isIndexableClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Lcom/flyme/deviceoriginalsettings/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPrivilegedPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 450
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 451
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 453
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 425
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 426
    .local v0, "authority":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 428
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v4

    .line 432
    :cond_1
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 433
    .local v2, "readPermission":Ljava/lang/String;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 435
    .local v3, "writePermission":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->isPrivilegedPackage(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1019
    if-eqz p0, :cond_0

    const-string v0, "\u2011"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1023
    if-eqz p0, :cond_0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, "normalized":Ljava/lang/String;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/search/Index;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1023
    .end local v0    # "nohyphen":Ljava/lang/String;
    .end local v1    # "normalized":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private updateInternal()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 522
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    monitor-enter v9

    .line 523
    :try_start_0
    new-instance v7, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateIndexTask;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateIndexTask;-><init>(Lcom/flyme/deviceoriginalsettings/search/Index;Lcom/flyme/deviceoriginalsettings/search/Index$1;)V

    .line 524
    .local v7, "task":Lcom/flyme/deviceoriginalsettings/search/Index$UpdateIndexTask;
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    invoke-virtual {v10}, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->copy()Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    move-result-object v2

    .line 525
    .local v2, "copy":Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;
    iget-object v10, v2, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableData;

    .line 526
    .local v3, "data":Landroid/provider/SearchIndexableData;
    instance-of v10, v3, Landroid/provider/SearchIndexableResource;

    if-eqz v10, :cond_0

    .line 527
    move-object v0, v3

    check-cast v0, Landroid/provider/SearchIndexableResource;

    move-object v6, v0

    .line 528
    .local v6, "sir":Landroid/provider/SearchIndexableResource;
    iget-object v10, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, v6, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v10}, Lcom/flyme/deviceoriginalsettings/search/Index;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 530
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    move-result-object v5

    .line 532
    .local v5, "provider":Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;
    :goto_2
    if-eqz v5, :cond_0

    .line 533
    invoke-interface {v5}, Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;->prepare()V

    goto :goto_0

    .line 539
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "copy":Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;
    .end local v3    # "data":Landroid/provider/SearchIndexableData;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "provider":Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;
    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    .end local v7    # "task":Lcom/flyme/deviceoriginalsettings/search/Index$UpdateIndexTask;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "copy":Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;
    .restart local v3    # "data":Landroid/provider/SearchIndexableData;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "sir":Landroid/provider/SearchIndexableResource;
    .restart local v7    # "task":Lcom/flyme/deviceoriginalsettings/search/Index$UpdateIndexTask;
    :cond_1
    move-object v1, v8

    .line 528
    goto :goto_1

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v5, v8

    .line 530
    goto :goto_2

    .line 537
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "data":Landroid/provider/SearchIndexableData;
    .end local v6    # "sir":Landroid/provider/SearchIndexableResource;
    :cond_3
    const/4 v8, 0x1

    :try_start_1
    new-array v8, v8, [Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    invoke-virtual {v7, v8}, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 538
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->clear()V

    .line 539
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    return-void
.end method

.method private updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 6
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "updatedTitle"    # Ljava/lang/String;
    .param p4, "normalizedTitle"    # Ljava/lang/String;
    .param p5, "updatedSummaryOn"    # Ljava/lang/String;
    .param p6, "normalizedSummaryOn"    # Ljava/lang/String;
    .param p7, "updatedSummaryOff"    # Ljava/lang/String;
    .param p8, "normalizedSummaryOff"    # Ljava/lang/String;
    .param p9, "entries"    # Ljava/lang/String;
    .param p10, "className"    # Ljava/lang/String;
    .param p11, "screenTitle"    # Ljava/lang/String;
    .param p12, "iconResId"    # I
    .param p13, "rank"    # I
    .param p14, "keywords"    # Ljava/lang/String;
    .param p15, "intentAction"    # Ljava/lang/String;
    .param p16, "intentTargetPackage"    # Ljava/lang/String;
    .param p17, "intentTargetClass"    # Ljava/lang/String;
    .param p18, "enabled"    # Z
    .param p19, "key"    # Ljava/lang/String;
    .param p20, "userId"    # I

    .prologue
    .line 1037
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1043
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 1047
    .local v1, "docId":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1048
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "docid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1049
    const-string v4, "locale"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v4, "data_rank"

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    const-string v4, "data_title"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v4, "data_title_normalized"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v4, "data_summary_on"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v4, "data_summary_on_normalized"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const-string v4, "data_summary_off"

    invoke-virtual {v3, v4, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v4, "data_summary_off_normalized"

    invoke-virtual {v3, v4, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v4, "data_entries"

    invoke-virtual {v3, v4, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v4, "data_keywords"

    move-object/from16 v0, p14

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v4, "class_name"

    move-object/from16 v0, p10

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v4, "screen_title"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v4, "intent_action"

    move-object/from16 v0, p15

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v4, "intent_target_package"

    move-object/from16 v0, p16

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v4, "intent_target_class"

    move-object/from16 v0, p17

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v4, "icon"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    const-string v4, "enabled"

    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1066
    const-string v4, "data_key_reference"

    move-object/from16 v0, p19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v4, "user_id"

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1069
    const-string v4, "prefs_index"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method private updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 21
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "summaryOn"    # Ljava/lang/String;
    .param p5, "summaryOff"    # Ljava/lang/String;
    .param p6, "entries"    # Ljava/lang/String;
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "screenTitle"    # Ljava/lang/String;
    .param p9, "iconResId"    # I
    .param p10, "rank"    # I
    .param p11, "keywords"    # Ljava/lang/String;
    .param p12, "intentAction"    # Ljava/lang/String;
    .param p13, "intentTargetPackage"    # Ljava/lang/String;
    .param p14, "intentTargetClass"    # Ljava/lang/String;
    .param p15, "enabled"    # Z
    .param p16, "key"    # Ljava/lang/String;
    .param p17, "userId"    # I

    .prologue
    .line 1002
    invoke-static/range {p3 .. p3}, Lcom/flyme/deviceoriginalsettings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, "updatedTitle":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/flyme/deviceoriginalsettings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1004
    .local v5, "updatedSummaryOn":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/flyme/deviceoriginalsettings/search/Index;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1006
    .local v7, "updatedSummaryOff":Ljava/lang/String;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1007
    .local v4, "normalizedTitle":Ljava/lang/String;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1008
    .local v6, "normalizedSummaryOn":Ljava/lang/String;
    invoke-static {v7}, Lcom/flyme/deviceoriginalsettings/search/Index;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "normalizedSummaryOff":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    .line 1010
    invoke-direct/range {v0 .. v20}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1016
    return-void
.end method


# virtual methods
.method public addIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSavedQuery(Ljava/lang/String;)J
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 287
    new-instance v1, Lcom/flyme/deviceoriginalsettings/search/Index$SaveSearchQueryTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/search/Index$SaveSearchQueryTask;-><init>(Lcom/flyme/deviceoriginalsettings/search/Index;Lcom/flyme/deviceoriginalsettings/search/Index$1;)V

    .line 288
    .local v1, "task":Lcom/flyme/deviceoriginalsettings/search/Index$SaveSearchQueryTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/search/Index$SaveSearchQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    :try_start_0
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/search/Index$SaveSearchQueryTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 296
    :goto_0
    return-wide v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 293
    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 295
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "Index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert saved query: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v2, v4

    .line 296
    goto :goto_0
.end method

.method public deleteIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 407
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildSuggestionsSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "sql":Ljava/lang/String;
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggestions query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 234
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 235
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x2

    new-array v0, v5, [Landroid/database/Cursor;

    .line 237
    .local v0, "cursors":[Landroid/database/Cursor;
    sget-object v5, Lcom/flyme/deviceoriginalsettings/search/Index;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v9}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "primarySql":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Search primary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v8

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/search/Index;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    invoke-direct {p0, p1, v5, v8}, Lcom/flyme/deviceoriginalsettings/search/Index;->buildSearchSQL(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, "sql":Ljava/lang/StringBuilder;
    const-string v5, " EXCEPT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "secondarySql":Ljava/lang/String;
    const-string v5, "Index"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Search secondary query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v1, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v0, v9

    .line 251
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v5
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    .line 227
    return-void
.end method

.method public update()V
    .locals 9

    .prologue
    .line 301
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 305
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 306
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 307
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 308
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/search/Index;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 306
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 312
    .local v0, "authority":Ljava/lang/String;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 314
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5, v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    invoke-direct {p0, v5, v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 318
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateInternal()V

    .line 319
    return-void
.end method

.method public updateFromClassNameResource(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "rebuild"    # Z
    .param p3, "includeInSearchResults"    # Z

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "class name cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_0
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;

    move-result-object v0

    .line 477
    .local v0, "res":Landroid/provider/SearchIndexableResource;
    if-nez v0, :cond_1

    .line 478
    const-string v1, "Index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mContext:Landroid/content/Context;

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 482
    iput-boolean p3, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    .line 483
    if-eqz p2, :cond_2

    .line 484
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->deleteIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 486
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 487
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 488
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateInternal()V

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    goto :goto_0
.end method

.method public updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2
    .param p1, "data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 494
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/Index;->mDataToProcess:Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flyme/deviceoriginalsettings/search/Index$UpdateData;->forceUpdate:Z

    .line 495
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateInternal()V

    .line 496
    return-void
.end method
