.class public Lcn/nubia/server/HapticsService;
.super Lcn/nubia/server/NubiaSystemService;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/HapticsService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HAPTIC_MODE_AUDIO2HAPTIC:I = 0x1

.field private static final HAPTIC_MODE_IDLE:I = 0x0

.field private static final HAPTIC_MODE_RING:I = 0x8

.field private static final HAPTIC_MODE_RTP_PLAYBACK:I = 0x4

.field private static final HAPTIC_MODE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final HAPTIC_RING_CONFIG:Ljava/lang/String; = "/system/etc/RingHaptics.xml"

.field private static final HAPTIC_RING_SILENCE:Ljava/lang/String; = "0"

.field private static final SW_STATE_AUDIO2HAPTIC:I = 0x1

.field private static final SW_STATE_IDLE:I = 0x0

.field private static final SW_STATE_RTP_PLAYBACK:I = 0x4

.field private static final SW_STATE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HapticsService"

.field private static final XML_HAPTICS:Ljava/lang/String; = "Haptics"

.field private static final XML_HAPTICS_NAME:Ljava/lang/String; = "name"

.field private static final XML_HAPTICS_SEQ:Ljava/lang/String; = "seq"


# instance fields
.field private mA2H_str:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFeedbackEnabled:I

.field private mHapticWhenRing:I

.field private mHapticsLockScreen:I

.field private mHapticsMode:I

.field private mHapticsMultitouch:I

.field private mHapticsRepeat:I

.field private mHapticsScrolling:I

.field private mHapticsStatus:I

.field private mHapticsStatusObserver:Landroid/os/UEventObserver;

.field private mHapticsStatusPrev:I

.field private mHapticsThemeDialpad:I

.field private mHapticsThemeGallery:I

.field private mHapticsThemeLPress:I

.field private mHapticsThemeLauncher:I

.field private mHapticsThemeRotate:I

.field private mHapticsThemeSIP:I

.field private mHapticsThemeVK:I

