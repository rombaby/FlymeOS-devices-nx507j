.class Lcom/google/analytics/tracking/android/SendHitRateLimiter;
.super Ljava/lang/Object;
.source "SendHitRateLimiter.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/RateLimiter;


# instance fields
.field private mLastTrackTime:J

.field private final mMaxTokens:I

.field private final mMillisecondsPerToken:J

.field private final mTokenLock:Ljava/lang/Object;

.field private mTokens:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 39
    const/16 v0, 0x3c

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/analytics/tracking/android/SendHitRateLimiter;-><init>(IJ)V

    .line 40
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "maxTokenCount"    # I
    .param p2, "millisecondsPerToken"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    .line 29
    iput p1, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    .line 30
    iget v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 31
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    .line 32
    return-void
.end method


# virtual methods
.method public tokenAvailable()Z
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 62
    iget-object v7, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokenLock:Ljava/lang/Object;

    monitor-enter v7

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 64
    .local v2, "timeNow":J
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    iget v6, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v10, v6

    cmpg-double v6, v8, v10

    if-gez v6, :cond_0

    .line 65
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    sub-long v0, v2, v8

    .line 66
    .local v0, "timeElapsed":J
    long-to-double v8, v0

    iget-wide v10, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMillisecondsPerToken:J

    long-to-double v10, v10

    div-double v4, v8, v10

    .line 67
    .local v4, "tokensDue":D
    const-wide/16 v8, 0x0

    cmpl-double v6, v4, v8

    if-lez v6, :cond_0

    .line 68
    iget v6, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mMaxTokens:I

    int-to-double v8, v6

    iget-wide v10, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    add-double/2addr v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 71
    .end local v0    # "timeElapsed":J
    .end local v4    # "tokensDue":D
    :cond_0
    iput-wide v2, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mLastTrackTime:J

    .line 72
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    cmpl-double v6, v8, v12

    if-ltz v6, :cond_1

    .line 73
    iget-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    sub-double/2addr v8, v12

    iput-wide v8, p0, Lcom/google/analytics/tracking/android/SendHitRateLimiter;->mTokens:D

    .line 74
    const/4 v6, 0x1

    monitor-exit v7

    .line 77
    :goto_0
    return v6

    .line 76
    :cond_1
    const-string v6, "Excessive tracking detected.  Tracking call ignored."

    invoke-static {v6}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)V

    .line 77
    const/4 v6, 0x0

    monitor-exit v7

    goto :goto_0

    .line 78
    .end local v2    # "timeNow":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
