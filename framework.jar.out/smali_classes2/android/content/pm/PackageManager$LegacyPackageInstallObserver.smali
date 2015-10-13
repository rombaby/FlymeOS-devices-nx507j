.class public Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyPackageInstallObserver"
.end annotation


# instance fields
.field private final mLegacy:Landroid/content/pm/IPackageInstallObserver;

.field private final mLegacy2:Landroid/content/pm/IPackageInstallObserver2;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageInstallObserver2;)V
    .locals 1
    .param p1, "legacy"    # Landroid/content/pm/IPackageInstallObserver2;

    .prologue
    .line 4083
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 4084
    iput-object p1, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy2:Landroid/content/pm/IPackageInstallObserver2;

    .line 4085
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    .line 4086
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageInstallObserver;)V
    .locals 1
    .param p1, "legacy"    # Landroid/content/pm/IPackageInstallObserver;

    .prologue
    .line 4076
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    .line 4077
    iput-object p1, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    .line 4079
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy2:Landroid/content/pm/IPackageInstallObserver2;

    .line 4081
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4095
    iget-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy2:Landroid/content/pm/IPackageInstallObserver2;

    if-nez v0, :cond_0

    .line 4111
    :goto_0
    return-void

    .line 4102
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v0, :cond_1

    .line 4103
    iget-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy:Landroid/content/pm/IPackageInstallObserver;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    goto :goto_0

    .line 4109
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4106
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;->mLegacy2:Landroid/content/pm/IPackageInstallObserver2;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
