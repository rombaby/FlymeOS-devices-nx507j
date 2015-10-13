.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListParser$Family;,
        Landroid/graphics/FontListParser$Alias;,
        Landroid/graphics/FontListParser$Font;,
        Landroid/graphics/FontListParser$Config;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 82
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 83
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 84
    invoke-static {v0}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    .line 152
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 153
    const-string/jumbo v2, "to"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    .line 154
    const-string/jumbo v2, "weight"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 156
    const/16 v2, 0x190

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    .line 160
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    return-object v0

    .line 158
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    goto :goto_0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 92
    new-instance v0, Landroid/graphics/FontListParser$Config;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    .line 93
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    const/4 v1, 0x0

    const-string v2, "familyset"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 95
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "family"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 104
    :cond_3
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;
    .locals 21
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/16 v18, 0x0

    const-string/jumbo v19, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "name":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "lang"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "lang":Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "variant"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "variant":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v7, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 114
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 115
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "tag":Ljava/lang/String;
    const-string v18, "font"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 117
    const/16 v18, 0x0

    const-string/jumbo v19, "weight"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 118
    .local v17, "weightStr":Ljava/lang/String;
    if-nez v17, :cond_2

    const/16 v16, 0x190

    .line 119
    .local v16, "weight":I
    :goto_1
    const-string v18, "italic"

    const/16 v19, 0x0

    const-string/jumbo v20, "style"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 120
    .local v10, "isItalic":Z
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "filename":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/system/fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "fullFilename":Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/system/theme/fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 126
    .local v14, "tmpFontPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_3

    .line 128
    move-object v9, v14

    .line 141
    .end local v5    # "file":Ljava/io/File;
    .end local v14    # "tmpFontPath":Ljava/lang/String;
    :cond_1
    :goto_2
    new-instance v18, Landroid/graphics/FontListParser$Font;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v9, v1, v10}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;IZ)V

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 118
    .end local v6    # "filename":Ljava/lang/String;
    .end local v9    # "fullFilename":Ljava/lang/String;
    .end local v10    # "isItalic":Z
    .end local v16    # "weight":I
    :cond_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    goto :goto_1

    .line 130
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v9    # "fullFilename":Ljava/lang/String;
    .restart local v10    # "isItalic":Z
    .restart local v14    # "tmpFontPath":Ljava/lang/String;
    .restart local v16    # "weight":I
    :cond_3
    :try_start_1
    const-string v4, "/data/system/theme/fonts/DroidSansFallback.ttf"

    .line 131
    .local v4, "fallBackFont":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v8, "fontsfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "NotoSansHans-Regular.otf"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    if-eqz v18, :cond_1

    .line 133
    move-object v9, v4

    goto :goto_2

    .line 136
    .end local v4    # "fallBackFont":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "fontsfile":Ljava/io/File;
    .end local v14    # "tmpFontPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 143
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v9    # "fullFilename":Ljava/lang/String;
    .end local v10    # "isItalic":Z
    .end local v16    # "weight":I
    .end local v17    # "weightStr":Ljava/lang/String;
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 146
    .end local v13    # "tag":Ljava/lang/String;
    :cond_5
    new-instance v18, Landroid/graphics/FontListParser$Family;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v7, v11, v15}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x1

    .line 166
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 167
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 170
    goto :goto_0

    .line 172
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
