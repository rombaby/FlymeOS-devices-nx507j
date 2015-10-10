.class public Lcom/mokee/helper/utils/UpdateFilter;
.super Ljava/lang/Object;
.source "UpdateFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final mExtension:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "extensions"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/utils/UpdateFilter;->mExtension:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mokee/helper/utils/UpdateFilter;->mExtension:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 36
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    const/4 v4, 0x1

    .line 40
    .end local v1    # "extension":Ljava/lang/String;
    :goto_1
    return v4

    .line 35
    .restart local v1    # "extension":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "extension":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
