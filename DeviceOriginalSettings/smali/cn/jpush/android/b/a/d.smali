.class public final Lcn/jpush/android/b/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x23

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u0017\u001f\u0016\u001dA\u000c"

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

    const/16 v9, 0x22

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

    const-string v1, "\'."

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "Q]\u000b\u0011V\u0010]\n\u0019N\u0011\u0019\\\u0008C\n\u001c\u0011\u001dV\u001d\u000f\u000f"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u001b\u001c\u0010\u0014\u0002\u001c\u001c\u0008\u0019\u0002\u001d\u0010\u000c\u000c["

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0016\u0012\u0008XD\u0017\u0008\u0012\u001c\u0002\u0015\u0018\u0008\u0010M\u001cU"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\'-"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\'2"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\'?"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u0015\u0018\u0008\u0010M\u001c]\u0019\u0000G\u001b\u0008\u0008\u001d\u0002\u001d\u000f\u000e\u0017PB"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0016\u0008\u0011\u001aG\n"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u001a\u0012\u0013\u0014G\u0019\u0013"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u000c\u0004\u000c\u001dQ"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\'3"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u0019\u000f\u001b\u000b"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u0015\u0018\u0008\u0010M\u001c"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u000b\t\u000e\u0011L\u001f"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u0015\u0018\u0008\u0010M\u001cU"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "Q]\u0011\rQ\u000c]\t\u000bGX\n\u0019\u001aT\u0011\u0018\u000bXV\u0017]\u001e\u001d\u0002\u001e\u0014\u000e\u000bVX\r\u001d\nC\u0015\u0018\u0008\u001dPT]\u000b\u0011N\u0014]\u001e\u001d\u0002\u0008\u001c\u000f\u000b"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "2\u000e?\u0019N\u00147\u001d\u000eC"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "$_"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "X\u000f\u0019\u000bW\u0014\tF"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "X\u001e\u001d\u0014NX\u0017\u000f\u0017LB]"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u0003_\u001f\u0017F\u001d_FX\u0007\u001cQ\\ZP\u001d\u000e\t\u0014VZG\\]Q\u0005"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\u0016\u0008\u0010\u0014"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "E\u001cG\u001bM\u0016\u000e\u0013\u0014GV\u0011\u0013\u001f\nZ"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "X\u0014\u0012\u0011V\u0011\u001c\u0010\u0011X\u0019\t\u0015\u0017LX\u0018\u0012\u001c\u0000Q\u0000UPU\u0011\u0013\u0018\u0017UQF"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "X\u0014\u0012\u0011V\u0011\u001c\u0010\u0011X\u0019\t\u0015\u0017LX\u001f\u0019\u001fK\u0016_UCT\u0019\u000f\\\u0019\u001f\u0003\u000c\t\u001dW\u001dG\'%\u000e\u001b\u001c\u0010\u0014@\u0019\u001e\u0017BD\r\u0013\u001f\u000cK\u0017\u0013TQY\u000e\u001c\u000eXFE<\u000e\nC\u0001S\u000c\nM\u000c\u0012\u0008\u0001R\u001dS\u000f\u0014K\u001b\u0018R\u001bC\u0014\u0011T\u0019P\u001f\u0008\u0011\u001dL\u000c\u000ePH\u000bC\u000b\u001d\n\u0002\u001b@\u0018VQ\u0010\u0014\u001a\u000c\nQF\n\u0019PX\u0018A\u001c\u000c\u000b\u0015\u0015\u001eVPTG\u000cJ\u0011\u000eR\tW\u001d\u0008\u0019#A%S\u001d\u0008R\u0014\u0004T\u000cJ\u0011\u000eP\u001c\u000bC\u0014\u001aP\u0003\u001dT\u0007\u001cG\u0014\u0018\u0008\u001d\u0002\u000c\u0015\u0015\u000b\u000c\t\u0008\u0019\rG#\u001e!\u0005_\u0005F"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u0011\u0013\u0015\u000c\u0002\u0012\u000e\\\u001dP\n\u0012\u000eB"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u0019SY\u000b\u001f"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "X\u001e\u001d\u0014NX\u0018\u000e\nM\nQ\\\u0015G\u000b\u000e\u001d\u001fGB\u0010\u0015\u000bQX\u0010\u0019\u000cJ\u0017\u0019\\\u0016C\u0015\u0018^\u0005T\u0019\u000f\\\u001d\u001f# G\u001eM\nU\n\u0019PX\u0015AI\u0019\u0010A\u001aVN\u001d\u0013\u001b\u000cJC\u0015WS\u000b\u0003\u000b\u001d\n\u0002\u001b@\u001a#J%F\n\u0019PX\u0017A\u000c[\u0008\u0018\u0013\u001e\u0002\u001bF\u0019#GV\u0011\u0019\u0016E\u000c\u0015!EHC\u0014\u001aPHE@^\u001eW\u0016\u001e\u0008\u0011M\u0016_U\u0003T\u0019\u000f\\\u001c\u001f\u0019S\r\rG\r\u0018R\u0014G\u0016\u001a\u0008\u0010\u0019\u0019S\r\rG\r\u0018\'\u001c\u007fE\u001eG\u001ey\u0010 A\u001c_\u0005\u000b\u001d\n\u0002\u001f@6+m6S\u000c\u0019P\u000b\u0018T\u0008P\u0017\u0010\u000c\u000c\n2.36\u000c\u000b\t\u000e\u0011L\u001f\u0014\u001a\u0001\n\u0003\u0010\u0019\u000cJ\u0017\u0019F\u001e\u000c\u000b\u0015\u0015\u001eVPTP\u000c[\u0008\u0018\u000fBGT\u001c\u000e\u001fQB\u001b\u0001Q\u000bQF\u0015\u001e\n\u001fS\u001f\u0017F\u001d\\AJ\u0012HT\u0007\u000cJ\n\u0012\u000bZ"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u0012\u001c\n\u0019Q\u001b\u000f\u0015\u0008VBU\u001a\rL\u001b\t\u0015\u0017LP\u001fU\u0003A\u0017\u0013\u000f\u0017N\u001dS\u0010\u0017EP_"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\u0011\u0013\u0016\u001dA\u000c\u0018\u0018XL\u0019\u0010\u0019XA\u0019\u0013\\\u0016M\u000c]\u001e\u001d\u0002\u0016\u0008\u0010\u0014"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "X\u001e\u001d\u0014NX\u0018\u000e\nM\nQ\\\u001bM\u001c\u0018FZ\t\u001fS\u001f\u0017F\u001dV^T\u0002\u0015\u0018\u000f\u000bC\u001f\u0018FZ\t\u001fS\u000e\u001dQ\r\u0011\u0008\u0005P\u001d\t\t\nLX\u001aR\nG\u000b\u0008\u0010\u000c_C2\u001e\u0012G\u001b\tR\u001fG\u000c2\u000b\u0016r\n\u0012\u000c\u001dP\u000c\u00042\u0019O\u001d\u000eT\u0019\u000bV\u001b\u0013\ng\u0019\u001e\u0014PD\r\u0013\u001f\u000cK\u0017\u0013T\u001c\u000b\u0003\u000b\u001d\n\u0002\u001b@\u001d#F%F\u0015\u001e\n\u000c\u0004\u000c\u001dM\u001e]\u001fE\u001fE_\u001a\rL\u001b\t\u0015\u0017LZ[Z\u001c\u0003E@^\u001bC\u0014\u0011\u001e\u0019A\u0013_U\u0003C#\u0019!ED\r\u0013\u001f\u000cK\u0017\u0013TQY\n\u0018\u0008\rP\u0016]\u001fVC\u0008\r\u0010\u0001\n\u0019Q\'\u001c\u007fV\u001e\u0013\u0016A\u0019\tT9P\n\u001c\u0005VR\n\u0012\u0008\u0017V\u0001\r\u0019VQ\u0014\u0014\u001f\u001d\u000c\u001b\u001c\u0010\u0014\n\u0019\u000f\u001b\rO\u001d\u0013\u0008\u000b\u000eHTUQ_\u0005\u0000UC@V"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "\u001e\u0008\u0012\u001bV\u0011\u0012\u0012P\u000b\u0003\u000b\u001d\n\u0002\u001e@=\nP\u0019\u0004R\u0008P\u0017\t\u0013\u000c[\u0008\u0018R\u000bN\u0011\u001e\u0019VA\u0019\u0011\u0010PC\n\u001a\t\u0015G\u0016\t\u000fT\u0012QF\u0015\u001e\n\u001eS\u0010\u001dL\u001f\t\u0014D\u0013Q\u0006\u0008\u0010P\u0017\n^"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "UPQU\u000fUPQU\u000f"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    return-void

    :pswitch_22
    const/16 v9, 0x78

    goto/16 :goto_2

    :pswitch_23
    const/16 v9, 0x7d

    goto/16 :goto_2

    :pswitch_24
    const/16 v9, 0x7c

    goto/16 :goto_2

    :pswitch_25
    const/16 v9, 0x78

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcn/jpush/android/b/a/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/jpush/android/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x1e

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    invoke-static {v4}, Lcn/jpush/android/b/a/d;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcn/jpush/android/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v6, 0x1c

    aget-object v5, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jpush/android/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jpush/android/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jpush/android/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jpush/android/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/b/a/d;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v3, 0x22

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-nez p3, :cond_0

    sget-object v0, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    :goto_0
    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/jpush/android/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    const-string v0, "\""

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p3, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p3, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p3, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p3, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    const-string v0, ""

    goto/16 :goto_0

    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-class v5, Landroid/webkit/WebView;

    if-eq v1, v5, :cond_2

    :cond_0
    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_4

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-class v6, Lorg/json/JSONObject;

    if-ne v5, v6, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/b/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v0, 0x0

    aput-object p1, v7, v0

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_6

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    aput-object v2, v7, v8

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v8, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v8, 0xc

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v1, 0xa

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_2

    :cond_2
    sget-object v8, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v9, 0xa

    aget-object v8, v8, v9

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :cond_3
    sget-object v8, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    aput-object v2, v7, v8

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcn/jpush/android/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_7

    const/16 v0, 0x1f4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcn/jpush/android/b/a/d;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_7
    if-lez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    :goto_5
    if-lez v1, :cond_a

    div-int/lit8 v3, v1, 0xa

    mul-int/lit8 v3, v3, 0xa

    sub-int v3, v1, v3

    aget-object v4, v2, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_8

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    :goto_6
    div-int/lit8 v1, v1, 0xa

    goto :goto_5

    :cond_8
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_9

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_b

    const/16 v1, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcn/jpush/android/b/a/d;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v3, -0x1

    :try_start_1
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v3

    goto :goto_6

    :cond_a
    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcn/jpush/android/b/a/d;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    :cond_b
    const/16 v1, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v1, v0}, Lcn/jpush/android/b/a/d;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_c
    const/16 v0, 0x1f4

    sget-object v1, Lcn/jpush/android/b/a/d;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {p0, p2, v0, v1}, Lcn/jpush/android/b/a/d;->a(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method
