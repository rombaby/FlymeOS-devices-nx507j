.class public Lcom/mokee/security/Encryption;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "h^f"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/4 v9, 0x1

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "\n<\u0015:5\u000f;\u001018{OdMD|"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\n<\u0015:5\u000f;\u001018{OdMD|"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "wDnJeMDeHE{CenjKeL`F\u0003z\u0017K@kHaH@iNfdDMj@Ce{jbH@UJeHM{>P_3\u0002=\u0011>j~wn&X|4Q|tnZMf0\u000bhl]9w:\u0013{EH;U|bR`iFIS|L1wYolasIID~knZeGDJb]=yno\u0010FRpf\u0017YxKjo~P[X\u007ffG\u0002C\u000cE1\u007f{nQMr;D<N~]DfLhd\u00119rWJNeMbzi\"u\u000bah`D\u000bhPsw\u000eztpUTA\u0013PbmC@m5\u0003n\u0015nUR&h89qIAOt\tOsk2{jjK@{HdnX\u007fLM\u007fbtFcN1k&p\"8T@\u0013`wob\u0015mQ{c\u0010\"5_8nynp[V[vwcI[C_zPpTk4\u0013fEVoNPqs>\u001ePolFV]wniQFRcfRdR\n~hccS@FPmLeEG1^;^:RJO\u00178hl8_je`>eJXU>omfTlwKmjXpxsCTWF[_zjntoJ`F@Y8ojo{fFdbKkF0cL|mfjyx~\\dKabJPkIJn5|I@PMin\u000cFU~LDyL\u0002}eZ7Wn@fSy{FJr^ORCkLOCemih\u001f:D|xPzlSWF[Rn5NSY}]\u0012[esH}avmcHHDTe~^vTafbD{z\u0010G{YgT\"fhXUD{cAl~etKP;8@lDQVyH\u0017\\Q\u0015e\u0013n`\u000c8izlmgW\"Ym8CgS\u000fDbsrp@JOQmC\u0011{1b_iqYsz`9rPkLe.KzmK@v\\h8OrhvLnn\u007fenXN_\u001eJEiFM>5\u007fGLc[L?tgbqL}sVt8eyx\\dbD6RD\u0008pdnA}&*sgSyK\u00028\u001513\t~iGRm^IeP\u000ezf9N\u007fNvO7Mg\u0015_vs]@PK{YS^1\u000eLOO4JBEDu\u000c&\u000cxbo]\u007f?4m]VKK\\\u007f_cukDj=hbnN_b|bt]UV]m8GYJbpHMnTMwXK]gBWT\u00159BkE\u0014a0\u000fJMz.U~D0.T|WKhm4T}oUdSP{Ulj?f\u000bT\u0008Z{|kb]7qUM[h\nk\u0014yK\u000bElhIhft=5S{B>nb>`d9ke_\\s]@\u0017XoHD\u001a"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "h^f"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "h^f"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "wDnJeMDeHE{CenjKeL`F\u0003z\u0017K@kHaH@iNfdDMj@Ce{jbH@UJeHM{>P_3\u0002=\u0011>j~wn&X|4Q|tnZMf0\u000bhl]9w:\u0013{EH;U|bR`iFIS|L1wYolasIID~knZeGDJb]=yno\u0010FRpf\u0017YxKjo~P[X\u007ffG\u0002C\u000cE1\u007f{nQMr;D<N~]DfLhd\u00119rWJNeMbzi\"u\u000bah`D\u000bhPsw\u000eztpUTA\u0013PbmC@m5\u0003n\u0015nUR&h89qIAOt\tOsk2{jjK@{HdnX\u007fLM\u007fbtFcN1k&p\"8T@\u0013`wob\u0015mQ{c\u0010\"5_8nynp[V[vwcI[C_zPpTk4\u0013fEVoNPqs>\u001ePolFV]wniQFRcfRdR\n~hccS@FPmLeEG1^;^:RJO\u00178hl8_je`>eJXU>omfTlwKmjXpxsCTWF[_zjntoJ`F@Y8ojo{fFdbKkF0cL|mfjyx~\\dKabJPkIJn5|I@PMin\u000cFU~LDyL\u0002}eZ7Wn@fSy{FJr^ORCkLOCemih\u001f:D|xPzlSWF[Rn5NSY}]\u0012[esH}avmcHHDTe~^vTafbD{z\u0010G{YgT\"fhXUD{cAl~etKP;8@lDQVyH\u0017\\Q\u0015e\u0013n`\u000c8izlmgW\"Ym8CgS\u000fDbsrp@JOQmC\u0011{1b_iqYsz`9rPkLe.KzmK@v\\h8OrhvLnn\u007fenXN_\u001eJEiFM>5\u007fGLc[L?tgbqL}sVt8eyx\\dbD6RD\u0008pdnA}&*sgSyK\u00028\u001513\t~iGRm^IeP\u000ezf9N\u007fNvO7Mg\u0015_vs]@PK{YS^1\u000eLOO4JBEDu\u000c&\u000cxbo]\u007f?4m]VKK\\\u007f_cukDj=hbnN_b|bt]UV]m8GYJbpHMnTMwXK]gBWT\u00159BkE\u0014a0\u000fJMz.U~D0.T|WKhm4T}oUdSP{Ulj?f\u000bT\u0008Z{|kb]7qUM[h\nk\u0014yK\u000bElhIhft=5S{B>nb>`d9ke_\\s]@\u0017XoHD\u001a"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "h^f"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    return-void

    :pswitch_7
    const/16 v9, 0x3a

    goto :goto_2

    :pswitch_8
    const/16 v9, 0xd

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x27

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x9

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3

    sget-object v0, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static decryptByPrivateKey([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v8, 0x80

    const/4 v1, 0x0

    sget v4, Lcom/mokee/security/Encryption;->b:I

    sget-object v0, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    sget-object v0, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v0, 0x2

    invoke-virtual {v5, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v6, p0

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v4, :cond_4

    :try_start_0
    sget-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z

    move v2, v1

    move v3, v1

    :goto_1
    sub-int v0, v6, v3

    if-le v0, v8, :cond_0

    invoke-virtual {v5, p0, v3, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    if-eqz v4, :cond_1

    :cond_0
    sub-int v0, v6, v3

    invoke-virtual {v5, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :cond_1
    array-length v3, v0

    invoke-virtual {v7, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v2, 0x1

    mul-int/lit16 v2, v0, 0x80

    :goto_2
    sub-int v3, v6, v2

    if-gtz v3, :cond_3

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_2
.end method

.method public static decryptByPublicKey([BLjava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v8, 0x80

    const/4 v1, 0x0

    sget v4, Lcom/mokee/security/Encryption;->b:I

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    sget-object v0, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v0, 0x2

    invoke-virtual {v5, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v6, p0

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v4, :cond_4

    move v2, v1

    move v3, v1

    :goto_0
    sub-int v0, v6, v3

    if-le v0, v8, :cond_0

    invoke-virtual {v5, p0, v3, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    if-eqz v4, :cond_1

    :cond_0
    sub-int v0, v6, v3

    invoke-virtual {v5, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :cond_1
    array-length v3, v0

    invoke-virtual {v7, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v2, 0x1

    mul-int/lit16 v2, v0, 0x80

    :goto_1
    sub-int v3, v6, v2

    if-gtz v3, :cond_3

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    sget-boolean v1, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, v4, 0x1

    sput v1, Lcom/mokee/security/Encryption;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :cond_3
    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public static encryptByPrivateKey([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0x75

    const/4 v2, 0x0

    sget-object v0, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    sget-object v0, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, p0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    :goto_0
    sub-int v6, v4, v0

    if-gtz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :cond_0
    sub-int v6, v4, v0

    if-le v6, v7, :cond_1

    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v0, 0x75

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :cond_1
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1
.end method

.method public static encryptByPublicKey([BLjava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v7, 0x75

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    sget-object v0, Lcom/mokee/security/Encryption;->a:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v4, p0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v2

    move v0, v2

    :goto_0
    sub-int v6, v4, v0

    if-gtz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v0

    :cond_0
    sub-int v6, v4, v0

    if-le v6, v7, :cond_1

    invoke-virtual {v3, p0, v0, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v0, 0x75

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :cond_1
    sub-int v6, v4, v0

    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_1
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/mokee/security/Encryption;->appendHex(Ljava/lang/StringBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
