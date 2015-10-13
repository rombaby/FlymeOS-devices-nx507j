.class public Landroid/widget/NubiaCursorController$SelectionModifierCursorController;
.super Landroid/widget/NubiaCursorController;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

.field private mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 5
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 1192
    invoke-direct {p0, p1, p2}, Landroid/widget/NubiaCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 1173
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 1174
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 1175
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 1182
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 1183
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 1193
    const v1, 0x3030028

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 1194
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1195
    invoke-virtual {p0, p1, v4, p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/NubiaCursorController;)Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1196
    new-instance v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)V

    .line 1203
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    const v1, 0x303002a

    invoke-virtual {p0, v1}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->createFloatPanelViewController(I)Landroid/widget/NubiaCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    .line 1204
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0063

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1205
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0064

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1206
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d005e

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    const v2, 0x30d0060

    invoke-virtual {v1, v2, v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 1208
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 1209
    return-void
.end method

.method static synthetic access$600(Landroid/widget/NubiaCursorController$SelectionModifierCursorController;)Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "clipboardManager"    # Landroid/content/ClipboardManager;
    .param p2, "clipdata"    # Landroid/content/ClipData;
    .param p3, "defaultText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1212
    const/4 v0, 0x0

    invoke-static {v0, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1213
    return-void
.end method

.method public computePanelPosition([I)V
    .locals 4
    .param p1, "outPositon"    # [I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1217
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1218
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1219
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 1220
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v3

    .line 1221
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    aput v0, p1, v2

    .line 1229
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v0, v0, v2

    aput v0, p1, v2

    goto :goto_0

    .line 1226
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 1227
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 3

    .prologue
    .line 1233
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1234
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHandleNoShadowRealHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public computePanelPositionOnEndTop()I
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotLocationOnScreen([I)V

    .line 1240
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mCoords2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getClipboardPanel()Landroid/widget/NubiaCursorController$FloatPanelViewController;
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    return-object v0
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 1248
    iget v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 1253
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->hide()V

    .line 1254
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1255
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 1257
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1264
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "touchHandleView"    # Landroid/widget/NubiaCursorController$NubiaHandleView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1280
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1270
    :pswitch_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1271
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 1274
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 1268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 1286
    .local v2, "action":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v3, :cond_3

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1288
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1289
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1290
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1291
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1293
    :cond_1
    const/4 v10, 0x1

    .line 1359
    :cond_2
    :goto_0
    return v10

    .line 1295
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v2, :cond_9

    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    .line 1297
    .local v19, "xpos":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    .line 1298
    .local v20, "ypos":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->inRecRange(FF)Z

    move-result v14

    .line 1299
    .local v14, "isTouchStartHandle":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->inRecRange(FF)Z

    move-result v13

    .line 1300
    .local v13, "isTouchEndHandle":Z
    const/16 v18, 0x0

    .line 1301
    .local v18, "touchHandle":Landroid/widget/NubiaCursorController$NubiaHandleView;
    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    .line 1302
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->distance(FF)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->distance(FF)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    .line 1311
    :cond_4
    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    if-eqz v3, :cond_9

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1314
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1316
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1317
    const/4 v10, 0x1

    goto :goto_0

    .line 1305
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    goto :goto_1

    .line 1308
    :cond_7
    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    .line 1309
    :cond_8
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    move-object/from16 v18, v0

    goto :goto_1

    .line 1320
    .end local v13    # "isTouchEndHandle":Z
    .end local v14    # "isTouchStartHandle":Z
    .end local v18    # "touchHandle":Landroid/widget/NubiaCursorController$NubiaHandleView;
    .end local v19    # "xpos":F
    .end local v20    # "ypos":F
    :cond_9
    packed-switch v2, :pswitch_data_0

    .line 1353
    :cond_a
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v11

    .line 1354
    .local v11, "hasMagnifier":Z
    const/4 v10, 0x0

    .line 1355
    .local v10, "handle":Z
    if-eqz v11, :cond_b

    .line 1356
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getMagnifierController()Lnubia/widget/TextMagnifierController;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lnubia/widget/TextMagnifierController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 1357
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/NubiaCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1322
    .end local v10    # "handle":Z
    .end local v11    # "hasMagnifier":Z
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1323
    .local v6, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 1324
    .local v7, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v15

    .line 1325
    .local v15, "offset":I
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1326
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1327
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v3 .. v9}, Landroid/widget/Editor;->startTextSelectionModeIfDoubleTap(JFFFF)V

    .line 1328
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 1329
    move-object/from16 v0, p0

    iput v7, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_2

    .line 1333
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v15    # "offset":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1335
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 1336
    .local v16, "pCounts":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v17

    .line 1338
    .local v17, "pOffset":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    move/from16 v0, v17

    if-ge v0, v3, :cond_c

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1339
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    move/from16 v0, v17

    if-le v0, v3, :cond_d

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1336
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1344
    .end local v12    # "index":I
    .end local v16    # "pCounts":I
    .end local v17    # "pOffset":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->onTapUpEvent()V

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_2

    .line 1320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1363
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1364
    iput v0, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1365
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 1368
    iput p1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 1369
    iput p1, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 1370
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    .line 1374
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    .line 1375
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    const/4 v6, 0x4

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 1378
    .local v0, "buttonIds":[I
    const/4 v6, 0x3

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    .line 1380
    .local v3, "splitIds":[I
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1381
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1382
    .local v2, "showBtns":Z
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 1383
    .local v4, "value":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1384
    const/4 v2, 0x1

    .line 1388
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_3
    if-eqz v2, :cond_0

    .line 1389
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 1390
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 1391
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 1392
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 1393
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1394
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->hideInsertionPointCursorControllerWrap()V

    .line 1395
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v6, v0, v3, v5}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    .line 1396
    iget-object v6, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v6}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 1376
    nop

    :array_0
    .array-data 4
        0x30d0063
        0x30d0064
        0x30d005e
        0x30d0060
    .end array-data

    .line 1378
    :array_1
    .array-data 4
        0x30d005b
        0x30d005d
        0x30d005f
    .end array-data
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1405
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1437
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1407
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1408
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 1411
    :cond_2
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1413
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1414
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1415
    iput-boolean v3, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0

    .line 1417
    :cond_3
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1418
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1419
    .local v0, "end":I
    if-ltz v1, :cond_4

    if-gez v0, :cond_5

    .line 1420
    :cond_4
    const-string v2, "NubiaCursorController"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 1424
    :cond_5
    if-ne v1, v0, :cond_6

    .line 1425
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 1428
    :cond_6
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1429
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1430
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/NubiaCursorController$NubiaHandleView;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1431
    :cond_7
    iget-boolean v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v2, :cond_0

    .line 1432
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mClipboardPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->hide()V

    .line 1433
    iget-object v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/NubiaCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 1434
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0
.end method
