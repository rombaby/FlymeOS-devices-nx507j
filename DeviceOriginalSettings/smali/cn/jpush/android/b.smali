.class public interface abstract Lcn/jpush/android/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "\u001c\t6DoZ"

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    move v5, v1

    :cond_0
    move-object v6, v2

    move v7, v5

    move v10, v4

    move-object v4, v2

    move v2, v10

    :goto_1
    aget-char v9, v4, v5

    rem-int/lit8 v8, v7, 0x5

    packed-switch v8, :pswitch_data_0

    const/16 v8, 0x1c

    :goto_2
    xor-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v5

    add-int/lit8 v5, v7, 0x1

    if-nez v2, :cond_1

    move-object v4, v6

    move v7, v5

    move v5, v2

    goto :goto_1

    :pswitch_0
    const/16 v8, 0x32

    goto :goto_2

    :pswitch_1
    const/16 v8, 0x63

    goto :goto_2

    :pswitch_2
    const/16 v8, 0x46

    goto :goto_2

    :pswitch_3
    const/16 v8, 0x31

    goto :goto_2

    :cond_1
    move v4, v2

    move-object v2, v6

    :goto_3
    if-gt v4, v5, :cond_0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/jpush/android/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "\u001c\t6DoZ"

    move-object v3, v2

    move-object v2, v0

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/b;->b:Ljava/lang/String;

    return-void

    :cond_2
    move v5, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
