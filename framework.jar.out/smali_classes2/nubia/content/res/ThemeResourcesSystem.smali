.class public Lnubia/content/res/ThemeResourcesSystem;
.super Lnubia/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static sIcons:Lnubia/content/res/ThemeResources;

.field private static sLockscreen:Lnubia/content/res/ThemeResources;

.field private static sNubia:Lnubia/content/res/ThemeResources;

.field private static sSystemUI:Lnubia/content/res/ThemeResources;


# instance fields
.field protected mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnubia/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 1
    .param p1, "wrappedResources"    # Lnubia/content/res/ThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;

    .prologue
    .line 25
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 26
    iget-object v0, p3, Lnubia/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    iput-object v0, p0, Lnubia/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private getThemeFileStreamNubia(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const-string v1, "lock_screen_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p2}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 50
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 51
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 52
    :cond_1
    return-object v0

    .line 43
    :cond_2
    const-string v1, "status_bar_toggle_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    if-nez v1, :cond_3

    .line 45
    iget-object v1, p0, Lnubia/content/res/ThemeResourcesSystem;->mResources:Landroid/content/res/Resources;

    const-string v2, "com.android.systemui"

    invoke-static {v1, v2}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v1

    sput-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    .line 47
    :cond_3
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v1, "default_wallpaper.jpg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 69
    .local v0, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const-string v1, "sym_def_app_icon.png"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 73
    :cond_2
    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResourcesSystem;
    .locals 4
    .param p0, "originalResources"    # Landroid/content/res/Resources;

    .prologue
    .line 87
    const-string v3, "icons"

    invoke-static {p0, v3}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    .line 89
    const-string v3, "lockscreen"

    invoke-static {p0, v3}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    .line 91
    const-string v3, "framework-nubia-res"

    invoke-static {p0, v3}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v3

    sput-object v3, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "finalThemeResources":Lnubia/content/res/ThemeResourcesSystem;
    const/4 v1, 0x0

    .line 96
    .local v1, "i":I
    :goto_0
    sget-object v3, Lnubia/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 97
    new-instance v2, Lnubia/content/res/ThemeResourcesSystem;

    sget-object v3, Lnubia/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v1

    invoke-direct {v2, v0, p0, v3}, Lnubia/content/res/ThemeResourcesSystem;-><init>(Lnubia/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 100
    .local v2, "wrappedThemeResources":Lnubia/content/res/ThemeResourcesSystem;
    move-object v0, v2

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    goto :goto_0

    .line 103
    .end local v2    # "wrappedThemeResources":Lnubia/content/res/ThemeResourcesSystem;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 109
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 110
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 111
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 113
    :cond_0
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 216
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAwesomeLockscreenFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 226
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 124
    const/4 v7, 0x0

    .line 125
    .local v7, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 126
    .local v3, "info":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v3, :cond_3

    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iget v1, v3, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 129
    .local v1, "density":I
    if-lez v1, :cond_0

    .line 130
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 131
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 133
    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v6, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    :try_start_0
    new-array v0, v9, [B

    .line 136
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 137
    .local v4, "n":I
    const/4 v8, 0x0

    .line 138
    .local v8, "total":I
    :cond_1
    :goto_0
    iget-object v9, v3, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v10, v4, :cond_2

    .line 139
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 140
    if-eq v4, v10, :cond_1

    add-int/2addr v8, v4

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 151
    :try_start_1
    iget-object v9, v3, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .end local v0    # "buffer":[B
    .end local v1    # "density":I
    .end local v4    # "n":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "total":I
    :cond_3
    :goto_1
    return-object v7

    .line 153
    .restart local v0    # "buffer":[B
    .restart local v1    # "density":I
    .restart local v4    # "n":I
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "total":I
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "n":I
    .end local v8    # "total":I
    :catch_1
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :try_start_3
    iget-object v9, v3, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 153
    :catch_2
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v9, "ThemeResourcesSystem"

    const-string v10, "ThemeResourcesSystem getIconi"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    const/4 v7, 0x0

    .line 151
    :try_start_5
    iget-object v9, v3, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 153
    :catch_4
    move-exception v2

    .line 154
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 151
    :try_start_6
    iget-object v10, v3, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 155
    :goto_2
    throw v9

    .line 153
    :catch_5
    move-exception v2

    .line 154
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnubia/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lnubia/content/res/ThemeResourcesSystem;->mWrapped:Lnubia/content/res/ThemeResources;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lnubia/content/res/ThemeResourcesSystem;->mWrapped:Lnubia/content/res/ThemeResources;

    check-cast v1, Lnubia/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lnubia/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v0

    .line 250
    :cond_1
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 173
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    .local v0, "result":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 175
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 176
    :cond_0
    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 178
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "type"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 183
    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "realName":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 185
    invoke-direct {p0, p2, v0}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamNubia(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 187
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p2, v0}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 192
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 193
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 194
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 195
    :cond_0
    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 197
    :cond_1
    return-object v0
.end method

.method public hasAwesomeLockscreen()Z
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iconName"    # Ljava/lang/String;

    .prologue
    .line 260
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lnubia/content/res/ThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sLockscreen:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetIcons()V
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sIcons:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 273
    return-void
.end method
