.class public Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;
.super Ljava/lang/Object;
.source "NubiaFeaturesUtils.java"


# static fields
.field private static final CLOSE_GLOVE_MODE:Ljava/lang/String; = "0"

.field private static final CLOSE_GLOVE_MODE_FOR_SMARTFACE:Ljava/lang/String; = "2"

.field private static final CLOSE_TOUCHABLE_MODE:Ljava/lang/String; = "0"

.field private static final OPEN_GLOVE_MODE:Ljava/lang/String; = "3"

.field private static final OPEN_GLOVE_MODE_FOR_SMARTFACE:Ljava/lang/String; = "1"

.field private static final OPEN_TOUCHABLE_MODE:Ljava/lang/String; = "1"

.field private static final PATH_SCREEN_GLOVE_MODE:Ljava/lang/String; = "/data/tp/touch_mode"

.field private static final PATH_SCREEN_TOUCHABLE_NODE:Ljava/lang/String; = "/data/tp/hall_mode"

.field public static final SMARTFACE_GLOVE_MODE_FEATURE:Ljava/lang/String; = "cn.nubia.smartface.feature.glovemode"

.field public static final SMARTFACE_SCREEN_SLIDE_MODE_FEATURE:Ljava/lang/String; = "cn.nubia.smartface.feature.lattice_screenslding"

.field private static final TAG:Ljava/lang/String; = "NubiaFeaturesManager"

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealGLoveNode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 198
    sget-object v0, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$4;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$4;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public static dealGLoveNodeForSmartFace(ZZ)V
    .locals 2
    .param p0, "enable"    # Z
    .param p1, "isSysSupport"    # Z

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v0, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$2;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$2;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static dealScreenNode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 29
    sget-object v0, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    return-void
.end method

.method public static dealScreenSlideNodeForSmartFace(ZZ)V
    .locals 2
    .param p0, "enable"    # Z
    .param p1, "isSysSupport"    # Z

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$3;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$3;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static disableScreenTouch(Z)V
    .locals 8
    .param p0, "enabled"    # Z

    .prologue
    .line 130
    const-class v5, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;

    monitor-enter v5

    .line 131
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/tp/hall_mode"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v2, 0x0

    .line 136
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    if-eqz p0, :cond_2

    .line 138
    :try_start_2
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 142
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 146
    if-eqz v3, :cond_4

    .line 148
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 154
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v5

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 140
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_2
    :try_start_5
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 144
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :goto_3
    :try_start_6
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "disableScreenTouch IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 146
    if-eqz v2, :cond_1

    .line 148
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 149
    :catch_1
    move-exception v0

    .line 150
    :try_start_8
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "disableScreenTouch close IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "disableScreenTouch close IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v2, v3

    .line 151
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_4
    if-eqz v2, :cond_3

    .line 148
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 151
    :cond_3
    :goto_5
    :try_start_a
    throw v4

    .line 149
    :catch_3
    move-exception v0

    .line 150
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "NubiaFeaturesManager"

    const-string v7, "disableScreenTouch close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_4

    .line 143
    :catch_4
    move-exception v0

    goto :goto_3

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_4
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static enableGloveTouch(Z)V
    .locals 8
    .param p0, "enabled"    # Z

    .prologue
    .line 102
    const-class v5, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;

    monitor-enter v5

    .line 103
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/tp/touch_mode"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v2, 0x0

    .line 108
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    if-eqz p0, :cond_2

    .line 110
    :try_start_2
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 114
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 118
    if-eqz v3, :cond_4

    .line 120
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 126
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_2
    :try_start_4
    monitor-exit v5

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 112
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_2
    :try_start_5
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 116
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :goto_3
    :try_start_6
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "enableGloveTouch IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    if-eqz v2, :cond_1

    .line 120
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 121
    :catch_1
    move-exception v0

    .line 122
    :try_start_8
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "enableGloveTouch close IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "enableGloveTouch close IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v2, v3

    .line 123
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_4
    if-eqz v2, :cond_3

    .line 120
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 123
    :cond_3
    :goto_5
    :try_start_a
    throw v4

    .line 121
    :catch_3
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "NubiaFeaturesManager"

    const-string v7, "enableGloveTouch close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_4

    .line 115
    :catch_4
    move-exception v0

    goto :goto_3

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_4
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public static getScreenNodeMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "openMode"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "flag":Z
    invoke-static {p1}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->getScreenNodeModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "value":Ljava/lang/String;
    const-string v2, "NubiaFeaturesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenNodeMode value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_0
    return v0
