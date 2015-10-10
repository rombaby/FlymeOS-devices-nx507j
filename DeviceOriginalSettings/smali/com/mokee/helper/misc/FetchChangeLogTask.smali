.class public Lcom/mokee/helper/misc/FetchChangeLogTask;
.super Landroid/os/AsyncTask;
.source "FetchChangeLogTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/mokee/helper/misc/ItemInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/mokee/helper/misc/ItemInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/mokee/helper/misc/FetchChangeLogTask;)Lcom/mokee/helper/widget/NotifyingWebView;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/misc/FetchChangeLogTask;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mokee/helper/misc/FetchChangeLogTask;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/misc/FetchChangeLogTask;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mokee/helper/misc/FetchChangeLogTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/misc/FetchChangeLogTask;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private fetchChangeLog(Lcom/mokee/helper/misc/ItemInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/mokee/helper/misc/ItemInfo;

    .prologue
    .line 125
    const-string v1, "FetchChangeLogTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting change log for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mokee/helper/misc/ItemInfo;->getChangelogUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v5, Lcom/mokee/helper/misc/FetchChangeLogTask$2;

    invoke-direct {v5, p0}, Lcom/mokee/helper/misc/FetchChangeLogTask$2;-><init>(Lcom/mokee/helper/misc/FetchChangeLogTask;)V

    .line 138
    .local v5, "errorListener":Lcom/android/volley/Response$ErrorListener;
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v4

    .line 139
    .local v4, "future":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<Ljava/lang/String;>;"
    new-instance v0, Lcom/mokee/helper/requests/ChangeLogRequest;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/mokee/helper/misc/ItemInfo;->getChangelogUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mokee/helper/utils/Utils;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/mokee/helper/requests/ChangeLogRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 141
    .local v0, "request":Lcom/mokee/helper/requests/ChangeLogRequest;
    const-string v1, "FetchChangeLogTask"

    invoke-virtual {v0, v1}, Lcom/mokee/helper/requests/ChangeLogRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 143
    iget-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/mokee/helper/MoKeeApplication;

    invoke-virtual {v1}, Lcom/mokee/helper/MoKeeApplication;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 145
    :try_start_0
    invoke-virtual {v4}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 146
    .local v7, "response":Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/mokee/helper/misc/FetchChangeLogTask;->parseChangeLogFromResponse(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v7    # "response":Ljava/lang/String;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v6

    .line 148
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 150
    .local v6, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v6}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseChangeLogFromResponse(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)V
    .locals 11
    .param p1, "info"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "finished":Z
    const/4 v4, 0x0

    .line 157
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 160
    .local v6, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    iget-object v9, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v9}, Lcom/mokee/helper/misc/ItemInfo;->getChangeLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 162
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x800

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 165
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 167
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 169
    const-string v8, "Project:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 170
    const-string v8, "<u>"

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 171
    invoke-virtual {v7, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 172
    const-string v8, "</u><br />"

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 183
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .line 184
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    const-string v8, "FetchChangeLogTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Downloading change log for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    if-eqz v4, :cond_1

    .line 189
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 194
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 196
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    if-nez v2, :cond_3

    .line 204
    iget-object v8, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/mokee/helper/misc/ItemInfo;->getChangeLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 206
    :cond_3
    return-void

    .line 173
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    :try_start_6
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 174
    const-string v8, "&#8226;&nbsp;"

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 175
    invoke-virtual {v7, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 176
    const-string v8, "<br />"

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 187
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v4, :cond_5

    .line 189
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 194
    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    .line 196
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 199
    :cond_6
    :goto_6
    throw v8

    .line 178
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_7
    :try_start_9
    invoke-virtual {v7, v3}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 179
    const-string v8, "<br />"

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 182
    :cond_8
    const/4 v2, 0x1

    .line 187
    if-eqz v5, :cond_9

    .line 189
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 194
    :cond_9
    :goto_7
    if-eqz v7, :cond_a

    .line 196
    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .line 199
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 197
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .line 199
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 190
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v8

    goto :goto_7

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v8

    goto :goto_2

    .line 197
    :catch_4
    move-exception v8

    goto :goto_3

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 197
    :catch_6
    move-exception v9

    goto :goto_6

    .line 187
    :catchall_1
    move-exception v8

    goto :goto_4

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 183
    :catch_7
    move-exception v1

    goto/16 :goto_1

    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto/16 :goto_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :cond_a
    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, [Lcom/mokee/helper/misc/ItemInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/helper/misc/FetchChangeLogTask;->doInBackground([Lcom/mokee/helper/misc/ItemInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/mokee/helper/misc/ItemInfo;)Ljava/lang/Void;
    .locals 3
    .param p1, "infos"    # [Lcom/mokee/helper/misc/ItemInfo;

    .prologue
    .line 66
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mInfo:Lcom/mokee/helper/misc/ItemInfo;

    .line 68
    iget-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mInfo:Lcom/mokee/helper/misc/ItemInfo;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mInfo:Lcom/mokee/helper/misc/ItemInfo;

    iget-object v2, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo;->getChangeLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 70
    .local v0, "changeLog":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-direct {p0, v1}, Lcom/mokee/helper/misc/FetchChangeLogTask;->fetchChangeLog(Lcom/mokee/helper/misc/ItemInfo;)V

    .line 74
    .end local v0    # "changeLog":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mokee/helper/MoKeeApplication;

    invoke-virtual {v0}, Lcom/mokee/helper/MoKeeApplication;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "FetchChangeLogTask"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    invoke-virtual {v0}, Lcom/mokee/helper/widget/NotifyingWebView;->destroy()V

    .line 214
    iput-object v2, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    .line 215
    iput-object v2, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 216
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/helper/misc/FetchChangeLogTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mInfo:Lcom/mokee/helper/misc/ItemInfo;

    iget-object v2, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo;->getChangeLogFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 115
    .local v0, "changeLog":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0052

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/widget/NotifyingWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 79
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 80
    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04001f

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "progressContainer":Landroid/view/View;
    const v3, 0x7f11004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mokee/helper/widget/NotifyingWebView;

    iput-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    .line 86
    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    new-instance v4, Lcom/mokee/helper/misc/FetchChangeLogTask$1;

    invoke-direct {v4, p0, v1}, Lcom/mokee/helper/misc/FetchChangeLogTask$1;-><init>(Lcom/mokee/helper/misc/FetchChangeLogTask;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/mokee/helper/widget/NotifyingWebView;->setOnInitialContentReadyListener(Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;)V

    .line 95
    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    invoke-virtual {v3}, Lcom/mokee/helper/widget/NotifyingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 96
    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    invoke-virtual {v3}, Lcom/mokee/helper/widget/NotifyingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;

    iget-object v4, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mokee/helper/widget/NotifyingWebView;->setBackgroundColor(I)V

    .line 101
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0053

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0044

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 106
    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    iget-object v3, p0, Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 108
    return-void
.end method
