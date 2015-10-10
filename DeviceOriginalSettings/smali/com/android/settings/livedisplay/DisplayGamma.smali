.class public Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;
.super Landroid/preference/DialogPreference;
.source "DisplayGamma.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;,
        Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;
    }
.end annotation


# static fields
.field private static final BAR_COLORS:[I


# instance fields
.field private mCurrentColors:[[I

.field private mHardware:Lmokee/hardware/MKHardwareManager;

.field private mNumberOfControls:I

.field private mOriginalColors:[[I

.field private mSeekBars:[[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a028d
        0x7f0a028e
        0x7f0a028f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-static {p1}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getNumGammaControls()I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    .line 74
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    sget-object v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    .line 76
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    .line 77
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    .line 79
    const v0, 0x7f040054

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->setDialogLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)[[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)Lmokee/hardware/MKHardwareManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    return-object v0
.end method

.method private buildPreferenceValue([I)Ljava/lang/String;
    .locals 3
    .param p1, "colorValues"    # [I

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 240
    if-eqz v1, :cond_0

    .line 241
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 249
    invoke-static {p0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 250
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 266
    :cond_0
    return-void

    .line 254
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 255
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, 0x3

    new-array v3, v6, [I

    .line 256
    .local v3, "rgb":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lmokee/hardware/MKHardwareManager;->getNumGammaControls()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display_gamma_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 259
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "values":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v8

    .line 261
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v9

    .line 262
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v10

    .line 263
    invoke-virtual {v0, v1, v3}, Lmokee/hardware/MKHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 256
    .end local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-super/range {p0 .. p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 96
    const v1, 0x7f1100e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 97
    .local v8, "container":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 98
    .local v12, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    .line 99
    .local v13, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 100
    .local v14, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c0095

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "gammaDescriptors":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v3, v1, :cond_4

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v2, v3}, Lmokee/hardware/MKHardwareManager;->getDisplayGammaCalibration(I)[I

    move-result-object v2

    aput-object v2, v1, v3

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v15, v15, v3

    array-length v15, v15

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    aput-object v2, v1, v3

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_gamma_default_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "defaultKey":Ljava/lang/String;
    invoke-interface {v13, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->buildPreferenceValue([I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 117
    const v1, 0x7f040055

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 120
    .local v11, "header":Landroid/widget/TextView;
    array-length v1, v10

    if-ge v3, v1, :cond_2

    .line 121
    aget-object v1, v10, v3

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_1
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    .end local v11    # "header":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v1}, Lmokee/hardware/MKHardwareManager;->getDisplayGammaCalibrationMin()I

    move-result v6

    .line 130
    .local v6, "min":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v1}, Lmokee/hardware/MKHardwareManager;->getDisplayGammaCalibrationMax()I

    move-result v7

    .line 131
    .local v7, "max":I
    const/4 v4, 0x0

    .local v4, "color":I
    :goto_2
    sget-object v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v1, v1

    if-ge v4, v1, :cond_3

    .line 132
    const v1, 0x7f040056

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 135
    .local v5, "item":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v15, v1, v3

    new-instance v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;-><init>(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;IILandroid/view/ViewGroup;II)V

    aput-object v1, v15, v4

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v1, v1, v3

    aget-object v1, v1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 140
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 123
    .end local v4    # "color":I
    .end local v5    # "item":Landroid/view/ViewGroup;
    .end local v6    # "min":I
    .end local v7    # "max":I
    .restart local v11    # "header":Landroid/widget/TextView;
    :cond_2
    const v1, 0x7f0a0292

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v3, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v15

    invoke-virtual {v14, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 104
    .end local v11    # "header":Landroid/widget/TextView;
    .restart local v4    # "color":I
    .restart local v6    # "min":I
    .restart local v7    # "max":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 143
    .end local v4    # "color":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .end local v9    # "defaultKey":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 179
    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display_gamma_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    invoke-virtual {v3, v1}, Lmokee/hardware/MKHardwareManager;->getDisplayGammaCalibration(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->buildPreferenceValue([I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    if-eqz v2, :cond_1

    .line 187
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lmokee/hardware/MKHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 84
    const v0, 0x7f0a02a6

    new-instance v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$1;-><init>(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 219
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 235
    :cond_1
    return-void

    :cond_2
    move-object v2, p1

    .line 223
    check-cast v2, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;

    .line 224
    .local v2, "myState":Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    iget v3, v2, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    iput v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    .line 226
    iget-object v3, v2, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    .line 227
    iget-object v3, v2, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    .line 229
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v1, v3, :cond_1

    .line 230
    const/4 v0, 0x0

    .local v0, "color":I
    :goto_1
    sget-object v3, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->BAR_COLORS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 231
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mSeekBars:[[Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->setGamma(I)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    aget-object v4, v4, v1

    invoke-virtual {v3, v1, v4}, Lmokee/hardware/MKHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 196
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 212
    :goto_0
    return-object v1

    .line 201
    :cond_1
    new-instance v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 202
    .local v1, "myState":Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    iput v3, v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;->controlCount:I

    .line 203
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I

    iput-object v3, v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;->currentColors:[[I

    .line 204
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    iput-object v3, v1, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$SavedState;->originalColors:[[I

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mNumberOfControls:I

    if-ge v0, v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    aget-object v4, v4, v0

    invoke-virtual {v3, v0, v4}, Lmokee/hardware/MKHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mOriginalColors:[[I

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 152
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 153
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$2;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$2;-><init>(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method
