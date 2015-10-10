.class public Lcom/mokee/helper/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "updateFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 56
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 64
    .local v2, "digest":Ljava/security/MessageDigest;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 70
    .local v4, "is":Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 73
    .local v1, "buffer":[B
    :goto_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_0

    .line 74
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    .end local v7    # "read":I
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to process file for MD5"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 86
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 89
    :goto_1
    throw v8

    .line 57
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 58
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v8, "MD5"

    const-string v9, "Exception while getting digest"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v6

    .line 65
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    :catch_2
    move-exception v3

    .line 66
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v8, "MD5"

    const-string v9, "Exception while getting FileInputStream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 76
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "read":I
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 77
    .local v5, "md5sum":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 78
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "output":Ljava/lang/String;
    const-string v8, "%32s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x30

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 86
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 87
    :catch_3
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "MD5"

    const-string v9, "Exception on closing MD5 input stream"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 87
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "md5sum":[B
    .end local v6    # "output":Ljava/lang/String;
    .end local v7    # "read":I
    :catch_4
    move-exception v3

    .line 88
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "MD5"

    const-string v10, "Exception on closing MD5 input stream"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static checkMD5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 4
    .param p0, "md5"    # Ljava/lang/String;
    .param p1, "updateFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 37
    :cond_0
    const-string v2, "MD5"

    const-string v3, "MD5 string empty or updateFile null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return v1

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/mokee/helper/utils/MD5;->calculateMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "calculatedDigest":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 43
    const-string v2, "MD5"

    const-string v3, "calculatedDigest null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "MD5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v1, "MD5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
