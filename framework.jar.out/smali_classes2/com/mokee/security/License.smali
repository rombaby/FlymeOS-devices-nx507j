.class public Lcom/mokee/security/License;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "g\n<NGk\u000e4\u0005\u0004t\u0004("

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x2a

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "g\n<NGk\u000e4\u0005\u0004t\u0004("

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "7UiR\u001a7\u00077S\u001a<WaRK3\u0004aP\u00194WaQ\u001a6UcP\u001e7WiV\u001caW4S\u001a4\u0001aV\u001a=W0X\u001c0]iVL3U5P\u001b4Ta\u0002\u001a1UaS\u001a<Ti\u0005\u00195U3S\u001a4\\aV\u001a7PdP\u001e4S`S\u001a6QbTO7T`Q\u00194U7P\u001c4VdU\u001a0UiQ\u00194]dS\u001c<S`VO2ReX\u001c5ShS\u001b5TbP\u001abUgP\u00191PaT\u001a3TbP\u00121VgX\u001c5S4V\u001d0]gQ\u001c=V`QO7U`\u0003\u001a2UbU\u001f4Qa\u0001\u001b7TdTN2\u0003e\u0002\u001c1SdR\u001a0\u0003fP\u001c1S4U\u00192\u0003fU\u001d6SbV\u001f6UdT\u001c1S`VN7T`\u0005\u00194T2P\u001c4VdU\u001a0U3Q\u00195Pe\u0004\u001cbQ3V\u001f2PcP\u001ebRaV\u001f2\u0000dS\u001cbRdW\u00182VgU\u00184PeV\u001f2Tg\u0004\u00195ThS\u001a5RaV\u001a7PdP\u001e4V`S\u001b4Q5VL0\u0007gU\u001c1WaTL3UgU\u001caPbVL3PfR\u001c7SdS\u001a6U`W\u001a`V`S\u001e7UbW\u00195VfS\u001a7SbQ\u00191VeS\u001c1\u0004`X\u001abVcS\u001b7WbT\u00194V`S\u00187WbP\u00192V`S\u001f7QbV\u001feVaX\u001b<\u0000bQ\u001afVaP\u00134SaS\u001f1UeP\u001c5VaR\u001e7Q4S\u001b5TbP\u001abUgP\u00191PaT\u001a<TbP\u00121VgX\u001c5S4V\u001d0]gQ\u001c=V`Q\u001b7Ua\u0006\u001a2UbU\u001f4QaW\u001b7UiU\u00192]gQ\u001caSfT\u00122TgY\u00195T4S\u001a5\u0006aV\u001a7PdP\u001e4\u0004`S\u001b1Q5VL0\u0007gU\u001c1WaTL3UgU\u001caPbVL3PfR\u001c7SdR\u001a1QgU\u001c5S5S\u001b5\u0000bP\u001bgUgP\u00191PaT\u001afTbQ\u001f0\u0001g\u0006\u001efSdV\u001f6Ue\u0006\u001d4SdVO1Vg\u0006\u001d1RcV\u00192PcP\u001f0SdV\u001b2\u0001bQ\u001b=VaQ\u001d4SaS\u001f1UeP\u00195V`P\u001e`S7TH2PgU\u00184Q7W\u001a2Pg\u0005\u001f7S7W\u001f3WgS\u001c1VaX\u00184TcR\u00194U5P\u001c4\\c\u0001\u00122QiX\u001cbRa\u0004\u001a5U`P\u001b4PaP\u001a7]cP\u001b4\u0003aP\u00194]cP\u001b4\u0004aR\u00126U`P\u001b4UhWN2WgSN2\u00077\u0005I1Q`\u0002\u001fg\u0007`W\u00197\u0001dUK<PaXL1\u00042\u0001OePgY\u00122R3YH7\u00070\u0002\u001fe\u00033\u0003H=\u0004h\u0003\u00193RfX\u00125]7SOeVa\u0006\u001caT5\u0002\u001b3\u0004c\u0006\u001d0P3\u0003\u00191\u00047TIa\u00072\u0001\u00131R5\u0004\u001aeP2SI`RcY\u001e5\u0003`\u0003Hf\u0000`SKeU3S\u0018g\u00077\u0006K6VhR\u001d5\u0000f\u0005\u001c2\u0007f\u0002\u001e`\u0000hQ\u00193W`SL0V`\u0001\u001a7V4U\u001b6\u0007f\u0001\u001e3\u00040\u0002\u001f0\u0004d\u0001\u001d`\\dT\u001egThWO3]0U\u001c=VaW\u0012aVdS\u001c0\u00062\u0001Ig]5\u0002\u00136V`V\u001a1\u00035\u0004NbQbU\u001d=\u00005P\u0019=Q4V\u001efS2\u0005\u001c=\\`V\u0018fU3P\u001a4Qc\u0004LfVaSI<\u0006iTK7T7\u0004\u001d0\u00065T\u001ab\u00032S\u001fgUaP\u001c4\u0000e\u0003Ie\u00010T\u001f<\u00044XLbU5R\u0013g\u0007eU\u001f0]b\u0005\u001dfTe\u0001Nb\\aT\u001d5\u0000i\u0005\u00133\u0004hPIgV3Y\u001c1\u0007a\u0002\u001f5\u00033\u0002I3WbR\u001e5\u0006bV\u001e2\\5\u0005\u001b<\u0006aR\u001b4\u0003aXL`S5\u0005Lb\u0006i\u0006\u001e7SgUOe\u0003e\u0003\u001a4UeW\u0019eQa\u0004LfWbUK7\\3SL7\u0006eX\u001db\u00072VK4U`\u0006\u00135V3\u0006\u00182P`\u0003K`\\0P\u001fb\u00042\u0002\u001fePgW\u00197\u0007aWK4WdR\u001b6U2\u0004\u001baS5SI7Rb\u0002Ng\u0000fS\u001faTdY\u00122\u00070\u0003\u001e3\u0006iW\u001a6UbP\u001b4UaQK7W`S\u001a5\u0003bP\u001b`UgP\u00191P`\u0004\u001aaUeQ\u001c4Q`T\u001ba\u00062YKf\u0000fS\u001e4TfV\u00190Q0W\u001f7\u00002S\u001e4\u00033Y\u001bf]f\u0006\u00192\u00074X\u00194U5P\u001c4\\c\u0001\u00122QiX\u001cbRa\u0004\u001a5U`PH4PaP\u001a7]cP\u001b4TaP\u001dgVeS\u001b5\u00010XI`UeXI`T3V\u001c6ScYK1\u0000hR\u0018f\\gT\u001de\u0000iR\u00133]2W\u0018a\u0001eWH<WgS\u001a6\u0006g\u0002\u001d`T4\u0002\u00193\u0007cQH7V5\u0004\u001f3ScPNf\u00047Y\u0018<\u00015V\u001a3QiV\u0012gUbS\u00135\u0001dP\u001a7W4\u0005\u00122\\dT\u001b2W3U\u001f<T5\u0004\u0019f\\5\u0001\u0019gR3\u0006\u00124VeRN=]4\u0004\u00184]hQL=PfYI=PfV\u0019b\u00037\u0003K7T5V\u001b5\u00043Q\u00181Re\u0003I<U0\u0002\u0019<\\c\u0006\u001dgP7X\u001a0Ud\u0005K=\u0000f\u0003\u0012aP4\u0006\u0018fWiV\u0018=\u00043U\u001fb\u0004f\u0002\u001e`\\7T\u00197VhT\u00133SfRK2\u0004f\u0006HfP7\u0004\u0018=TdULf]5\u0005H4QfY\u001e4P0YHgUe\u0001H2\u0007hRN`Wi\u0006\u0012b\\fYIg\u0007e\u0003I3V0V\u001a<W3R\u001e`SfR\u001c5\u00002P\u0012a\\7X\u001f<Wi\u0001Ig\u00045X\u001a`P7V\u001e6V4XI0\u00000Q\u00181\\eVOaPh\u0005\u001f1\u00013R\u001a`ReW\u001ee\u0000aQ\u00192]fS\u001ae\u00042\u0003\u001a<\u00045\u0004I3\u0000hQ\u001c1QaX\u001f0\u0003c\u0005\u001e1WhY\u001a1\u0001a\u0004I1\u00002\u0002\u001a=\u0007c\u0004\u001bb\u0006d\u0005\u0018gSb\u0006\u001d3VeTI<\u0004cQN1ShV\u0012f\u0006eUOfP0QIf\u0004fQ\u0012e\\fY\u001ba\u0004e\u0003\u0019`UcY\u001f<\u00005W\u001ab\u00030S\u001b5\u0007a\u0001\u001c6\u00072R\u00136\u0000hP\u001f2SiV\u001e1\u00032T\u001ea"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/4 v11, 0x4

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x65

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x51

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x60

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mokee/security/License;->getPayAppSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lcom/mokee/os/Build;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mokee/security/Encryption;->encryptByPrivateKey([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/mokee/security/Encryption;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0
.end method

.method public static getPayAppSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget v1, Lcom/mokee/security/Encryption;->b:I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/mokee/security/License;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    if-eqz v1, :cond_1

    :cond_0
    aget-object v1, v2, v0

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readLincense(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mokee/security/Encryption;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mokee/security/Encryption;->decryptByPublicKey([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method
