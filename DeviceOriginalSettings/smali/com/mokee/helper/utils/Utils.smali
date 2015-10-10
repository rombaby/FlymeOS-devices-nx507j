.class public Lcom/mokee/helper/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 71
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 72
    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 73
    return-void
.end method

.method public static checkGmsVersion(Ljava/lang/String;)Z
    .locals 7
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 269
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/system/etc/gprop.mokee"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x200

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    .line 277
    :goto_0
    if-eqz v3, :cond_0

    .line 278
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    move-object v2, v3

    .line 282
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_2
    return v4

    .line 272
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 273
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_1

    .line 278
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 280
    :catch_1
    move-exception v5

    goto :goto_2

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 277
    :goto_4
    if-eqz v2, :cond_3

    .line 278
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 282
    :cond_3
    :goto_5
    throw v4

    .line 280
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    goto :goto_1

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 276
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 273
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static checkLicensed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 333
    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->getPaidTotal(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42880000    # 68.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 12
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "children":[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 293
    .local v0, "aChildren":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/mokee/helper/utils/Utils;->deleteDir(Ljava/io/File;)Z

    move-result v7

    .line 294
    .local v7, "success":Z
    if-nez v7, :cond_0

    .line 295
    const/4 v8, 0x0

    .line 313
    .end local v0    # "aChildren":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "children":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "success":Z
    :goto_1
    return v8

    .line 292
    .restart local v0    # "aChildren":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "children":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "success":Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "aChildren":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "children":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "success":Z
    :cond_1
    const/4 v3, 0x0

    .line 300
    .local v3, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".partial"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 301
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v8

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfoByName(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v3

    .line 305
    :goto_2
    if-eqz v3, :cond_2

    .line 306
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v8

    invoke-virtual {v3}, Lcom/mokee/helper/misc/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mokee/helper/db/ThreadDownLoadDao;->delete(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v8

    invoke-virtual {v3}, Lcom/mokee/helper/misc/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mokee/helper/db/DownLoadDao;->delete(Ljava/lang/String;)V

    .line 311
    .end local v3    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_2
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v6, "newFile":Ljava/io/File;
    invoke-virtual {p0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 313
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    goto :goto_1

    .line 303
    .end local v6    # "newFile":Ljava/io/File;
    .restart local v3    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_3
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".partial"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfoByName(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v3

    goto :goto_2
.end method

.method public static getBuildDateLength(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 217
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "strs":[Ljava/lang/String;
    aget-object v0, v1, v3

    .line 219
    .local v0, "date":Ljava/lang/String;
    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    return v2
.end method

.method public static getMoKeeVersionType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    sget-object v1, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    sget-object v2, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "MoKeeVersionType":Ljava/lang/String;
    return-object v0
.end method

.method public static getMoKeeVersionTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "MoKeeVersionType"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 88
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 76
    :sswitch_0
    const-string v1, "release"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "experimental"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "history"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "nightly"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "unofficial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 78
    :pswitch_0
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 80
    :pswitch_1
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 82
    :pswitch_2
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 84
    :pswitch_3
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 86
    :pswitch_4
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        -0x181d2318 -> :sswitch_1
        0x2d5b0084 -> :sswitch_4
        0x373fe494 -> :sswitch_2
        0x41012807 -> :sswitch_0
        0x73f6cba5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 179
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 180
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPaidTotal(Landroid/content/Context;)Ljava/lang/Float;
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 317
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mokee/helper/misc/Constants;->LICENSE_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    :try_start_0
    sget-object v2, Lcom/mokee/helper/misc/Constants;->LICENSE_FILE:Ljava/lang/String;

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwN8FdvNOu5A8yP2Bfb7rk1o6NdXik/DO+Kw6+q7nIZjTh4qpPL3Gyoa7A3MI01gTRKaM+MU2+zkiZND8qoB8EGlF6BfDfi9BLyFyx+nOTgz3KDEYutLJhopS18DfrdZTohNXsM7+MEsk5y+GHFjYHePXNoE4fjtfCg3xbtwU29wIDAQAB"

    invoke-static {v2, v3}, Lcom/mokee/security/License;->readLincense(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "licenseInfo":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p0}, Lcom/mokee/os/Build;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 329
    .end local v1    # "licenseInfo":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0
.end method

.method public static getUpdateType(Ljava/lang/String;)I
    .locals 5
    .param p0, "MoKeeVersionType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 98
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 106
    :goto_1
    :pswitch_0
    return v0

    .line 98
    :sswitch_0
    const-string v4, "nightly"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_1
    const-string v4, "experimental"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_2
    const-string v4, "unofficial"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 102
    goto :goto_1

    .line 104
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_1

    .line 98
    :sswitch_data_0
    .sparse-switch
        -0x181d2318 -> :sswitch_1
        0x2d5b0084 -> :sswitch_2
        0x73f6cba5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 169
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 170
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 172
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getVersionLifeTime(Ljava/lang/String;)J
    .locals 2
    .param p0, "versionType"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "release"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-wide/32 v0, 0x34fd9000

    .line 114
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x240c8400

    goto :goto_0
.end method

.method public static isLocaUpdateFile(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "isUpdate"    # Z

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "mkupdater"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1

    .line 64
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    const-string v1, "mkextras"

    goto :goto_0
.end method

.method public static isNewVersion(Ljava/lang/String;)Z
    .locals 10
    .param p0, "itemName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 242
    sget-object v9, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    invoke-static {v9}, Lcom/mokee/helper/utils/Utils;->getBuildDateLength(Ljava/lang/String;)I

    move-result v4

    .line 243
    .local v4, "nowDateLength":I
    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->getBuildDateLength(Ljava/lang/String;)I

    move-result v1

    .line 244
    .local v1, "itemDateLength":I
    if-ne v4, v1, :cond_0

    move v6, v7

    .line 245
    .local v6, "sameVersion":Z
    :goto_0
    sget-object v9, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/mokee/helper/utils/Utils;->subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 246
    .local v3, "nowDate":I
    invoke-static {p0, v6}, Lcom/mokee/helper/utils/Utils;->subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 247
    .local v0, "itemDate":I
    sget-object v9, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    invoke-static {v9}, Lcom/mokee/helper/utils/Utils;->subMoKeeVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 248
    .local v5, "nowVersion":F
    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->subMoKeeVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 249
    .local v2, "itemVersion":F
    if-le v0, v3, :cond_1

    cmpl-float v9, v2, v5

    if-ltz v9, :cond_1

    :goto_1
    return v7

    .end local v0    # "itemDate":I
    .end local v2    # "itemVersion":F
    .end local v3    # "nowDate":I
    .end local v5    # "nowVersion":F
    .end local v6    # "sameVersion":Z
    :cond_0
    move v6, v8

    .line 244
    goto :goto_0

    .restart local v0    # "itemDate":I
    .restart local v2    # "itemVersion":F
    .restart local v3    # "nowDate":I
    .restart local v5    # "nowVersion":F
    .restart local v6    # "sameVersion":Z
    :cond_1
    move v7, v8

    .line 249
    goto :goto_1
.end method

.method public static isNum(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, "^[-+]?(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static makeExtraFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mkextras"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeUpdateFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mkupdater"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static scheduleUpdateService(Landroid/content/Context;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateFrequency"    # I

    .prologue
    const/4 v1, 0x0

    .line 149
    const-string v2, "downloader"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 150
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_last_update_check"

    const-wide/16 v4, 0x0

    invoke-interface {v10, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 153
    .local v8, "lastCheck":J
    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v7, "i":Landroid/content/Intent;
    const-string v2, "com.mokee.mkupdater.action.CHECK"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 158
    .local v6, "pi":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 159
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 161
    const/4 v2, -0x2

    if-eq p1, v2, :cond_0

    .line 162
    int-to-long v2, p1

    add-long/2addr v2, v8

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static setSummaryFromString(Landroid/preference/PreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "prefFragment"    # Landroid/preference/PreferenceFragment;
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 254
    if-nez p0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sameVersion"    # Z

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 190
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "strs":[Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ota"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const/4 v2, 0x4

    aget-object v0, v1, v2

    .line 197
    .local v0, "date":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/mokee/helper/utils/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    .line 206
    :goto_1
    return-object v2

    .line 195
    .end local v0    # "date":Ljava/lang/String;
    :cond_0
    aget-object v0, v1, v4

    .restart local v0    # "date":Ljava/lang/String;
    goto :goto_0

    .line 198
    :cond_1
    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_2
    if-nez p1, :cond_3

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 203
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v2, v0

    .line 206
    goto :goto_1
.end method

.method public static subMoKeeVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "strs":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 231
    .local v1, "version":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ota"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v2, 0x1

    aget-object v1, v0, v2

    .line 234
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 235
    return-object v1
.end method

.method public static triggerUpdate(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateFileName"    # Ljava/lang/String;
    .param p2, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "sh"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 131
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 132
    .local v1, "os":Ljava/io/OutputStream;
    const-string v5, "mkdir -p /cache/recovery/\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 133
    const-string v5, "echo \'boot-recovery\' >/cache/recovery/command\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "updatePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo \'--update_package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_0

    const-string v5, "mkupdater"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' >> /cache/recovery/command\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    .line 140
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 143
    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 144
    .local v3, "powerManager":Landroid/os/PowerManager;
    const-string v5, "recovery"

    invoke-virtual {v3, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 145
    return-void

    .line 137
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    const-string v5, "mkextras"

    goto :goto_0
.end method
