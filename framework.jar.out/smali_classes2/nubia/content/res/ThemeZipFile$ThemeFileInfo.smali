.class public Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/content/res/ThemeZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeFileInfo"
.end annotation


# instance fields
.field public mDensity:I

.field public mInput:Ljava/io/InputStream;

.field public mSize:J

.field final synthetic this$0:Lnubia/content/res/ThemeZipFile;


# direct methods
.method constructor <init>(Lnubia/content/res/ThemeZipFile;Ljava/io/InputStream;J)V
    .locals 1
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "size"    # J

    .prologue
    .line 453
    iput-object p1, p0, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->this$0:Lnubia/content/res/ThemeZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p2, p0, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 455
    iput-wide p3, p0, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mSize:J

    .line 456
    return-void
.end method