.end method

.method public static getScreenNodeModeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v9, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;

    monitor-enter v9

    .line 169
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 171
    const-string v7, ""

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    return-object v7

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 175
    .local v0, "breader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    .end local v0    # "breader":Ljava/io/BufferedReader;
    .local v1, "breader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 178
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 179
    .local v5, "length_str":I
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 185
    .local v7, "strnew":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 187
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v9

    goto :goto_0

    .line 194
    .end local v1    # "breader":Ljava/io/BufferedReader;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "length_str":I
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "strnew":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 188
    .restart local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "length_str":I
    .restart local v6    # "str":Ljava/lang/String;
    .restart local v7    # "strnew":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e2":Ljava/lang/Exception;
    :try_start_5
    const-string v8, "NubiaFeaturesManager"

    const-string v10, "getScreenNodeModeValue close IOException"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 185
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v5    # "length_str":I
    .end local v7    # "strnew":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_5

    .line 187
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 193
    .end local v1    # "breader":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v0    # "breader":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    :try_start_7
    const-string v7, ""

    monitor-exit v9

    goto :goto_0

    .line 188
    .end local v0    # "breader":Ljava/io/BufferedReader;
    .restart local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 189
    .restart local v3    # "e2":Ljava/lang/Exception;
    const-string v8, "NubiaFeaturesManager"

    const-string v10, "getScreenNodeModeValue close IOException"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v1

    .line 190
    .end local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v0    # "breader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 182
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v6    # "str":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 183
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    const-string v8, "NubiaFeaturesManager"

    const-string v10, "getScreenNodeModeValue IOException"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 185
    if-eqz v0, :cond_3

    .line 187
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 188
    :catch_3
    move-exception v3

    .line 189
    .restart local v3    # "e2":Ljava/lang/Exception;
    :try_start_a
    const-string v8, "NubiaFeaturesManager"

    const-string v10, "getScreenNodeModeValue close IOException"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    :goto_4
    if-eqz v0, :cond_4

    .line 187
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 190
    :cond_4
    :goto_5
    :try_start_c
    throw v8

    .line 188
    :catch_4
    move-exception v3

    .line 189
    .restart local v3    # "e2":Ljava/lang/Exception;
    const-string v10, "NubiaFeaturesManager"

    const-string v11, "getScreenNodeModeValue close IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 185
    .end local v0    # "breader":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/lang/Exception;
    .restart local v1    # "breader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v0    # "breader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 182
    .end local v0    # "breader":Ljava/io/BufferedReader;
    .restart local v1    # "breader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v0    # "breader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "breader":Ljava/io/BufferedReader;
    .restart local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1    # "breader":Ljava/io/BufferedReader;
    .restart local v0    # "breader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static writeGloveTouchForSmartFace(Ljava/lang/String;)V
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v5, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;

    monitor-enter v5

    .line 77
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/tp/touch_mode"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v2, 0x0

    .line 82
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    if-eqz v3, :cond_3

    .line 90
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .line 97
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v5

    goto :goto_0

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 91
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "writeGloveTouchForSmartFace close IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v3

    .line 94
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_1

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "writeGloveTouchForSmartFace IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 88
    if-eqz v2, :cond_1

    .line 90
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 91
    :catch_2
    move-exception v0

    .line 92
    :try_start_8
    const-string v4, "NubiaFeaturesManager"

    const-string v6, "writeGloveTouchForSmartFace close IOException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_3
    if-eqz v2, :cond_2

    .line 90
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 94
    :cond_2
    :goto_4
    :try_start_a
    throw v4

    .line 91
    :catch_3
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "NubiaFeaturesManager"

    const-string v7, "writeGloveTouchForSmartFace close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 85
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_3
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method
