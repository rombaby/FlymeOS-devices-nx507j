.class public final Lcn/jpush/android/util/z;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u0019g\u4e26y\u9fcaw\u0011\u001f5B=}\u000b\u000e0\u001aG\u0016x[wA\u0002"

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

    const/16 v9, 0x6f

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

    const-string v1, "\u0019g\u4e26y\u9fcaw\u0011\u001f5B=}\u000b\u000e0\u001a\u0017\u0002"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "o\u0014\u000e|4&\u0011\\\u0015B\u001d\u000c\u000bm\u00cfj\ud7c3\uf926y\ufda0\ufdb7\u0011\uffc9\t4&\u0011\\\u0015B\u001d\u000c\u000bm\u00cfj\ud7c3\uf926y\ufda0\ufdb7\u0011\uffc9\u0008B\u001a\u0016\u000f~4&\u0011\\\u0015B\u001d\u000c\u000bm\u00cfj\ud7c3\uf926y\ufda0\ufdb7\u0011\uffc9\t3i\u0015\r"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/util/z;->z:[Ljava/lang/String;

    const-string v1, "o\u0014G1\u001d(@G&\u001f&@G\'\u0006&@G\u000f\u000c#Y@3\u0006+QH;\u001e5OR!\u0018?F{}\u0013o^O.\u0013%gG6\u000b\"ZA<\u0006-QH;\u001d4HP#\u0016=a\u000f(G$]R(\u000c(QZ7\u0000(LZ74&_B2\u0008/UM8\u0002)ST!\u0019?E\\\tF;X}1\u0005,QI.2;\u0014C0\u001a;Y}7\n NU \u001a\u001a\u0015Z24.VM9\u00005aZ|\u0008(JZ34&^B1\t TO8\u0002)LW&\u001c3IQ-2n@N\u000f\u0004*RT \u001a\u001a@\u000e=\u0001!SZ=\u00013@O\u000f\u000b\"PK:\u00006NU 2n@\u000e>\u0000%OZ>4\"QI$2n@M\u000f\n TO9\u00017NQ-\u0015\u001a@J\u000f\u000e%_O?\u001d4HS\"\u0016\u001a@\u000e9\u0006+@K;\r.@K!\u001c\"IK(\u0002\u001c]E0\n TM8\u0002)SV%\u001d4HS\"\u0018?E\\\tF;\u0014H5\u0002\"@H1\u001b;R}5\u000c\"ZA=\u0003(LT!\u0015\u001a\u0015Z|\u00005[Z;\u0002n@\u000e$\u001d(@V\u000f\u000e\"ZA<\u0004+QH&\u001c3K_\tF;MG(\u001d\u001cYI\'\u001a0aZ\'4&^E0\n TO>\u0004+QH;\u001d3IP-\u0015\u001a@\u000e \n+@R&\u000e1YJ(\u001b\u001c_B2\u0008/VM8\u0002)SV&\u001b1K\\\tF;I}5\u0008,O_.2;J}5\u000c\"[O:\u001a\u001a@Q\u000f\t4aZ|\u0017)`\u000b\u0008BwFQ9ZqXZ,\u0001\u001b\u0011zy^v^\u00136\u001ct]\u001f5\u0005q[Z,\u0001\u001b\u0011zyWw]M<\r>WH>[!@^:3j`\u000bm\u001bs^\u0017e\u0016.\tG(\u0017)`\u000b\u0008B#YD5_&XZ,\u0001\u001b\u0011zy\u0008qK\u0014a^#@^:3j`\u000b<\u0008%W\u00105\u0005pZ\u0013g\r%]Z,\u0001\u001b\u0011zy\u0007+_Lb\u000e>]\u001f1\u001c$\u000bG(\u0017)`\u000b\u0008B-DG8\u001f#PV(\u0017)`\u000b\u0008B,[D1\u000c/HP(\u0017)`\u000b\u0008B=_M.\u000e/\u0015Z-4\"HS\t\u0013=gG9\u0018\u001a\u0015"

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_8

    :cond_3
    move-object v4, v1

    move v5, v3

    move v11, v2

    move-object v2, v1

    move v1, v11

    :goto_4
    aget-char v7, v2, v3

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2

    const/16 v6, 0x6f

    :goto_5
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    add-int/lit8 v3, v5, 0x1

    if-nez v1, :cond_7

    move-object v2, v4

    move v5, v3

    move v3, v1

    goto :goto_4

    :pswitch_2
    const/16 v9, 0x47

    goto :goto_2

    :pswitch_3
    const/16 v9, 0x3c

    goto :goto_2

    :pswitch_4
    const/16 v9, 0x26

    goto :goto_2

    :pswitch_5
    const/16 v9, 0x54

    goto :goto_2

    :pswitch_6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/z;->c:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/z;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/z;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "n@"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_6

    :cond_4
    move-object v3, v0

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_6
    aget-char v7, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_3

    const/16 v5, 0x6f

    :goto_7
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_5

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_6

    :pswitch_7
    const/16 v5, 0x47

    goto :goto_7

    :pswitch_8
    const/16 v5, 0x3c

    goto :goto_7

    :pswitch_9
    const/16 v5, 0x26

    goto :goto_7

    :pswitch_a
    const/16 v5, 0x54

    goto :goto_7

    :cond_5
    move v1, v0

    move-object v0, v3

    :cond_6
    if-gt v1, v2, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/z;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/z;->d:Ljava/util/regex/Pattern;

    const-string v1, "\u001c]\u000b..jf\u0016yV\u001b\u0017zz3\u0018`\u0003\u0008B\u001b\u0017{/^k\u000e\u0013b\u0012\u001b|}5B=}\u000b\u000e_j\u0005{\u000f\u000ejFgy5w\u0011\u001f\u0008B\u001aG\u0016xYsA\u000e\u0008A\u001c]\u000b..jf\u0016yV\u001agGy\u0015\u0006\u0011|dB~`\u000b\t\u0014w\u0010\u0014a\u0012n\u0017"

    const/4 v0, 0x2

    goto/16 :goto_3

    :pswitch_b
    const/16 v6, 0x47

    goto/16 :goto_5

    :pswitch_c
    const/16 v6, 0x3c

    goto/16 :goto_5

    :pswitch_d
    const/16 v6, 0x26

    goto/16 :goto_5

    :pswitch_e
    const/16 v6, 0x54

    goto/16 :goto_5

    :cond_7
    move v2, v1

    move-object v1, v4

    :cond_8
    if-gt v2, v3, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_4

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/z;->a:Ljava/util/regex/Pattern;

    const-string v1, "o\u0014\u0019nG/HR$\u0013/HR$\u001c;tR \u001f;tR \u001f4@T \u001c7@t \u001c7\u0015\u001c\u0008@\u001b\u0013\u000ekUo\u0003\u001c\u000f\u000ejFgy5w\u0011\u001f\u0008K\u001b\u0011z\u000b3i`\r\u0008N\u001b\u0016zs3o`\u000f\u0008C\u001b\u0007zk3a`\u001b\t\u0013o\u0003\u001c\u0008J\u001c]\u000b2.jz\u0016yV\u001aG\u0014)FnG\u0017xYsA\u000ekU\u001b\u0006\u000ekU\u001c]\u000b..jf\u0016yV\u001b\u0018zy3\u0018`\u0008\u0008D\u001b\u001dz~3``\u000e\u0008F\u001b\u0010zo3x`\u0000\u0008R\u001a@\u000ekU\u001b\u0019}5B!}\u000b\u0012_j\u0005{/]:\u0015\u000f/^k\u000e\u0013)Fx`f}Pn\u0003\u000e|P}\u0014\u0019n4&\u0011\\\u0015B\u001d\u000c\u000bm\u00cfj\ud7c3\uf926y\ufda0\ufdb7\u0011\uffc9\t4&\u0011\\\u0015B\u001d\u000c\u000bm\u00cfj\ud7c3\uf926y\ufda0\ufdb7\u0011\uffc9\u0008B\u001aG\u0016xYsAzzFl\u0014\u0019nGx\u0006G1\u001d(@G&\u001f&@G\'\u0006&@G\u000f\u000c#Y@3\u0006+QH;\u001e5OR!\u0018?F{}\u0013o\u0003\u001c6\u0006=@D\u000f\u000e%XC2\u0008/UL9\u0001(NU \u00190E\\\tF;\u0014\u0019n\u000c&HZ7\u0000*@E;\u00007@E\u000f\u000e$X@3\u0007.WJ9\u0001(NS\"\u0017>F{}\u0013#gC>\u0004*S\\\t\u0013o\u0003\u001c1\u000b2@C\u000f\u000c\"[T\'\u001b2a\u000f(\t\u001cUL?\u0002(N{(Gx\u0006A;\u0019;[}5\r#Y@3\u0007.PK:\u001f6NU \u001a0E{}\u0013/gM9\u00015HS\t\u0013o\u0003\u001c=\u0001!SZ=\u00013@O\u000f\u000b\"PK:\u00006NU 2n@\u000ekU-SD\'\u0013-gC9\u00007a\u000f(\u0004\u001cYA<\u0006*RV&\u0018>F{(\u0003\u001c]D7\u0006,NU \u001a1E{(Gx\u0006K=\u0003;QI6\u0006;QS\'\n2QZ94&_B1\u0008/WJ9\u0001(LW&\u001c3IP#\u0017>F{}\u0013o\u0003\u001c:\u000e*YZ:\n3@H\u000f\u000e$Y@3\u0006+SV&\u001a=a\u000f(Gx\u0006I&\u0008;SK}\u0013o\u0003\u001c$\u001d(@V\u000f\u000e\"ZA<\u0004+QH&\u001c3K_\tF;MG(\u001d\u001cYI\'\u001a0aZ\'4&^E0\n TO>\u0004+QH;\u001d3IP-\u0015\u001a@\u000ekU3YJ(\u001b5]P1\u0003;H}7\u000b![N>\u0004+QH;\u001f5HP#\u0015\u001a\u0015Z!4&[M\'\u0016=aZ\"4&_C3\u0006)I{(\u0018\u001cZU\t\u0013o\u0003\u001c,\u0001\u001b\u0011zy_=KKaY#@^:3j`\u000be^%\tD\'\\&\u0005G>Y @^:3j`\u000bl_&WN6\u0016,RL`\t;DH\u0008B\u001b\u0011\u001f [%\r\u0017-\u0006r]Z,\u0001\u001b\u0011zy\u000b\"^Gd\u000e#@^:3j`\u000b3Y0\u000e\u0013e\u000b;DH\u0008B\u001b\u0011N3\r,\nG>X!\t\u00156\r&@^:3j`\u000b<\u0003$V\u00105\u0016&\u0005C\'\u000cp]Z,\u0001\u001b\u0011zy\u0005?]J$\u000b+LZ,\u0001\u001b\u0011zy\u0004 ^C7\u00073JZ,\u0001\u001b\u0011zy\u0015$W\\5\u0007n@_\u000f\n3I{(\u0015\u001c]K#2n\u0015Z|P}\u0014\u0019n]rg\u0016yZ\u001a@\u0014\u000f_j\u0008{\u000f_j\u0005{(4w\u0011\u0017\t4w\u0011\u001f\t\u0014uAZ\u000f^j\u0005{\u000f_j\u0005{(4v\u0011\u001f\tF\u001b\u0012\u000ekUu\t}dBraZf4w\u0011\u0012\t4w\u0011\u001f\t\u0013\u001c\u000c\u000be2\u001c\u000c\u000bm2<\u000e[(4v\u0011\u001f\t4w\u0011\u001f\t\u0013\u001c\r\u000bm2;\u000c\u000f\u0008Ao\u0003\u001cfZ\u001c\u000c\u000ba2;\u000e}dBsa}dB~aZ\u000f_j\r{\u000f_j\u0005{/]:@}eB~a}dB~aZ\u000f^j\u0005{(_n`\u0008|P}\u000e\u0013\u000f_j\t{(]\u001c\u000c\u000b`2\u001c\u000c\u000bm2;g\u0016y^\u001ag\u0016yV\u001aG\u0014)\u0013\u001c\r\u000bm2\u001c\u000c\u000bm2;g\u0016yV\u001a\u0015\u000f}Gx\u0006zn3#G\u0017xZ:\u0015\u0019}G\u001b\u0013\u000ekUo\u0003\u001c\u000f\u000ejFgy5w\u0011\u001f\u00f4B\ud7b8\uf93c\u000b\ufd9b\ufd9fj\uffd3zo3h`\u0019\u0008U\u001b|zr3z`\u0005\u0008\u0011\u001b\u0011zz3l`\u0007\u0008E\u001b\u001bz|3n`\n\u00080\u001a\u0015Z|P}`\u0003\u000f\u000ejZgy)w\u0011\u001f\t\u0014uA\u000f}En\u0003\u000ekU\u001b^ZpF"

    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_f
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/z;->b:Ljava/util/regex/Pattern;

    const-string v1, "o\u0014\u0014a4w\u0011\u0013\t\u0013ug\u0016y[\u001ag\u0016yV\u001a@}dBva}dB~a]f\u0012;g\u0017yV\u001ag\u0016yV\u001a@}eB~a\u000f\u0008Ao\u000e\u0013\u000f_j\t{(]\u001c\u000c\u000b`2\u001c\u000c\u000bm2;g\u0016y^\u001ag\u0016yV\u001aG\u0014)\u0013\u001c\r\u000bm2\u001c\u000c\u000bm2;g\u0017yV\u001a@\u0016}3i\u0014\u0014a4w\u0011\u0013\t\u0013ug\u0016y[\u001ag\u0016yV\u001a@}dBva}dB~a]f\u0012;g\u0017yV\u001ag\u0016yV\u001a@}eB~aZdF\u001b\u0012\u000efZ\u001c\u000c\u000ba2;\u000e}dBsa}dB~aZ\u000f_j\r{\u000f_j\u0005{/]:@}eB~a}dB~aZ\u000f_j\u0005{}F"

    const/4 v0, 0x1

    goto/16 :goto_3

    :pswitch_10
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/z;->e:Ljava/util/regex/Pattern;

    const-string v1, "o`\r\u000f_j\u0005{\u007f4\u001b\u0011\u0006\u0008A\u001a\u0016\u000fkG\u001b\u0014}dB~a\r\u0008F\u001c`\u000bt3ia\u000c}Pog\u0016yV\u001ag\u0016yV\u001b\u0011\u0006\u0008A\u001ag\u0016yV\u001b\u0011\u0006\u0008A\u001a\u0017}dB~a\u000f"

    const/4 v0, 0x3

    goto/16 :goto_3

    :pswitch_11
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/z;->f:Ljava/util/regex/Pattern;

    return-void

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_6
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_2

    sget v0, Lcn/jpush/android/api/d;->g:I

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    sget v0, Lcn/jpush/android/api/d;->e:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_5

    sget v0, Lcn/jpush/android/api/d;->f:I

    goto :goto_0

    :cond_5
    sget-object v3, Lcn/jpush/android/util/z;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcn/jpush/android/api/d;->e:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcn/jpush/android/util/z;->z:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_2

    sget v0, Lcn/jpush/android/api/d;->d:I

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/jpush/android/util/z;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Lcn/jpush/android/api/d;->c:I

    goto :goto_0
.end method
