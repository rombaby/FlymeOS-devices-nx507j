.class public Lcom/mokee/volley/VolleyError;
.super Ljava/lang/Exception;


# static fields
.field public static b:Z


# instance fields
.field public final networkResponse:Lcom/mokee/volley/NetworkResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/volley/VolleyError;->networkResponse:Lcom/mokee/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/VolleyError;->networkResponse:Lcom/mokee/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/volley/VolleyError;->networkResponse:Lcom/mokee/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/volley/VolleyError;->networkResponse:Lcom/mokee/volley/NetworkResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/volley/VolleyError;->networkResponse:Lcom/mokee/volley/NetworkResponse;

    return-void
.end method
