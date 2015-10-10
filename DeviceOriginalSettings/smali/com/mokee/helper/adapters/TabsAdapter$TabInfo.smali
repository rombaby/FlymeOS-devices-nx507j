.class final Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "TabsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/adapters/TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 46
    iput-object p2, p0, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