.field private mRTPSeq:[B

.field private mRTPSeqLen:I

.field private mRingHapticsDefault:I

.field private mRingHapticsName:[Ljava/lang/String;

.field private mRingHapticsSeq:[Ljava/lang/String;

.field private mSeq:[B

.field private mUnLockEffect:[B

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 97
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    .line 98
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    .line 99
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    .line 100
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    .line 101
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    .line 102
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    .line 103
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    .line 104
    const/16 v0, 0x18

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsLockScreen:I

    .line 105
    iput v2, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    .line 106
    iput v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    .line 108
    iput v1, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    .line 109
    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticWhenRing:I

    .line 110
    new-array v0, v3, [B

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    .line 111
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    .line 112
    iput v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    .line 113
    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I

    .line 114
    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    .line 115
    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticsRepeat:I

    .line 116
    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 117
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->mUnLockEffect:[B

    .line 119
    new-instance v0, Lcn/nubia/server/HapticsService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/HapticsService$1;-><init>(Lcn/nubia/server/HapticsService;)V

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    .line 148
    iput-object p1, p0, Lcn/nubia/server/HapticsService;->mContext:Landroid/content/Context;

    .line 149
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    .line 150
    return-void

    .line 117
    nop

    :array_0
    .array-data 1
        0x5ct
        0x77t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private GetRingHapticsFromConfig()V
    .locals 18

    .prologue
    .line 775
    const/4 v11, 0x0

    .line 776
    .local v11, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 777
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 778
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    const-string v15, "/system/etc/RingHaptics.xml"

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .local v2, "config_file":Ljava/io/File;
    const/4 v3, 0x0

    .line 781
    .local v3, "document":Lorg/w3c/dom/Document;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 783
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 787
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 797
    :goto_0
    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .local v12, "inputStream":Ljava/io/InputStream;
    move-object v11, v12

    .line 807
    .end local v12    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 820
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 821
    .local v14, "root":Lorg/w3c/dom/Element;
    const-string v15, "Haptics"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 822
    .local v13, "nl_haptics":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 823
    .local v9, "haptics_count":I
    if-nez v9, :cond_0

    .line 854
    .end local v9    # "haptics_count":I
    .end local v13    # "nl_haptics":Lorg/w3c/dom/NodeList;
    .end local v14    # "root":Lorg/w3c/dom/Element;
    :goto_3
    return-void

    .line 789
    :catch_0
    move-exception v4

    .line 792
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 799
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 802
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 809
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 812
    .local v5, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    .line 814
    .end local v5    # "e1":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 817
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 827
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v9    # "haptics_count":I
    .restart local v13    # "nl_haptics":Lorg/w3c/dom/NodeList;
    .restart local v14    # "root":Lorg/w3c/dom/Element;
    :cond_0
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    .line 828
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    .line 830
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v9, :cond_1

    .line 832
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 833
    .local v6, "em_haptics":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 835
    const-string v15, "seq"

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 836
    .local v7, "em_seq":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 837
    const-string v15, "HapticsService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " seq="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 842
    .end local v6    # "em_haptics":Lorg/w3c/dom/Element;
    .end local v7    # "em_seq":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 844
    :catch_4
    move-exception v4

    .line 847
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 852
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "haptics_count":I
    .end local v10    # "i":I
    .end local v13    # "nl_haptics":Lorg/w3c/dom/NodeList;
    .end local v14    # "root":Lorg/w3c/dom/Element;
    :cond_2
    const-string v15, "HapticsService"

    const-string v16, "/system/etc/RingHaptics.xml is missing"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private InitHapticsA2HSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 196
    iget-object v5, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 197
    iget-object v5, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 199
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/etc/haptics_A2H.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "a2h_f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    .line 203
    .local v4, "filelen":I
    if-lez v4, :cond_1

    .line 205
    new-array v0, v4, [C

    .line 208
    .local v0, "a2hBuf":[C
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 209
    .local v2, "bufReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/BufferedReader;->read([CII)I

    .line 210
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v2    # "bufReader":Ljava/io/BufferedReader;
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v5, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 230
    .end local v0    # "a2hBuf":[C
    .end local v4    # "filelen":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    iget-object v7, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    .end local v1    # "a2h_f":Ljava/io/File;
    :cond_0
    iget-object v5, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcn/nubia/server/HapticsService$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcn/nubia/server/HapticsService$2;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    return-void

    .line 212
    .restart local v0    # "a2hBuf":[C
    .restart local v1    # "a2h_f":Ljava/io/File;
    .restart local v4    # "filelen":I
    :catch_0
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "HapticsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2H BufferedReader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v0    # "a2hBuf":[C
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f length ZERO"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1

    .line 226
    .end local v4    # "filelen":I
    :cond_2
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f is not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1
.end method

.method private InitHapticsEffectSettings(Ljava/lang/String;I)V
    .locals 6
    .param p1, "setting_str"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 280
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "setting":I
    if-nez v0, :cond_0

    .line 283
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    move v0, p2

    .line 287
    :cond_0
    const-string v1, "data_haptictheme_SIP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    .line 324
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/HapticsService$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, p1}, Lcn/nubia/server/HapticsService$5;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 379
    return-void

    .line 291
    :cond_2
    const-string v1, "data_haptictheme_dialpad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    goto :goto_0

    .line 295
    :cond_3
    const-string v1, "data_haptictheme_launcher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    goto :goto_0

    .line 299
    :cond_4
    const-string v1, "data_haptictheme_longpress"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 301
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    goto :goto_0

    .line 303
    :cond_5
    const-string v1, "data_haptictheme_virtualkey"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 305
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    goto :goto_0

    .line 307
    :cond_6
    const-string v1, "data_haptictheme_rotate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 309
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    goto :goto_0

    .line 311
    :cond_7
    const-string v1, "data_haptictheme_gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 313
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    goto :goto_0

    .line 315
    :cond_8
    const-string v1, "data_haptictheme_scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 317
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    goto :goto_0

    .line 319
    :cond_9
    const-string v1, "data_haptictheme_multi_touch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    goto :goto_0
.end method

.method private InitHapticsRingSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-direct {p0}, Lcn/nubia/server/HapticsService;->GetRingHapticsFromConfig()V

    .line 248
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    .line 249
    iget v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/HapticsService$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/HapticsService$3;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticWhenRing:I

    .line 266
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/HapticsService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcn/nubia/server/HapticsService$4;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    return-void
.end method

.method private LookupHapticValue(I)I
    .locals 1
    .param p1, "effectID"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "value":I
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    :pswitch_0
    return v0

    .line 158
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    .line 165
    goto :goto_0

    .line 167
    :pswitch_4
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    .line 168
    goto :goto_0

    .line 170
    :pswitch_5
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    .line 171
    goto :goto_0

    .line 173
    :pswitch_6
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    .line 174
    goto :goto_0

    .line 176
    :pswitch_7
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    .line 177
    goto :goto_0

    .line 179
    :pswitch_8
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsLockScreen:I

    .line 180
    goto :goto_0

    .line 182
    :pswitch_9
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    .line 183
    goto :goto_0

    .line 185
    :pswitch_a
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    .line 186
    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcn/nubia/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .prologue
    .line 69
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .prologue
    .line 69
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    return p1
.end method

.method static synthetic access$1202(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    return p1
.end method

.method static synthetic access$1302(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    return p1
.end method

.method static synthetic access$1402(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    return p1
.end method

.method static synthetic access$1502(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    return p1
.end method

.method static synthetic access$1602(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    return p1
.end method

.method static synthetic access$1702(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .prologue
    .line 69
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$272(Lcn/nubia/server/HapticsService;I)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/HapticsService;)[B
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/server/HapticsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/server/HapticsService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    return p1
.end method

.method static synthetic access$702(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticWhenRing:I

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    return p1
.end method

.method static synthetic access$902(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    return p1
.end method

.method private isA2HEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setupRTPSeq(Ljava/lang/String;)V
    .locals 5
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 452
    iget-object v3, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 453
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "seq_str":[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v2, :cond_0

    :goto_0
    iput v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    if-ge v0, v2, :cond_1

    .line 457
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    .end local v0    # "i":I
    :cond_0
    array-length v2, v1

    goto :goto_0

    .line 459
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setupRTPSeq([BI)V
    .locals 4
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    const/16 v1, 0x20

    .line 463
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 465
    if-le p2, v1, :cond_0

    move p2, v1

    .end local p2    # "buffSize":I
    :cond_0
    iput p2, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    if-ge v0, v1, :cond_1

    .line 468
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_1
    return-void
.end method

.method private setupSeq(Ljava/lang/String;)V
    .locals 4
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 434
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, "seq_str":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 437
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method private setupSeq([BI)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 443
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 446
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method public getRingHapticsNameInternal(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 760
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    return-object v0
.end method

.method public getRingHapticsValueInternal(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 770
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRingHapticsValuesInternal(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 765
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    return-object v0
.end method

.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 868
    const-string v0, "haptics"

    invoke-virtual {p0, v0}, Lcn/nubia/server/HapticsService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    const-string v0, "haptics"

    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 858
    invoke-virtual {p0}, Lcn/nubia/server/HapticsService;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/HapticsService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/HapticsService$BinderService;-><init>(Lcn/nubia/server/HapticsService;Lcn/nubia/server/HapticsService$1;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/HapticsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 859
    return-void
.end method

.method public playEffectSeqBuffInternal([BILandroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 596
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 598
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSeqBuff skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 603
    :cond_2
    if-lez p2, :cond_1

    const/16 v0, 0x8

    if-ge p2, v0, :cond_1

    .line 605
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 606
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/HapticsService;->setupSeq([BI)V

    .line 607
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSeqBuff["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    invoke-static {v0, p2}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playEffectSequenceInternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 571
    iget v0, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 573
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 575
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffectSequence skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_1
    :goto_0
    return-void

    .line 579
    :cond_2
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_3
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 586
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playEffectSequenceRepeatInternal(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "repeat"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 659
    iput p2, p0, Lcn/nubia/server/HapticsService;->mHapticsRepeat:I

    .line 660
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    .line 663
    return-void
.end method

.method public playNubiaEffectInternal(IZLandroid/os/IBinder;)V
    .locals 3
    .param p1, "effectID"    # I
    .param p2, "ignoreFeedBack"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 494
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNubiaEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") skip,ignoreFeedBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez p2, :cond_2

    .line 497
    iget v0, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 499
    if-lez p1, :cond_1

    const/16 v0, 0x7c

    if-ge p1, v0, :cond_1

    .line 501
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    if-eqz v0, :cond_0

    .line 503
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 505
    :cond_0
    invoke-static {p1}, Lcom/ti/Haptic;->playEffect(I)V

    .line 519
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    if-eqz v0, :cond_3

    .line 513
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 515
    :cond_3
    invoke-static {p1}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0
.end method

.method public playPatternRTPInternal(IIIILandroid/os/IBinder;)V
    .locals 0
    .param p1, "vibrationDuration"    # I
    .param p2, "silienceDuration"    # I
    .param p3, "repeat_times"    # I
    .param p4, "vibrationStrength"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 565
    invoke-static {p1, p2, p3, p4}, Lcom/ti/Haptic;->playPatternRTP(IIII)V

    .line 567
    return-void
.end method

.method public playRTPSeqBuffInternal([BILandroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 639
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 641
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSeqBuff skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    :goto_0
    return-void

    .line 645
    :cond_2
    if-lez p2, :cond_1

    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 647
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 648
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/HapticsService;->setupRTPSeq([BI)V

    .line 649
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSeqBuff["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playRTPSequence([BI)V

    goto :goto_0
.end method

.method public playRTPSequenceInternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 617
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 619
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRTPSequence skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_0
    return-void

    .line 623
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_2
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 630
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->setupRTPSeq(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playRTPSequence([BI)V

    goto :goto_0
.end method

.method public playRingHapticsInternal(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 720
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingHaptics: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRingHapticsDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-nez p1, :cond_0

    iget v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 724
    :cond_0
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 725
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 727
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 730
    :cond_1
    if-nez p1, :cond_2

    .line 732
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 739
    :goto_1
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playRingSeqInternal(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 746
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingSeq :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    if-nez p1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 750
    :cond_0
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 752
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playTimedEffectInternal(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "effectDuration"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 558
    invoke-static {p1}, Lcom/ti/Haptic;->playTimedEffect(I)V

    .line 560
    return-void
.end method

.method public playeffectInternal(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 474
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 476
    :cond_0
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playeffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") skip,mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HapticStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    iget v1, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 482
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 483
    .local v0, "value":I
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-lez v0, :cond_3

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_3

    .line 485
    invoke-static {v0}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0

    .line 487
    :cond_3
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playeffectforceInternal(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 523
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 525
    :cond_0
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playeffectforce playeffect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") skip,mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HapticStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_1
    :goto_0
    return-void

    .line 529
    :cond_2
    iget v1, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 531
    const/16 v1, 0xa

    if-ne p1, v1, :cond_3

    .line 533
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->mUnLockEffect:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 537
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 538
    .local v0, "value":I
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-lez v0, :cond_5

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_5

    .line 541
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    if-eqz v1, :cond_4

    .line 543
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 545
    :cond_4
    invoke-static {v0}, Lcom/ti/Haptic;->playEffect(I)V

    goto :goto_0

    .line 548
    :cond_5
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAudioHapticEnabledInternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    .line 692
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->isA2HEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 693
    .local v0, "sw":Z
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioHapticEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mHapticsMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SW="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-eqz v0, :cond_1

    .line 696
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 697
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 715
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-static {v4}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    goto :goto_0

    .line 707
    :cond_1
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    if-ne v1, v4, :cond_2

    .line 709
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 711
    :cond_2
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    goto :goto_0
.end method

.method public stopPlayingEffectInternal(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 668
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 670
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 671
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 674
    :cond_0
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPlayingEffect2 mHapticsMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 677
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ti/Haptic;->setAudioHapticEnabled(Z)V

    .line 678
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 681
    :cond_1
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 683
    invoke-static {}, Lcom/ti/Haptic;->stopPlayingEffect()V

    .line 684
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 687
    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 385
    :try_start_0
    invoke-static {}, Lcom/ti/Haptic;->initialize()V

    .line 386
    const-string v1, "HapticsService"

    const-string v2, "Haptic initialize"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    const-string v1, "data_haptictheme_SIP"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 394
    const-string v1, "data_haptictheme_dialpad"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 395
    const-string v1, "data_haptictheme_launcher"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 396
    const-string v1, "data_haptictheme_longpress"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 397
    const-string v1, "data_haptictheme_virtualkey"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 398
    const-string v1, "data_haptictheme_rotate"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 399
    const-string v1, "data_haptictheme_gallery"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 400
    const-string v1, "data_haptictheme_scroll"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 401
    const-string v1, "data_haptictheme_multi_touch"

    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 402
    invoke-direct {p0}, Lcn/nubia/server/HapticsService;->InitHapticsA2HSetting()V

    .line 403
    invoke-direct {p0}, Lcn/nubia/server/HapticsService;->InitHapticsRingSetting()V

    .line 405
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    .line 406
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/HapticsService$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcn/nubia/server/HapticsService$6;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 416
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/haptics/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/switch/haptics"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 424
    :goto_1
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 422
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "HapticsService"

    const-string v2, "switch not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
