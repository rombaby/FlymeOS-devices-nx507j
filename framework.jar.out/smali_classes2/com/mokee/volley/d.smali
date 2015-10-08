.class Lcom/mokee/volley/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/mokee/volley/Request;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method constructor <init>(Lcom/mokee/volley/Request;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/mokee/volley/d;->a:Lcom/mokee/volley/Request;

    iput-object p2, p0, Lcom/mokee/volley/d;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mokee/volley/d;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mokee/volley/d;->a:Lcom/mokee/volley/Request;

    invoke-static {v0}, Lcom/mokee/volley/Request;->a(Lcom/mokee/volley/Request;)Lcom/mokee/volley/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/d;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mokee/volley/d;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/mokee/volley/f;->add(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/mokee/volley/d;->a:Lcom/mokee/volley/Request;

    invoke-static {v0}, Lcom/mokee/volley/Request;->a(Lcom/mokee/volley/Request;)Lcom/mokee/volley/f;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mokee/volley/f;->finish(Ljava/lang/String;)V

    return-void
.end method
