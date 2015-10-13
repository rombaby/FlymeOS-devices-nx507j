.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
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

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1056
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "versionSystemProperty"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "getCommand"    # Ljava/lang/String;
    .param p4, "setCommand"    # Ljava/lang/String;

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 1062
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1074
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 1075
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 1076
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 1077
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 1078
    return-void
.end method

.method private filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1252
    move-object v7, p2

    .line 1253
    .local v7, "uri":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v0, "/storage/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    const/4 v6, 0x0

    .line 1256
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_data = ?"

    .line 1257
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1260
    if-eqz v6, :cond_0

    .line 1261
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1267
    :cond_0
    if-eqz v6, :cond_1

    .line 1268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1275
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v7

    .line 1265
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 1267
    if-eqz v6, :cond_1

    .line 1268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1267
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1081
    const/4 v0, 0x0

    .line 1082
    .local v0, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    .line 1083
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1084
    if-nez v0, :cond_0

    .line 1085
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0    # "cp":Landroid/content/IContentProvider;
    .local v1, "cp":Landroid/content/IContentProvider;
    move-object v0, v1

    .line 1087
    .end local v1    # "cp":Landroid/content/IContentProvider;
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_0
    monitor-exit p0

    .line 1088
    return-object v0

    .line 1087
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 1228
    move-object v7, p2

    .line 1229
    .local v7, "str":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v0, "content://media/external"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    const/4 v6, 0x0

    .line 1232
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1233
    if-eqz v6, :cond_0

    .line 1234
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1240
    :cond_0
    if-eqz v6, :cond_1

    .line 1241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1248
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v7

    .line 1238
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 1240
    if-eqz v6, :cond_1

    .line 1241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1241
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_2

    const/16 v17, 0x1

    .line 1119
    .local v17, "isSelf":Z
    :goto_0
    if-eqz v17, :cond_4

    .line 1120
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1123
    .local v18, "newValuesVersion":J
    monitor-enter p0

    .line 1124
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    cmp-long v5, v6, v18

    if-eqz v5, :cond_0

    .line 1130
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1131
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 1134
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1135
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    monitor-exit p0

    move-object/from16 v20, v5

    .line 1223
    .end local v18    # "newValuesVersion":J
    :cond_1
    :goto_1
    return-object v20

    .line 1118
    .end local v17    # "isSelf":Z
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 1137
    .restart local v17    # "isSelf":Z
    .restart local v18    # "newValuesVersion":J
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1143
    .end local v18    # "newValuesVersion":J
    :cond_4
    invoke-direct/range {p0 .. p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v4

    .line 1149
    .local v4, "cp":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 1151
    const/4 v12, 0x0

    .line 1152
    .local v12, "args":Landroid/os/Bundle;
    if-nez v17, :cond_5

    .line 1153
    :try_start_1
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1154
    .end local v12    # "args":Landroid/os/Bundle;
    .local v13, "args":Landroid/os/Bundle;
    :try_start_2
    const-string v5, "_user"

    move/from16 v0, p3

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v13

    .line 1156
    .end local v13    # "args":Landroid/os/Bundle;
    .restart local v12    # "args":Landroid/os/Bundle;
    :cond_5
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v4, v5, v6, v0, v12}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 1157
    .local v14, "b":Landroid/os/Bundle;
    if-eqz v14, :cond_8

    .line 1158
    invoke-virtual {v14}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v20

    .line 1160
    .local v20, "value":Ljava/lang/String;
    const-string/jumbo v5, "ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "ringtone_2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "ringtone_3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "notification_sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "alarm_alert"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "card_one_message_sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "card_two_message_sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1167
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$NameValueCache;->filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1171
    :cond_7
    if-eqz v17, :cond_1

    .line 1172
    monitor-enter p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1173
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1184
    .end local v14    # "b":Landroid/os/Bundle;
    .end local v20    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1190
    .end local v12    # "args":Landroid/os/Bundle;
    :cond_8
    :goto_2
    const/4 v15, 0x0

    .line 1192
    .local v15, "c":Landroid/database/Cursor;
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v8, "name=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v15

    .line 1194
    if-nez v15, :cond_9

    .line 1195
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1196
    const/16 v20, 0x0

    .line 1223
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1137
    .end local v4    # "cp":Landroid/content/IContentProvider;
    .end local v15    # "c":Landroid/database/Cursor;
    .restart local v18    # "newValuesVersion":J
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 1199
    .end local v18    # "newValuesVersion":J
    .restart local v4    # "cp":Landroid/content/IContentProvider;
    .restart local v15    # "c":Landroid/database/Cursor;
    :cond_9
    :try_start_8
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1201
    .restart local v20    # "value":Ljava/lang/String;
    :goto_3
    const-string/jumbo v5, "ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "ringtone_2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "ringtone_3"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "notification_sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "alarm_alert"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "card_one_message_sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "card_two_message_sound"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1208
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/provider/Settings$NameValueCache;->filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1211
    :cond_b
    monitor-enter p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1212
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1223
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1199
    .end local v20    # "value":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x0

    goto :goto_3

    .line 1213
    .restart local v20    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v5
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1219
    .end local v20    # "value":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 1220
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_c
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1221
    const/16 v20, 0x0

    .line 1223
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_3
    move-exception v5

    if-eqz v15, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v5

    .line 1184
    .end local v15    # "c":Landroid/database/Cursor;
    .restart local v13    # "args":Landroid/os/Bundle;
    :catch_2
    move-exception v5

    move-object v12, v13

    .end local v13    # "args":Landroid/os/Bundle;
    .restart local v12    # "args":Landroid/os/Bundle;
    goto/16 :goto_2
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 1095
    :try_start_0
    const-string/jumbo v3, "ringtone"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ringtone_2"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ringtone_3"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "notification_sound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "alarm_alert"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "card_one_message_sound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "card_two_message_sound"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1102
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/provider/Settings$NameValueCache;->uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1105
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1106
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v3, "_user"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1108
    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1109
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    const/4 v3, 0x1

    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    :goto_0
    return v3

    .line 1110
    :catch_0
    move-exception v2

    .line 1111
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    const/4 v3, 0x0

    goto :goto_0
.end method
