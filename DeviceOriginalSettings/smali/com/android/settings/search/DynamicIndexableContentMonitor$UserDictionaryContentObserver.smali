.class final Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;
.super Landroid/database/ContentObserver;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserDictionaryContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;->this$0:Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;

    .line 302
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 303
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 307
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor$UserDictionaryContentObserver;->this$0:Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;

    # getter for: Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;->access$200(Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/Index;

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 311
    :cond_0
    return-void
.end method
