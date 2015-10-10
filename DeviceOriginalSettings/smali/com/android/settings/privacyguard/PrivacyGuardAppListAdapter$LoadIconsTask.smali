.class Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGuardAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;-><init>(Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->doInBackground([Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;
    .locals 7
    .param p1, "apps"    # [Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;

    .prologue
    .line 158
    move-object v1, p1

    .local v1, "arr$":[Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 160
    .local v0, "app":Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;
    :try_start_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;->access$100(Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 161
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;

    # getter for: Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;->access$200(Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "app":Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 163
    .restart local v0    # "app":Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardManager$AppInfo;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 1
    .param p1, "progress"    # [Ljava/lang/Void;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 174
    return-void
.end method
