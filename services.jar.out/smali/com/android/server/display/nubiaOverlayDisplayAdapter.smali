.class final Lcom/android/server/display/nubiaOverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "nubiaOverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final NUBIA_OVERLAY_DISPLAY_CLOSE_MODE:Ljava/lang/String; = "single_ui_close_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final STATUS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SU_MODE_CLOSE:I = 0x0

.field private static final SU_MODE_LEFT:I = 0x2

.field private static final SU_MODE_RIGHT:I = 0x1

.field static final TAG:Ljava/lang/String; = "nubiaOverlayDisplayAdapter"


# instance fields
.field private mCurrentSingleUIMode:I

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private rotated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "(\\d+);(\\d+);(\\d+);(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->STATUS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 7
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    .line 92
    const-string v5, "nubiaOverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 137
    iput v6, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    .line 435
    iput-boolean v6, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    .line 93
    iput-object p5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 96
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 20

    .prologue
    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_mode"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 145
    .local v17, "singleUIMode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    if-eqz v2, :cond_2

    if-nez v17, :cond_0

    .line 153
    :cond_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentSingleUIMode:I

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 157
    const-string v2, "nubiaOverlayDisplayAdapter"

    const-string v3, "Dismissing all overlay display devices."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 159
    .local v16, "overlay":Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_1

    .line 161
    .end local v16    # "overlay":Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 165
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v17, :cond_0

    .line 169
    const-string v11, ""

    .line 170
    .local v11, "leftOrRight":Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 171
    const-string v11, "right"

    .line 175
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 176
    .local v5, "x":I
    const/4 v6, 0x0

    .line 177
    .local v6, "y":I
    const/16 v7, 0x3c0

    .line 178
    .local v7, "width":I
    const/16 v8, 0x21c

    .line 180
    .local v8, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_ui_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 181
    .local v18, "status":Ljava/lang/String;
    if-eqz v18, :cond_8

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 182
    sget-object v2, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->STATUS_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 183
    .local v15, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 184
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 185
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 187
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 188
    const/4 v2, 0x4

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 197
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :goto_3
    const/16 v9, 0x1e0

    .line 198
    .local v9, "densityDpi":I
    const-wide v12, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 199
    .local v12, "rate":D
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    .line 200
    const-string v4, "singleUI_view"

    .line 201
    .local v4, "name":Ljava/lang/String;
    const/16 v10, 0x33

    .line 203
    .local v10, "gravity":I
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SingleUI opened :name = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, "x,y"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, " ,wid,hei = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, " ,densityDpi = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, ", gravity = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, ", leftOrRight = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v19, ",rate = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Ljava/lang/String;IIIIIILjava/lang/String;D)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 172
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "densityDpi":I
    .end local v10    # "gravity":I
    .end local v12    # "rate":D
    .end local v18    # "status":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 173
    const-string v11, "left"

    goto/16 :goto_2

    .line 190
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    .restart local v7    # "width":I
    .restart local v8    # "height":I
    .restart local v15    # "matcher":Ljava/util/regex/Matcher;
    .restart local v18    # "status":Ljava/lang/String;
    :cond_7
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NUBIA_OVERLAY_DISPLAY_STATUS is NOT MATCH @ "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 194
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    const-string v2, "nubiaOverlayDisplayAdapter"

    const-string v3, "NUBIA_OVERLAY_DISPLAY_STATUS is EMPTY but still go into nubiaOverlayDisplayAdapter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOverlays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 106
    .local v1, "overlay":Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 108
    .end local v1    # "overlay":Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
