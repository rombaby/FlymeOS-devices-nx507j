.class public Lcom/mokee/cloud/calendar/Lunar;
.super Ljava/lang/Object;


# static fields
.field private static l:[Ljava/lang/String;

.field private static m:[Ljava/lang/String;

.field private static final o:[J

.field private static p:[I

.field private static final q:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private n:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x5b

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u5317\u4ed3"

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

    const/4 v9, 0x4

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

    const-string v1, "\u82c4\u7992"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u4e55\u6757\u525f\u4e1e$\u4e55\u594a"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u6b35\u6757\u525f\u4e1d$\u8fe4\u6699\u65f2\u5e69"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0015\u0011"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u4eda\u6757\u525f\u4e91$\u987b\u7206"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u5971\u5b8d"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "/&;d\u5e70\u001b\u0012\u674ay`\u65b3"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u7a9d\u7994"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u7a9d\u5950"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u5317\u4e5f"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u818e\u6757\u5ebd\u5170$\u5c68\u7206"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u513d\u6757\u5303\u4e89$\u4e7b\u7994\u7b82"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u5c59\u96b5"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u5c59\u6ea0"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u6e53\u6651"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u5c59\u5b8d"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u811c\u6757\u5ebd\u4e14$\u5c59\u5e2b"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u4e5f\u6757\u5ebd\u4e14$\u597f\u5451\u8ad7"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u7a9d\u7994"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u96be\u6c6b"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u762b\u976d"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u001e\u0014"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\u51fa\u81ac"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u811c\u6757\u4e4b\u535c$\u9632\u594a"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u6b35\u6757\u5303\u4e89$\u5115\u5bea\u82c0"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "\u5c59\u66ce"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u513d\u6757\u5303\u4e89$\u4e7b\u7994\u7b82"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u51fa\u81ac"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u4eda\u6757\u525f\u4e91$\u9fcf\u62f3\u5976"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u5971\u96b5"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\u001e\u0014"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "\u9a0c\u879b"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "\u6673\u5259"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "\u4ec2\u6757\u525f\u4e89$\u7ab9\u5317\u82c0"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "\u6e53\u6651"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "\u5971\u66ce"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "\u568d\u6757\u525f\u5176$\u4f0d\u8aca"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\u4e55\u6757\u5303\u4e89$\u7694\u8672\u7b82"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "\u8c61\u96b7"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "\u4e55\u6757\u5303\u4e89$\u4e7b\u511c\u82c0"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "\u5959\u81ac"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "\u5b84\u976d"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "\u7a9d\u667a"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "\u4e0b\u6757\u525f\u4e40$\u919b\u966c\u82c0"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "\u5c59\u5b8d"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "\u0002\u0008"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "\u96be\u6c6b"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "\u6b35\u6757\u525f\u4e1d$\u6673\u82dd"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "\u7a9d\u667a"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "\u6b35\u6757\u525f\u4e91$\u8e9c\u5133\u8ad7"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "\u7a9d\u5950"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "\u5c59\u96b5"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "\u4ec2\u6757\u525f\u4e89$\u7ab9\u5317\u7b82"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "\u762b\u976d"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "\u4e0b\u6757\u525f\u4e40$\u919b\u9622\u7b82"

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "\u7a9d\u51f3"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "\u609c\u86af"

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "\u5971\u5b8d"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "\u5c59\u6ebe"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "\u4e0b\u6757\u525f\u4e40$\u919b\u9622\u7b82"

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "\u8603\u66ce"

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "\u799d\u5259"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "\u5952\u66ce"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "\u6673\u5259"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "\u811c\u6757\u525f\u5176$\u811c\u5134\u82c0"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "\u82c4\u7a71"

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, "\u4e55\u6757\u525f\u4e1e$\u4e55\u594a"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "\u974a\u9612"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, "\u4ec2\u6757\u525f\u4e89$\u7ab9\u5317\u7b82"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "\u4e55\u6757\u5303\u4e89$\u4e7b\u511c\u7b82"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "\u6b35\u6757\u5303\u4e89$\u5115\u5bea\u7b82"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    const/16 v2, 0x48

    const-string v1, "\u5971\u66ce"

    const/16 v0, 0x47

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_47
    aput-object v1, v3, v2

    const/16 v2, 0x49

    const-string v1, "\u974a\u9612"

    const/16 v0, 0x48

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_48
    aput-object v1, v3, v2

    const/16 v2, 0x4a

    const-string v1, "\u6b35\u6757\u525f\u4e40$\u597f\u5133\u755d"

    const/16 v0, 0x49

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_49
    aput-object v1, v3, v2

    const/16 v2, 0x4b

    const-string v1, "\u4e55\u6757\u525f\u4e1e$\u4e55\u594a\u82c0"

    const/16 v0, 0x4a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4a
    aput-object v1, v3, v2

    const/16 v2, 0x4c

    const-string v1, "\u799d\u5259"

    const/16 v0, 0x4b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4b
    aput-object v1, v3, v2

    const/16 v2, 0x4d

    const-string v1, "\u513d\u6757\u5303\u4e89$\u4e7b\u7994\u82c0"

    const/16 v0, 0x4c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4c
    aput-object v1, v3, v2

    const/16 v2, 0x4e

    const-string v1, "\u5c59\u66ce"

    const/16 v0, 0x4d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4d
    aput-object v1, v3, v2

    const/16 v2, 0x4f

    const-string v1, "\u6b35\u6757\u525f\u4e1d$\u6673\u7b9f"

    const/16 v0, 0x4e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4e
    aput-object v1, v3, v2

    const/16 v2, 0x50

    const-string v1, "gfr-\u5e70g\u6757q,\u65e1"

    const/16 v0, 0x4f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4f
    aput-object v1, v3, v2

    const/16 v2, 0x51

    const-string v1, "\u5971\u96b5"

    const/16 v0, 0x50

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_50
    aput-object v1, v3, v2

    const/16 v2, 0x52

    const-string v1, "\u811c\u6757\u5ebd\u4e40$\u9632\u594a"

    const/16 v0, 0x51

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_51
    aput-object v1, v3, v2

    const/16 v2, 0x53

    const-string v1, "\u5b84\u976d"

    const/16 v0, 0x52

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_52
    aput-object v1, v3, v2

    const/16 v2, 0x54

    const-string v1, "\u6b35\u6757\u5303\u4e89$\u5115\u5bea\u7b82"

    const/16 v0, 0x53

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_53
    aput-object v1, v3, v2

    const/16 v2, 0x55

    const-string v1, "\u7a16\u96b7"

    const/16 v0, 0x54

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_54
    aput-object v1, v3, v2

    const/16 v2, 0x56

    const-string v1, "\u7a9d\u51f3"

    const/16 v0, 0x55

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_55
    aput-object v1, v3, v2

    const/16 v2, 0x57

    const-string v1, "\u5959\u81ac"

    const/16 v0, 0x56

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_56
    aput-object v1, v3, v2

    const/16 v2, 0x58

    const-string v1, "\u4e5f\u531e"

    const/16 v0, 0x57

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_57
    aput-object v1, v3, v2

    const/16 v2, 0x59

    const-string v1, "\u524b\u531e"

    const/16 v0, 0x58

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_58
    aput-object v1, v3, v2

    const/16 v2, 0x5a

    const-string v1, "\u4eda\u531e"

    const/16 v0, 0x59

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_59
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    const/16 v0, 0x3cc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->p:[I

    return-void

    :pswitch_5a
    const/16 v9, 0x56

    goto/16 :goto_2

    :pswitch_5b
    const/16 v9, 0x5f

    goto/16 :goto_2

    :pswitch_5c
    const/16 v9, 0x42

    goto/16 :goto_2

    :pswitch_5d
    const/16 v9, 0x1d

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
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
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
    .end packed-switch

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    :array_1
    .array-data 4
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0x96
        0xa6
        0x97
        0x97
        0x78
        0x79
        0x79
        0x69
        0x78
        0x77
        0x96
        0xa4
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb5
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0x96
        0xa6
        0x97
        0x97
        0x78
        0x79
        0x78
        0x69
        0x78
        0x77
        0x96
        0xa4
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x89
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x78
        0x87
        0x96
        0xb4
        0x96
        0xa6
        0x96
        0x97
        0x78
        0x79
        0x78
        0x69
        0x78
        0x77
        0x96
        0xa4
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x78
        0x79
        0x78
        0x69
        0x78
        0x77
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0xa6
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x79
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb4
        0xa5
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x86
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x76
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x69
        0x78
        0x87
        0x96
        0xb4
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x78
        0x87
        0x95
        0xb4
        0xa5
        0xb5
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0x96
        0xa5
        0x96
        0x97
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0xa6
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb4
        0xa5
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x79
        0x77
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0x96
        0x96
        0x88
        0x78
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x78
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xa5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb5
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x88
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x88
        0x87
        0x96
        0xa5
        0xc3
        0xa5
        0xb4
        0xa5
        0xa6
        0x87
        0x88
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xb3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x88
        0x78
        0x87
        0x87
        0xa5
        0xb4
        0x96
        0xa5
        0xa6
        0x96
        0x88
        0x88
        0x78
        0x78
        0x87
        0x87
        0x95
        0xb4
        0xa5
        0xb4
        0xa5
        0xa5
        0x97
        0x87
        0x87
        0x88
        0x86
        0x96
        0xa4
        0xc3
        0xa5
        0xa5
        0xa5
        0xa6
        0x97
        0x87
        0x87
        0x78
        0x87
        0x86
        0xa5
        0xc3
        0xa5
        0xb5
        0xa6
        0xa6
        0x87
        0x88
        0x78
        0x78
        0x87
        0x87
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v5, Lcom/mokee/cloud/calendar/SolarFestival;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mokee/cloud/misc/CloudUtils;->hasAccessPermission()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u7532"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u4e59"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u4e19"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u4e01"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u620a"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u5df1"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u5e9a"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u8f9b"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u58ec"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u7678"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->g:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u521d"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u5341"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u5eff"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u5345"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->j:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u4e00"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u4e8c"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u4e09"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u56db"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u4e94"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u516d"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u4e03"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u516b"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u4e5d"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u5341"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0xa

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xb

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->k:[Ljava/lang/String;

    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "\u95f0"

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->e:Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u9f20"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u725b"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u864e"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u5154"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u9f99"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u86c7"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u9a6c"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u7f8a"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u7334"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u9e21"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v6, "\u72d7"

    aput-object v6, v1, v4

    const/16 v4, 0xb

    const-string v6, "\u732a"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->f:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u5b50"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u4e11"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u5bc5"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u536f"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u8fb0"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u5df3"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u5348"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u672a"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u7533"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u9149"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v6, "\u620c"

    aput-object v6, v1, v4

    const/16 v4, 0xb

    const-string v6, "\u4ea5"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->h:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u6b63"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u4e8c"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u4e09"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u56db"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u4e94"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u516d"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u4e03"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u516b"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u4e5d"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u5341"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v6, "\u51ac"

    aput-object v6, v1, v4

    const/16 v4, 0xb

    const-string v6, "\u814a"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->i:[Ljava/lang/String;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v1, v4

    const/4 v4, 0x1

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x2d

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x2

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x3a

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x3

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x31

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x4

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x2f

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x5

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x39

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x6

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x40

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x7

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x23

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x8

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x27

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x9

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x33

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xa

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x3b

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xb

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xc

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x29

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xd

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x1a

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xe

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x48

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xf

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x13

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x10

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x3f

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x11

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x36

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x12

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x4c

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x13

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x2a

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x14

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x44

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x15

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x38

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x16

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0xd

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x17

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x51

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x18

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x1c

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    sput-object v1, Lcom/mokee/cloud/calendar/Lunar;->l:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x52

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x1

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x18

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x2

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x30

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x3

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x19

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x4

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x1d

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x5

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x22

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x6

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x4b

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x7

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x28

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x8

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x4d

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x9

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x2c

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xa

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x41

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xb

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x11

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    sput-object v1, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v5, :cond_4

    :cond_1
    :try_start_2
    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-nez v1, :cond_2

    :try_start_3
    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v4, 0x2e

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :try_start_4
    const-string v1, "\u958f"

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->e:Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u9f20"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u725b"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u864e"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u5154"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u9f8d"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u86c7"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u99ac"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u7f8a"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u7334"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u96de"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v6, "\u72d7"

    aput-object v6, v1, v4

    const/16 v4, 0xb

    const-string v6, "\u8c6c"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->f:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u5b50"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u4e11"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u5bc5"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u536f"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u8fb0"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u5df3"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u5348"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u672a"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u7533"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u9149"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v6, "\u620c"

    aput-object v6, v1, v4

    const/16 v4, 0xb

    const-string v6, "\u4ea5"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->h:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "\u6b63"

    aput-object v6, v1, v4

    const/4 v4, 0x1

    const-string v6, "\u4e8c"

    aput-object v6, v1, v4

    const/4 v4, 0x2

    const-string v6, "\u4e09"

    aput-object v6, v1, v4

    const/4 v4, 0x3

    const-string v6, "\u56db"

    aput-object v6, v1, v4

    const/4 v4, 0x4

    const-string v6, "\u4e94"

    aput-object v6, v1, v4

    const/4 v4, 0x5

    const-string v6, "\u516d"

    aput-object v6, v1, v4

    const/4 v4, 0x6

    const-string v6, "\u4e03"

    aput-object v6, v1, v4

    const/4 v4, 0x7

    const-string v6, "\u516b"

    aput-object v6, v1, v4

    const/16 v4, 0x8

    const-string v6, "\u4e5d"

    aput-object v6, v1, v4

    const/16 v4, 0x9

    const-string v6, "\u5341"

    aput-object v6, v1, v4

    const/16 v4, 0xa

    const-string v6, "\u9f15"

    aput-object v6, v1, v4

    const/16 v4, 0xb

    const-string v6, "\u81d8"

    aput-object v6, v1, v4

    iput-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->i:[Ljava/lang/String;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, ""

    aput-object v6, v1, v4

    const/4 v4, 0x1

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x2

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x3

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x2b

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x4

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x14

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x5

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x20

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x6

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x21

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/4 v4, 0x7

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0xf

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x8

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x55

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x9

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xa

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0xe

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xb

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x42

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xc

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x57

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xd

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x4e

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xe

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x24

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0xf

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x10

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x3d

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x11

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x15

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x12

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x3e

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x13

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x53

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x14

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x49

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x15

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x56

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x16

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x34

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x17

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x1e

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    const/16 v4, 0x18

    sget-object v6, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v7, 0x17

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    sput-object v1, Lcom/mokee/cloud/calendar/Lunar;->l:[Ljava/lang/String;

    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v4, 0x1f

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    :try_start_5
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x1

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x32

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x47

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x12

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x25

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x5

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x45

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x6

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x43

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x26

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/16 v1, 0x8

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/16 v1, 0x9

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x37

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;

    if-eqz v5, :cond_4

    :cond_3
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x4f

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x1

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x4a

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x54

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x35

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x5

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x6

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x46

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x1b

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/16 v1, 0x8

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x3c

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    const/16 v1, 0x9

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v4, v4, v6

    aput-object v4, v0, v1

    sput-object v0, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mokee/cloud/calendar/Lunar;->n:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->n:Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v6, 0x50

    aget-object v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v6, v0

    const-wide/32 v6, 0x5265c00

    div-long/2addr v0, v6

    long-to-int v1, v0

    const/16 v0, 0x76c

    if-eqz v5, :cond_11

    :cond_5
    invoke-static {v0}, Lcom/mokee/cloud/calendar/Lunar;->a(I)I

    move-result v4

    sub-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    :goto_2
    const/16 v6, 0x802

    if-ge v0, v6, :cond_6

    if-gtz v1, :cond_5

    :cond_6
    if-gez v1, :cond_7

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    :cond_7
    iput v0, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    invoke-static {v0}, Lcom/mokee/cloud/calendar/Lunar;->c(I)I

    move-result v4

    iput-boolean v2, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z

    if-eqz v5, :cond_10

    move v0, v3

    move v2, v1

    :goto_3
    if-lez v4, :cond_8

    add-int/lit8 v1, v4, 0x1

    if-ne v0, v1, :cond_8

    :try_start_7
    iget-boolean v1, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput-boolean v3, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z

    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    invoke-static {v1}, Lcom/mokee/cloud/calendar/Lunar;->b(I)I

    move-result v1

    if-eqz v5, :cond_f

    :cond_8
    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    invoke-static {v1, v0}, Lcom/mokee/cloud/calendar/Lunar;->a(II)I

    move-result v1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_4
    sub-int/2addr v2, v0

    :try_start_8
    iget-boolean v6, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v6, :cond_9

    add-int/lit8 v6, v4, 0x1

    if-ne v1, v6, :cond_9

    const/4 v6, 0x0

    :try_start_9
    iput-boolean v6, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_9
    add-int/lit8 v1, v1, 0x1

    move v8, v0

    move v0, v1

    move v1, v2

    move v2, v8

    :goto_5
    const/16 v6, 0xd

    if-ge v0, v6, :cond_a

    if-gtz v1, :cond_e

    :cond_a
    if-nez v1, :cond_c

    if-lez v4, :cond_c

    add-int/lit8 v3, v4, 0x1

    if-ne v0, v3, :cond_c

    :try_start_a
    iget-boolean v3, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_a

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    :try_start_b
    iput-boolean v3, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_b

    if-eqz v5, :cond_c

    :cond_b
    const/4 v3, 0x1

    :try_start_c
    iput-boolean v3, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_c

    add-int/lit8 v0, v0, -0x1

    :cond_c
    if-gez v1, :cond_d

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    :cond_d
    iput v0, p0, Lcom/mokee/cloud/calendar/Lunar;->b:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/mokee/cloud/calendar/Lunar;->c:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_1

    :catch_1
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v0

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_f} :catch_3

    :catch_3
    move-exception v0

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_4
    move-exception v0

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_11} :catch_5

    :catch_5
    move-exception v0

    throw v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    :catch_7
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_12} :catch_9

    :catch_9
    move-exception v0

    throw v0

    :catch_a
    move-exception v0

    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_13} :catch_b

    :catch_b
    move-exception v0

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_14} :catch_c

    :catch_c
    move-exception v0

    throw v0

    :cond_e
    move v2, v1

    goto :goto_3

    :cond_f
    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_4

    :cond_10
    move v0, v3

    goto :goto_5

    :cond_11
    move v4, v2

    goto/16 :goto_2
.end method

.method private static a(I)I
    .locals 7

    const/16 v1, 0x15c

    const v0, 0x8000

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    invoke-static {p0}, Lcom/mokee/cloud/calendar/Lunar;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    sget-object v2, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(II)I
    .locals 4

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static b(I)I
    .locals 4

    invoke-static {p0}, Lcom/mokee/cloud/calendar/Lunar;->c(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(I)I
    .locals 4

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->o:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->g:[Ljava/lang/String;

    rem-int/lit8 v2, p1, 0xa

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->h:[Ljava/lang/String;

    rem-int/lit8 v2, p1, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLunarFestivalInfo(Ljava/lang/String;Lcom/mokee/cloud/calendar/Lunar;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    sget-object v4, Lcom/mokee/cloud/calendar/Lunar;->m:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/mokee/cloud/calendar/Lunar;->isMajorMonth()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    aget-object v0, v4, v6

    goto :goto_1

    :cond_2
    aget-object v0, v4, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSolarTermInfo(III)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x10

    const/16 v4, 0xf

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int/lit16 v1, p0, -0x7b2

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, p1

    sget-object v2, Lcom/mokee/cloud/calendar/Lunar;->p:[I

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    if-ge p2, v4, :cond_1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xf

    :goto_0
    if-ne v1, p2, :cond_0

    if-le p2, v4, :cond_2

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_1
    sget-object v1, Lcom/mokee/cloud/calendar/Lunar;->l:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAnimalString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mokee/cloud/calendar/Lunar;->f:[Ljava/lang/String;

    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLunarDayString(I)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x1e

    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    if-le p1, v2, :cond_1

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_0
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v1, 0x59

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v1, 0x5a

    aget-object v0, v0, v1

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_4

    sget-object v0, Lcom/mokee/cloud/calendar/Lunar;->q:[Ljava/lang/String;

    const/16 v1, 0x58

    aget-object v0, v0, v1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mokee/cloud/calendar/Lunar;->j:[Ljava/lang/String;

    div-int/lit8 v3, p1, 0xa

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mokee/cloud/calendar/Lunar;->k:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getLunarYearString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lcom/mokee/cloud/calendar/Lunar;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMajorMonth()Z
    .locals 2

    iget v0, p0, Lcom/mokee/cloud/calendar/Lunar;->a:I

    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->b:I

    invoke-static {v0, v1}, Lcom/mokee/cloud/calendar/Lunar;->a(II)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mokee/cloud/calendar/Lunar;->getLunarYearString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mokee/cloud/calendar/Lunar;->getAnimalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/mokee/cloud/calendar/Lunar;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/cloud/calendar/Lunar;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/cloud/calendar/Lunar;->i:[Ljava/lang/String;

    iget v2, p0, Lcom/mokee/cloud/calendar/Lunar;->b:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/cloud/calendar/Lunar;->c:I

    invoke-virtual {p0, v1}, Lcom/mokee/cloud/calendar/Lunar;->getLunarDayString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
