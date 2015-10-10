.class public Lcom/mokee/helper/activities/MoKeeCenter;
.super Landroid/support/v4/app/FragmentActivity;
.source "MoKeeCenter.java"


# instance fields
.field private bar:Landroid/app/ActionBar;

.field private mTabsAdapter:Lcom/mokee/helper/adapters/TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mokee/helper/activities/MoKeeCenter;->sendPaymentRequest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static donateOrRemoveAdsButton(Landroid/app/Activity;Z)V
    .locals 13
    .param p0, "mContext"    # Landroid/app/Activity;
    .param p1, "isDonate"    # Z

    .prologue
    const/16 v10, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 130
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 131
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040059

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 132
    .local v0, "donateView":Landroid/widget/LinearLayout;
    const v8, 0x7f1100f4

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    .local v4, "mRequest":Landroid/widget/TextView;
    const v8, 0x7f1100f3

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 134
    .local v5, "mSeekBar":Landroid/widget/SeekBar;
    new-instance v8, Lcom/mokee/helper/activities/MoKeeCenter$1;

    invoke-direct {v8, v4, p0}, Lcom/mokee/helper/activities/MoKeeCenter$1;-><init>(Landroid/widget/TextView;Landroid/app/Activity;)V

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 149
    const v8, 0x7f11004c

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 150
    .local v3, "mProgressBar":Landroid/widget/ProgressBar;
    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->getPaidTotal(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v6

    .line 151
    .local v6, "paid":Ljava/lang/Float;
    const/high16 v8, 0x42880000    # 68.0f

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 152
    .local v7, "unPaid":Ljava/lang/Float;
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {v5, v11}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 154
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    const v8, 0x7f0a0039

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_0
    new-instance v2, Lcom/mokee/helper/activities/MoKeeCenter$2;

    invoke-direct {v2, p1, v5, v7, p0}, Lcom/mokee/helper/activities/MoKeeCenter$2;-><init>(ZLandroid/widget/SeekBar;Ljava/lang/Float;Landroid/app/Activity;)V

    .line 183
    .local v2, "mDialogButton":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const v8, 0x7f0a0031

    :goto_1
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0032

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0035

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0033

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0034

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 190
    return-void

    .line 157
    .end local v2    # "mDialogButton":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 158
    invoke-virtual {v3, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    const/16 v8, 0x44

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 160
    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 161
    const v8, 0x7f0a003e

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7}, Ljava/lang/Float;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    .restart local v2    # "mDialogButton":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    const v8, 0x7f0a003d

    goto :goto_1
.end method

.method private static sendPaymentRequest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/app/Activity;
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mokee.pay.action.PAYMENT_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packagename"

    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "type"

    const-string v2, "donation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "description"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "price"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 205
    packed-switch p2, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 207
    :pswitch_0
    invoke-static {p0}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->duration(J)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lcom/mokee/helper/activities/MoKeeCenter$3;

    invoke-direct {v1, p0}, Lcom/mokee/helper/activities/MoKeeCenter$3;-><init>(Lcom/mokee/helper/activities/MoKeeCenter;)V

    invoke-virtual {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->actionListener(Lmokee/support/widget/snackbar/listeners/ActionClickListener;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->actionLabel(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    invoke-static {v0}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 214
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->refreshOption()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/mokee/helper/activities/MoKeeCenter;->setContentView(I)V

    .line 69
    const v0, 0x7f11014d

    invoke-virtual {p0, v0}, Lcom/mokee/helper/activities/MoKeeCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 70
    invoke-virtual {p0}, Lcom/mokee/helper/activities/MoKeeCenter;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    .line 71
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 72
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 73
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 75
    new-instance v0, Lcom/mokee/helper/adapters/TabsAdapter;

    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v1}, Lcom/mokee/helper/adapters/TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->mTabsAdapter:Lcom/mokee/helper/adapters/TabsAdapter;

    .line 76
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->mTabsAdapter:Lcom/mokee/helper/adapters/TabsAdapter;

    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-class v2, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mokee/helper/adapters/TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->mTabsAdapter:Lcom/mokee/helper/adapters/TabsAdapter;

    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-class v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mokee/helper/adapters/TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->mTabsAdapter:Lcom/mokee/helper/adapters/TabsAdapter;

    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-class v2, Lcom/mokee/helper/fragments/MoKeeSupportFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mokee/helper/adapters/TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    const-string v1, "tab"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 84
    invoke-virtual {p0}, Lcom/mokee/helper/activities/MoKeeCenter;->invalidateOptionsMenu()V

    .line 85
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "onNewIntent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "send":Landroid/content/Intent;
    const-string v1, "update_list_updated"

    const-string v2, "update_list_updated"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    const-string v1, "download_id"

    const-string v2, "download_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 124
    const-string v1, "download_path"

    const-string v2, "download_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "download_flag"

    const-string v2, "download_flag"

    const/16 v3, 0x400

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/mokee/helper/activities/MoKeeCenter;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 127
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/mokee/helper/activities/MoKeeCenter;->onBackPressed()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 89
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/mokee/helper/activities/MoKeeCenter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 92
    const-string v2, "download_flag"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, "flag":I
    const/16 v2, 0x401

    if-ne v0, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 99
    .end local v0    # "flag":I
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v0    # "flag":I
    :cond_1
    if-ne v0, v3, :cond_0

    .line 96
    iget-object v2, p0, Lcom/mokee/helper/activities/MoKeeCenter;->bar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/mokee/helper/activities/MoKeeCenter;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    return-void
.end method
