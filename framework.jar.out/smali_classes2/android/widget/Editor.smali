.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$PastePanelOnClickListener;,
        Landroid/widget/Editor$FlymeInjector;,
        Landroid/widget/Editor$MzInsertionPointCursorController;,
        Landroid/widget/Editor$MzShowSuggestionsRunnable;,
        Landroid/widget/Editor$MzStartSelectionActionRunnable;,
        Landroid/widget/Editor$OptionHandle;,
        Landroid/widget/Editor$OptionWrapper;,
        Landroid/widget/Editor$TextModifyOperation;,
        Landroid/widget/Editor$UndoInputFilter;,
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$CursorAnchorInfoNotifier;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$SelectionActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditDeleteListener;,
        Landroid/widget/Editor$SpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;,
        Landroid/widget/Editor$TextDisplayList;
    }
.end annotation


# static fields
.field public static final HIDE_OPTION:I = 0x2711

.field public static final SHOW_OPTION:I = 0x2712

.field static final BLINK:I = 0x1f4

.field static final DEBUG_UNDO:Z = false

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F


# instance fields
.field public mCursorOffsetX:I

.field public mEnableDragSelection:Z

.field public mHandler:Landroid/widget/Editor$OptionHandle;

.field public mIsInDragSelectionMode:Z

.field public mLastLayoutHeight:I

.field public mLastScrollTime:J

.field public mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

.field public mSelectionActionModeCallback:Landroid/widget/Editor$SelectionActionModeCallback;

.field public mSelectonActionModeRunnable:Ljava/lang/Runnable;

.field public mStartActionModeResult:Z

.field mBlink:Landroid/widget/Editor$Blink;

.field private mContext:Landroid/content/Context;

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field final mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field mDiscardNextActionUp:Z

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

.field private mIsInTextSelectionMode:Z

.field mKeyListener:Landroid/text/method/KeyListener;

.field public mLastDownPositionX:F

.field public mLastDownPositionY:F

.field private mMagnifierController:Lnubia/widget/TextMagnifierController;

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field mPreserveDetachedSelection:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field mSelectionActionMode:Landroid/view/ActionMode;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field private mSpanController:Landroid/widget/Editor$SpanController;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

.field mTextIsSelectable:Z

.field private mTextView:Landroid/widget/TextView;

.field mTouchFocusSelected:Z

.field mUndoInputFilter:Landroid/text/InputFilter;

.field mUndoManager:Landroid/content/UndoManager;

.field mUndoOwner:Landroid/content/UndoOwner;

.field mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 129
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v2, p0, Landroid/widget/Editor;->mInputType:I

    .line 172
    iput-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 189
    iput-boolean v0, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 225
    new-instance v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    iput-boolean v2, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->initExtFlymeFields(Landroid/widget/Editor;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/Editor;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 123
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/Editor;IIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$2400(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/widget/Editor;FF)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Editor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/Editor;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Editor;

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 605
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 606
    .local v11, "wid":I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 608
    .local v8, "ht":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:dimen@textview_error_popup_default_width#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 610
    .local v3, "defaultWidthInPixels":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 612
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 613
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 614
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 613
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 621
    :cond_0
    float-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 622
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 623
    return-void
.end method

.method private destroyDisplayListsData()V
    .locals 3

    .prologue
    .line 305
    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-eqz v2, :cond_2

    .line 306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 307
    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v2, v2, v1

    iget-object v0, v2, Landroid/widget/Editor$TextDisplayList;->displayList:Landroid/view/RenderNode;

    .line 309
    .local v0, "displayList":Landroid/view/RenderNode;
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/view/RenderNode;->destroyDisplayListData()V

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v0    # "displayList":Landroid/view/RenderNode;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 314
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    .line 1005
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1006
    .local v4, "text":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1007
    check-cast v2, Landroid/text/Spannable;

    .line 1008
    .local v2, "spannable":Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1010
    .local v3, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1011
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1012
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1014
    and-int/lit8 v0, v0, -0x2

    .line 1015
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1010
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    .end local v3    # "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cursorOffsetVertical"    # I

    .prologue
    const/4 v3, 0x0

    .line 1445
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 1446
    .local v1, "translate":Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1447
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 1448
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1445
    .end local v0    # "i":I
    .end local v1    # "translate":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1450
    .restart local v0    # "i":I
    .restart local v1    # "translate":Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1451
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    .line 1330
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v28

    .line 1331
    .local v28, "lineRange":J
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1332
    .local v9, "firstLine":I
    invoke-static/range {v28 .. v29}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1333
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    .line 1422
    :goto_0
    return-void

    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1335
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1338
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_b

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-nez v4, :cond_1

    .line 1340
    const-class v4, Landroid/widget/Editor$TextDisplayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextDisplayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/Editor$FlymeInjector;->injectDrawHardwareAccelerated(Landroid/widget/Editor;Landroid/text/Layout;)V

    move-object/from16 v20, p2

    .line 1343
    check-cast v20, Landroid/text/DynamicLayout;

    .line 1344
    .local v20, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v15

    .line 1345
    .local v15, "blockEndLines":[I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v17

    .line 1346
    .local v17, "blockIndices":[I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v31

    .line 1347
    .local v31, "numberOfBlocks":I
    invoke-virtual/range {v20 .. v20}, Landroid/text/DynamicLayout;->getIndexFirstChangedBlock()I

    move-result v24

    .line 1349
    .local v24, "indexFirstChangedBlock":I
    const/16 v21, -0x1

    .line 1350
    .local v21, "endOfPreviousBlock":I
    const/16 v33, 0x0

    .line 1351
    .local v33, "searchStartIndex":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 1352
    aget v14, v15, v23

    .line 1353
    .local v14, "blockEndLine":I
    aget v16, v17, v23

    .line 1355
    .local v16, "blockIndex":I
    const/4 v4, -0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_5

    const/16 v18, 0x1

    .line 1356
    .local v18, "blockIsInvalid":Z
    :goto_2
    if-eqz v18, :cond_2

    .line 1357
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v16

    .line 1360
    aput v16, v17, v23

    .line 1361
    add-int/lit8 v33, v16, 0x1

    .line 1364
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v4, v4, v16

    if-nez v4, :cond_3

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    new-instance v5, Landroid/widget/Editor$TextDisplayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Editor$TextDisplayList;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v16

    .line 1369
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v4, v4, v16

    invoke-virtual {v4}, Landroid/widget/Editor$TextDisplayList;->needsRecord()Z

    move-result v13

    .line 1370
    .local v13, "blockDisplayListIsInvalid":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v4, v4, v16

    iget-object v12, v4, Landroid/widget/Editor$TextDisplayList;->displayList:Landroid/view/RenderNode;

    .line 1371
    .local v12, "blockDisplayList":Landroid/view/RenderNode;
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    if-eqz v13, :cond_9

    .line 1372
    :cond_4
    add-int/lit8 v11, v21, 0x1

    .line 1373
    .local v11, "blockBeginLine":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    .line 1374
    .local v34, "top":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v19

    .line 1375
    .local v19, "bottom":I
    const/16 v25, 0x0

    .line 1376
    .local v25, "left":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v32

    .line 1377
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1378
    const v30, 0x7f7fffff    # Float.MAX_VALUE

    .line 1379
    .local v30, "min":F
    const/16 v27, 0x1

    .line 1380
    .local v27, "max":F
    move/from16 v26, v11

    .local v26, "line":I
    :goto_3
    move/from16 v0, v26

    if-gt v0, v14, :cond_6

    .line 1381
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 1382
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1380
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 1355
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1384
    .restart local v11    # "blockBeginLine":I
    .restart local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .restart local v13    # "blockDisplayListIsInvalid":Z
    .restart local v18    # "blockIsInvalid":Z
    .restart local v19    # "bottom":I
    .restart local v25    # "left":I
    .restart local v26    # "line":I
    .restart local v27    # "max":F
    .restart local v30    # "min":F
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :cond_6
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1385
    const/high16 v4, 0x3f000000    # 0.5f

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v32, v0

    .line 1389
    .end local v26    # "line":I
    .end local v27    # "max":F
    .end local v30    # "min":F
    :cond_7
    if-eqz v13, :cond_8

    .line 1390
    sub-int v4, v32, v25

    sub-int v5, v19, v34

    invoke-virtual {v12, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v22

    .line 1395
    .local v22, "hardwareCanvas":Landroid/view/HardwareCanvas;
    move/from16 v0, v25

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v34

    neg-int v5, v0

    int-to-float v5, v5

    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1396
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v14}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 1402
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1408
    .end local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    :cond_8
    move/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v32

    move/from16 v3, v19

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .end local v11    # "blockBeginLine":I
    .end local v19    # "bottom":I
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_9
    move-object/from16 v4, p1

    .line 1411
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v5, v6}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;Landroid/graphics/Rect;I)I

    .line 1414
    move/from16 v21, v14

    .line 1351
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 1400
    .restart local v11    # "blockBeginLine":I
    .restart local v19    # "bottom":I
    .restart local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    .restart local v25    # "left":I
    .restart local v32    # "right":I
    .restart local v34    # "top":I
    :catchall_0
    move-exception v4

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 1402
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    throw v4

    .line 1417
    .end local v11    # "blockBeginLine":I
    .end local v12    # "blockDisplayList":Landroid/view/RenderNode;
    .end local v13    # "blockDisplayListIsInvalid":Z
    .end local v14    # "blockEndLine":I
    .end local v16    # "blockIndex":I
    .end local v18    # "blockIsInvalid":Z
    .end local v19    # "bottom":I
    .end local v22    # "hardwareCanvas":Landroid/view/HardwareCanvas;
    .end local v25    # "left":I
    .end local v32    # "right":I
    .end local v34    # "top":I
    :cond_a
    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIndexFirstChangedBlock(I)V

    goto/16 :goto_0

    .line 1420
    .end local v15    # "blockEndLines":[I
    .end local v17    # "blockIndices":[I
    .end local v20    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v21    # "endOfPreviousBlock":I
    .end local v23    # "i":I
    .end local v24    # "indexFirstChangedBlock":I
    .end local v31    # "numberOfBlocks":I
    .end local v33    # "searchStartIndex":I
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "partialStartOffset"    # I
    .param p3, "partialEndOffset"    # I
    .param p4, "delta"    # I
    .param p5, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v6, 0x0

    .line 1160
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1161
    .local v1, "content":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 1162
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 1163
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1164
    .local v0, "N":I
    if-gez p2, :cond_4

    .line 1165
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1166
    const/4 p2, 0x0

    .line 1167
    move p3, v0

    .line 1200
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 1201
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1212
    .end local v0    # "N":I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1213
    const/16 v7, 0x800

    invoke-static {v1, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1214
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1216
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1217
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1219
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1220
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1221
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1222
    const/4 v6, 0x1

    .line 1224
    :cond_3
    return v6

    .line 1171
    .restart local v0    # "N":I
    :cond_4
    add-int/2addr p3, p4

    .line 1173
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 1174
    check-cast v4, Landroid/text/Spanned;

    .line 1175
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1177
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 1178
    .local v2, "i":I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 1179
    add-int/lit8 v2, v2, -0x1

    .line 1180
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1181
    .local v3, "j":I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 1182
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1183
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 1186
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1187
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1189
    if-le p2, v0, :cond_9

    .line 1190
    move p2, v0

    .line 1194
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 1195
    move p3, v0

    goto :goto_0

    .line 1191
    :cond_9
    if-gez p2, :cond_8

    .line 1192
    const/4 p2, 0x0

    goto :goto_3

    .line 1196
    :cond_a
    if-gez p3, :cond_0

    .line 1197
    const/4 p3, 0x0

    goto :goto_0

    .line 1204
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1208
    .end local v0    # "N":I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1209
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1210
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1580
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    .line 1581
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1582
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1584
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 6
    .param p1, "blockIndices"    # [I
    .param p2, "numberOfBlocks"    # I
    .param p3, "searchStartIndex"    # I

    .prologue
    .line 1426
    iget-object v4, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    array-length v3, v4

    .line 1427
    .local v3, "length":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1428
    const/4 v0, 0x0

    .line 1429
    .local v0, "blockIndexFound":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 1430
    aget v4, p1, v2

    if-ne v4, v1, :cond_1

    .line 1431
    const/4 v0, 0x1

    .line 1435
    :cond_0
    if-eqz v0, :cond_3

    .line 1427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1440
    .end local v0    # "blockIndexFound":Z
    .end local v2    # "j":I
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/Editor$TextDisplayList;

    iput-object v4, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    move v1, v3

    .line 1441
    .end local v1    # "i":I
    :cond_3
    return v1
.end method

.method private getCharRange(I)J
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 746
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 747
    .local v4, "textLength":I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 748
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 749
    .local v0, "currentChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 750
    .local v1, "nextChar":C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 751
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    .line 767
    .end local v0    # "currentChar":C
    .end local v1    # "nextChar":C
    :goto_0
    return-wide v6

    .line 754
    :cond_0
    if-ge p1, v4, :cond_1

    .line 755
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0

    .line 757
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 758
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 759
    .local v2, "previousChar":C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 760
    .local v3, "previousPreviousChar":C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 761
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0

    .line 764
    .end local v2    # "previousChar":C
    .end local v3    # "previousPreviousChar":C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 765
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0

    .line 767
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    goto :goto_0
.end method

.method private getErrorX()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 396
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 398
    .local v4, "scale":F
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v6, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 400
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    .line 403
    .local v2, "layoutDirection":I
    packed-switch v2, :pswitch_data_0

    .line 406
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_0
    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v3, v5, v6

    .line 407
    .local v3, "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v6}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v1, v5, v3

    .line 415
    .local v1, "errorX":I
    :goto_0
    return v1

    .line 411
    .end local v1    # "errorX":I
    .end local v3    # "offset":I
    :pswitch_0
    if-eqz v0, :cond_1

    iget v5, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    :cond_1
    div-int/lit8 v5, v5, 0x2

    mul-float v6, v8, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 412
    .restart local v3    # "offset":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v1, v5, v3

    .restart local v1    # "errorX":I
    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getErrorY()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 427
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 428
    .local v0, "compoundPaddingTop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v6, v7, v0

    .line 431
    .local v6, "vspace":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v7, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 433
    .local v1, "dr":Landroid/widget/TextView$Drawables;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    .line 435
    .local v4, "layoutDirection":I
    packed-switch v4, :pswitch_data_0

    .line 438
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 445
    .local v2, "height":I
    :cond_0
    :goto_0
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v0, v7

    .line 451
    .local v3, "icontop":I
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    .line 452
    .local v5, "scale":F
    add-int v7, v3, v2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    return v7

    .line 441
    .end local v2    # "height":I
    .end local v3    # "icontop":I
    .end local v5    # "scale":F
    :pswitch_0
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .restart local v2    # "height":I
    :cond_1
    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1032
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v1, :cond_1

    .line 1033
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v1}, Landroid/widget/NubiaCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1034
    .local v0, "lastTapPosition":I
    if-ltz v0, :cond_1

    .line 1036
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1037
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1043
    .end local v0    # "lastTapPosition":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 6

    .prologue
    .line 902
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    .line 903
    .local v2, "selectionController":Landroid/widget/NubiaCursorController;
    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->getMinTouchOffset()I

    move-result v1

    .line 904
    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 905
    .local v0, "maxOffset":I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 796
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "hintLayout"    # Landroid/text/Layout;
    .param p3, "offset"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 1526
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
    invoke-virtual {p2, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    .line 1531
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    goto :goto_0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 1806
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, #android:layout@text_drag_thumbnail#t

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1809
    .local v0, "shadowView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1810
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1813
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 1814
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1816
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1817
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1819
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1820
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1822
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1825
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1826
    .local v1, "size":I
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 1828
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1829
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1830
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 535
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 536
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 537
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    .line 384
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 385
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->hide()V

    .line 514
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 528
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 1604
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1605
    .local v1, "spannable":Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1607
    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1608
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1609
    const/4 v3, 0x1

    .line 1612
    :goto_1
    return v3

    .line 1607
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1612
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1591
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1592
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v3, v1, Landroid/text/Spannable;

    if-nez v3, :cond_1

    .line 1596
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 1594
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    check-cast v1, Landroid/text/Spannable;

    .end local v1    # "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 1596
    .local v0, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 846
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 847
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 852
    :goto_0
    return v4

    .line 849
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 850
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 851
    .local v2, "lineBottom":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 852
    .local v3, "primaryHorizontal":I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v4

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 861
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v2

    .line 863
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 864
    .local v1, "line":I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 866
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 867
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 868
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(FF)Z
    .locals 11
    .param p1, "positionX"    # F
    .param p2, "positionY"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 806
    sget-object v6, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v6

    .line 807
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 808
    .local v2, "position":[F
    const/4 v7, 0x0

    aput p1, v2, v7

    .line 809
    const/4 v7, 0x1

    aput p2, v2, v7

    .line 810
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 812
    .local v3, "view":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 813
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_0

    .line 815
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 816
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 819
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 821
    :cond_1
    monitor-exit v6

    .line 842
    :goto_1
    return v4

    .line 824
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 825
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 828
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 829
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 831
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 832
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 833
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 836
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 839
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 842
    goto :goto_1

    .line 839
    .end local v2    # "position":[F
    .end local v3    # "view":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 578
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 580
    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 18

    .prologue
    .line 667
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v16

    if-nez v16, :cond_0

    .line 668
    const/16 v16, 0x0

    .line 727
    :goto_0
    return v16

    .line 671
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    move-result v16

    goto :goto_0

    .line 678
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 679
    .local v2, "inputType":I
    and-int/lit8 v3, v2, 0xf

    .line 680
    .local v3, "klass":I
    and-int/lit16 v14, v2, 0xff0

    .line 683
    .local v14, "variation":I
    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v3, v0, :cond_2

    const/16 v16, 0x10

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    const/16 v16, 0xd0

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    const/16 v16, 0xb0

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 690
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->selectAllText()Z

    move-result v16

    goto :goto_0

    .line 693
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v4

    .line 694
    .local v4, "lastTouchOffsets":J
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 695
    .local v7, "minOffset":I
    invoke-static {v4, v5}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 698
    .local v6, "maxOffset":I
    if-ltz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v7, v0, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 699
    :cond_5
    if-ltz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-le v6, v0, :cond_7

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 704
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    const-class v17, Landroid/text/style/URLSpan;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/URLSpan;

    .line 706
    .local v13, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v0, v13

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_9

    .line 707
    const/16 v16, 0x0

    aget-object v12, v13, v16

    .line 708
    .local v12, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 709
    .local v11, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spanned;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 726
    .end local v12    # "urlSpan":Landroid/text/style/URLSpan;
    .local v10, "selectionEnd":I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Landroid/text/Spannable;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 727
    if-le v10, v11, :cond_b

    const/16 v16, 0x1

    goto/16 :goto_0

    .line 711
    .end local v10    # "selectionEnd":I
    .end local v11    # "selectionStart":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v15

    .line 712
    .local v15, "wordIterator":Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 714
    invoke-virtual {v15, v7}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v11

    .line 715
    .restart local v11    # "selectionStart":I
    invoke-virtual {v15, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v10

    .line 717
    .restart local v10    # "selectionEnd":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_a

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v10, v0, :cond_a

    if-ne v11, v10, :cond_8

    .line 720
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v8

    .line 721
    .local v8, "range":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v11

    .line 722
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    goto :goto_1

    .line 727
    .end local v8    # "range":J
    .end local v15    # "wordIterator":Landroid/text/method/WordIterator;
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private sendUpdateSelection()V
    .locals 7

    .prologue
    .line 1268
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iget v1, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-gtz v1, :cond_1

    .line 1269
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1270
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1271
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 1272
    .local v2, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1273
    .local v3, "selectionEnd":I
    const/4 v4, -0x1

    .line 1274
    .local v4, "candStart":I
    const/4 v5, -0x1

    .line 1275
    .local v5, "candEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 1276
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    .line 1277
    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 1278
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 1282
    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1286
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStart":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "candStart":I
    .end local v5    # "candEnd":I
    :cond_1
    return-void
.end method

.method private setErrorIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 366
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 367
    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez v0, :cond_0

    .line 368
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 370
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView$Drawables;->setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    .line 372
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->resetResolvedDrawables()V

    .line 373
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 374
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 375
    return-void
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->mzIsCursorVisible(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, "start":I
    if-ltz v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    if-ltz v0, :cond_0

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, #android:layout@textview_hint#t

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, "err":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .local v2, "scale":F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->setFocusable(Z)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$ErrorPopup;->setInputMethodMode(I)V

    .end local v0    # "err":Landroid/widget/TextView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "scale":F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Editor$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .local v4, "selectionStart":I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, "selectionEnd":I
    if-ne v4, v3, :cond_0

    :goto_0
    return v7

    :cond_0
    if-le v4, v3, :cond_1

    move v5, v4

    .local v5, "tmp":I
    move v4, v3

    move v3, v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .end local v5    # "tmp":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    .local v2, "selectionController":Landroid/widget/NubiaCursorController;
    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->getMinTouchOffset()I

    move-result v1

    .local v1, "minOffset":I
    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->getMaxTouchOffset()I

    move-result v0

    .local v0, "maxOffset":I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .param p1, "cursorIndex"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "horizontal"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .local v1, "width":I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .local v0, "left":I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "createSpellChecker"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->removeAdjacentSuggestionSpans(I)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    return-void
.end method

.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .local v0, "textLength":I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Editor$SpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSpanController:Landroid/widget/Editor$SpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .param p1, "password"    # Z
    .param p2, "passwordInputType"    # Z
    .param p3, "webPasswordInputType"    # Z
    .param p4, "numberPasswordInputType"    # Z

    .prologue
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_1
    if-eqz p3, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p4, :cond_2

    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .local v1, "nesting":I
    if-ne v1, v5, :cond_0

    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .end local v1    # "nesting":I
    :cond_0
    return-void

    .restart local v1    # "nesting":I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .local v1, "nesting":I
    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .end local v1    # "nesting":I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .param p1, "ims"    # Landroid/widget/Editor$InputMethodState;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor;->sendUpdateSelection()V

    return-void

    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method getButtonShowHides(ZI)Z
    .locals 5
    .param p1, "isTextEditable"    # Z
    .param p2, "buttonId"    # I

    .prologue
    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v2

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->canPaste()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .local v0, "clipboardMgr":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .local v1, "num":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "clipboardMgr":Landroid/content/ClipboardManager;
    .end local v1    # "num":I
    :pswitch_3
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->canCopy()Z

    move-result v2

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30d005a
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getCharRangeWrap(I)J
    .locals 2
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getFloatPanelShowHides([I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "buttonIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    array-length v3, p1

    .local v3, "length":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "outBoolArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, "isTextEditable":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aget v6, p1, v0

    invoke-virtual {p0, v5, v6}, Landroid/widget/Editor;->getButtonShowHides(ZI)Z

    move-result v2

    .local v2, "isVisibility":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "isVisibility":Z
    :cond_0
    return-object v4
.end method

.method public getInsertionController()Landroid/widget/NubiaCursorController;
    .locals 3

    .prologue
    iget-boolean v1, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/NubiaCursorController;->create(Landroid/widget/Editor;Landroid/content/Context;I)Landroid/widget/NubiaCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    goto :goto_0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/Editor$MzInsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$MzInsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    goto :goto_0
.end method

.method getMagnifierController()Lnubia/widget/TextMagnifierController;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierController:Lnubia/widget/TextMagnifierController;

    if-nez v0, :cond_0

    new-instance v0, Lnubia/widget/TextMagnifierController;

    invoke-direct {v0, p0}, Lnubia/widget/TextMagnifierController;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mMagnifierController:Lnubia/widget/TextMagnifierController;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mMagnifierController:Lnubia/widget/TextMagnifierController;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPositionListenerPosition()J
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method getSelectionController()Landroid/widget/NubiaCursorController;
    .locals 3

    .prologue
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/widget/NubiaCursorController;->create(Landroid/widget/Editor;Landroid/content/Context;I)Landroid/widget/NubiaCursorController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method handleFloatPanelClick(Landroid/view/View;Landroid/widget/NubiaCursorController;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "controller"    # Landroid/widget/NubiaCursorController;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .local v5, "min":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->length()I

    move-result v4

    .local v4, "max":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .local v8, "selStart":I
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .local v7, "selEnd":I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .end local v7    # "selEnd":I
    .end local v8    # "selStart":I
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    const-string v11, "clipboard"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .local v1, "clipboardManager":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    .local v2, "clipdata":Landroid/content/ClipData;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .end local p2    # "controller":Landroid/widget/NubiaCursorController;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .restart local p2    # "controller":Landroid/widget/NubiaCursorController;
    :pswitch_1
    iget-boolean v9, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->startTextSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/NubiaCursorController;->show()V

    goto :goto_0

    :pswitch_2
    iget-boolean v9, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    iget-object v11, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p0}, Landroid/widget/Editor;->startTextSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/NubiaCursorController;->show()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .local v3, "count":I
    :goto_1
    if-lez v3, :cond_2

    invoke-virtual {v2, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4, v0}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    goto :goto_0

    .end local v3    # "count":I
    :cond_3
    move v3, v10

    goto :goto_1

    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    :pswitch_4
    new-instance v6, Landroid/widget/Editor$PastePanelOnClickListener;

    invoke-direct {v6, p0, p2, v5, v4}, Landroid/widget/Editor$PastePanelOnClickListener;-><init>(Landroid/widget/Editor;Landroid/widget/NubiaCursorController;II)V

    .local v6, "onClickListener":Landroid/widget/Editor$PastePanelOnClickListener;
    invoke-virtual {p2, v2, v6}, Landroid/widget/NubiaCursorController;->setupClipBoardPanel(Landroid/content/ClipData;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .end local v6    # "onClickListener":Landroid/widget/Editor$PastePanelOnClickListener;
    :pswitch_5
    check-cast p2, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    .end local p2    # "controller":Landroid/widget/NubiaCursorController;
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p2, v1, v2, v9}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    iget-object v9, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    const v11, 0x30c000e

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .restart local p2    # "controller":Landroid/widget/NubiaCursorController;
    :pswitch_6
    check-cast p2, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;

    .end local p2    # "controller":Landroid/widget/NubiaCursorController;
    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p2, v1, v2, v9}, Landroid/widget/NubiaCursorController$SelectionModifierCursorController;->addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    iget-object v9, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x30d005a
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasMagnifierController()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lnubia/widget/TextMagnifierController;->isMagnifierEnabled(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideControllers()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    return-void
.end method

.method hideInsertionPointCursorControllerWrap()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor$TextDisplayList;->isDirty:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 10
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, "firstLine":I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, "lastLine":I
    move-object v3, p1

    check-cast v3, Landroid/text/DynamicLayout;

    .local v3, "dynamicLayout":Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .local v0, "blockEndLines":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .local v2, "blockIndices":[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .local v7, "numberOfBlocks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    aget v1, v2, v5

    .local v1, "blockIndex":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/widget/Editor$TextDisplayList;

    aget-object v8, v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/widget/Editor$TextDisplayList;->isDirty:Z

    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .end local v0    # "blockEndLines":[I
    .end local v1    # "blockIndex":I
    .end local v2    # "blockIndices":[I
    .end local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .end local v4    # "firstLine":I
    .end local v5    # "i":I
    .end local v6    # "lastLine":I
    .end local v7    # "numberOfBlocks":I
    :cond_2
    return-void

    .restart local v0    # "blockEndLines":[I
    .restart local v2    # "blockIndices":[I
    .restart local v3    # "dynamicLayout":Landroid/text/DynamicLayout;
    .restart local v4    # "firstLine":I
    .restart local v5    # "i":I
    .restart local v6    # "lastLine":I
    .restart local v7    # "numberOfBlocks":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v1    # "blockIndex":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOffsetVisibleWrap(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method isPositionVisibleWrap(II)Z
    .locals 2
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Landroid/widget/Editor;->isPositionVisible(FF)Z

    move-result v0

    return v0
.end method

.method public makeBlink()V
    .locals 6

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method needInsertPanel()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v1}, Landroid/widget/NubiaCursorController;->resetTouchOffsets()V

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v3, v1, v4}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v1, v2, v4}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    # invokes: Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$300(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor;->mCursorAnchorInfoNotifier:Landroid/widget/Editor$CursorAnchorInfoNotifier;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->onDetached()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->onDetached()V

    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->destroyDisplayListsData()V

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    iput-boolean v2, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layout"    # Landroid/text/Layout;
    .param p3, "highlight"    # Landroid/graphics/Path;
    .param p4, "highlightPaint"    # Landroid/graphics/Paint;
    .param p5, "cursorOffsetVertical"    # I

    .prologue
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .local v4, "selectionStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, "selectionEnd":I
    iget-object v1, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .local v2, "reported":Z
    iget-boolean v5, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v5, :cond_0

    iget-boolean v5, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "reported":Z
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v5, p1, p5}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    :cond_2
    if-eqz p3, :cond_3

    if-ne v4, v3, :cond_3

    iget v5, p0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v5, :cond_3

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->mzIsCursorVisible(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_flyme_0

    invoke-direct {p0, p1, p5}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    :cond_flyme_0

    const/4 p3, 0x0

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->canHaveDisplayList()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v4, "content":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .local v3, "clipData":Landroid/content/ClipData;
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    .local v11, "itemCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_0

    invoke-virtual {v3, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .local v10, "item":Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v10    # "item":Landroid/content/ClipData$Item;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v16

    .local v16, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v12

    .local v12, "localState":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "dragLocalState":Landroid/widget/Editor$DragLocalState;
    instance-of v0, v12, Landroid/widget/Editor$DragLocalState;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object v6, v12

    check-cast v6, Landroid/widget/Editor$DragLocalState;

    :cond_1
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .local v5, "dragDropIntoItself":Z
    :goto_1
    if-eqz v5, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    :cond_2
    :goto_2
    return-void

    .end local v5    # "dragDropIntoItself":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "dragDropIntoItself":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .local v17, "originalLength":I
    move/from16 v14, v16

    .local v14, "min":I
    move/from16 v13, v16

    .local v13, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Landroid/text/Spannable;

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v13, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .local v8, "dragSourceStart":I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .local v7, "dragSourceEnd":I
    if-gt v13, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v19, v21, v17

    .local v19, "shift":I
    add-int v8, v8, v19

    add-int v7, v7, v19

    .end local v19    # "shift":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    const/16 v21, 0x0

    add-int/lit8 v22, v8, -0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v18

    .local v18, "prevCharIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    add-int/lit8 v22, v8, 0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v15

    .local v15, "nextCharIdx":I
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v20

    .local v20, "t":Ljava/lang/CharSequence;
    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_2
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .param p1, "focused"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    if-eqz p1, :cond_b

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .local v4, "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, "selEnd":I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_9

    move v0, v6

    .local v0, "isFocusHighlighted":Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v0, :cond_a

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .local v1, "lastTapPosition":I
    if-ltz v1, :cond_1

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .local v2, "mMovement":Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    :cond_5
    iput-boolean v6, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .end local v1    # "lastTapPosition":I
    .end local v2    # "mMovement":Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v7, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    iput-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_8
    :goto_2
    return-void

    .restart local v3    # "selEnd":I
    .restart local v4    # "selStart":I
    :cond_9
    move v0, v7

    goto :goto_0

    .restart local v0    # "isFocusHighlighted":Z
    :cond_a
    move v5, v7

    goto :goto_1

    .end local v0    # "isFocusHighlighted":Z
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_b
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_c

    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    :cond_c
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .restart local v4    # "selStart":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .restart local v3    # "selEnd":I
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v5}, Landroid/widget/NubiaCursorController;->resetTouchOffsets()V

    goto :goto_2

    :cond_d
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_e

    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    :cond_e
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_f

    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    :cond_f
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .param p1, "screenState"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method onTapUpEvent()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/NubiaCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .local v0, "handled":Z
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    iput-boolean v1, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    iput-boolean v1, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :goto_1
    return v1

    .end local v0    # "handled":Z
    :cond_1
    move v0, v1

    goto :goto_0

    .restart local v0    # "handled":Z
    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .local v1, "selectAllGotFocus":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/widget/Editor$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "offset":I
    :cond_1
    :goto_1
    return-void

    .end local v1    # "selectAllGotFocus":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "offset":I
    .restart local v1    # "selectAllGotFocus":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NubiaCursorController;->show()V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 4
    .param p1, "handled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .local v0, "done":Z
    invoke-virtual {p0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->hide()V

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->hide()V

    invoke-virtual {p0}, Landroid/widget/Editor;->getMagnifierController()Lnubia/widget/TextMagnifierController;

    move-result-object v2

    invoke-virtual {v2}, Lnubia/widget/TextMagnifierController;->show()V

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->show()V

    iput-boolean v3, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    .local v1, "startTextSelectionMode":Z
    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iput-boolean v3, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    invoke-virtual {p0}, Landroid/widget/Editor;->startTextSelectionMode()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .local v3, "windowSupportsHandles":Z
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .local v2, "windowParams":Landroid/view/WindowManager$LayoutParams;
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_0

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_5

    :cond_0
    move v3, v5

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_6

    move v0, v5

    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_7

    .line 1752
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v5

    :goto_2
    iput-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v0, :cond_8

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v4}, Landroid/widget/NubiaCursorController;->onDetached()V

    iput-object v8, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/NubiaCursorController;

    :cond_2
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v4}, Landroid/widget/NubiaCursorController;->onDetached()V

    iput-object v8, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor;->mMagnifierController:Lnubia/widget/TextMagnifierController;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/Editor;->mMagnifierController:Lnubia/widget/TextMagnifierController;

    invoke-virtual {v4}, Lnubia/widget/TextMagnifierController;->hide()V

    iput-object v8, p0, Landroid/widget/Editor;->mMagnifierController:Lnubia/widget/TextMagnifierController;

    :cond_4

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->updateBackground(Landroid/widget/Editor;)V

    return-void

    .end local v0    # "enabled":Z
    .restart local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v3, v4

    goto :goto_0

    .end local v2    # "windowParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v4

    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_7
    move v6, v4

    goto :goto_2

    :cond_8
    move v5, v4

    goto :goto_3
.end method

.method removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/Editor$TextViewPositionListener;

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    return-void
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v8, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_2

    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .local v6, "contentChanged":Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .local v1, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_1
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    const/4 v0, 0x1

    .end local v1    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6    # "contentChanged":Z
    .end local v7    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method selectAllWrap()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    move-result v0

    return v0
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "after"    # I

    .prologue
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->stopDragSelectionMode(Landroid/widget/Editor;)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->dismiss()V

    :cond_0
    iput-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/Editor;->setErrorIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_0
.end method

.method setFrame()V
    .locals 7

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/Editor$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, "tv":Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/Editor$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/Editor$ErrorPopup;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Editor$ErrorPopup;->update(Landroid/view/View;IIII)V

    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setTextSelection(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .local v3, "sp":Landroid/text/Spannable;
    move v4, p1

    .local v4, "start":I
    move v2, p1

    .local v2, "end":I
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "candStart":I
    invoke-static {v3}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .local v0, "candEnd":I
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    if-eq v1, v0, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    :cond_0
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method setTextSelectionWrap(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    return-void
.end method

.method startSelectionActionMode()Z
    .locals 7

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_flyme_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->startSelectionActionModeMz()Z

    move-result v2

    return v2

    :cond_flyme_0

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    move v2, v4

    .line 1760
    :cond_0
    :goto_0
    return v2

    .line 1754
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "TextView"

    const-string v6, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    .local v3, "willExtract":Z
    if-nez v3, :cond_5

    new-instance v0, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v0, p0, v6}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .local v0, "actionModeCallback":Landroid/view/ActionMode$Callback;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .end local v0    # "actionModeCallback":Landroid/view/ActionMode$Callback;
    :cond_5
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    const/4 v2, 0x1

    .local v2, "selectionStarted":Z
    :goto_1
    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "selectionStarted":Z
    :cond_7
    move v2, v4

    goto :goto_1
.end method

.method startTextSelectionMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasSelection()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NubiaCursorController;->selectCurrentRange()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v1, "Editor"

    const-string v2, "TextView has no selection controller."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/NubiaCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->show()V

    iput-boolean v1, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "Editor"

    const-string v2, "TextView has no selection controller. Selection mode cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startTextSelectionModeIfDoubleTap(JFFFF)V
    .locals 9
    .param p1, "previousTapUpTime"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "previousTapPositionX"    # F
    .param p6, "previousTapPositionY"    # F

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p1

    long-to-float v1, v6

    .local v1, "duration":F
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_0

    invoke-direct {p0, p3, p4}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-float v3, p3, p5

    .local v3, "xoffset":F
    sub-float v4, p4, p6

    .local v4, "yoffset":F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float v2, v5, v6

    .local v2, "stayedInArea":F
    iget-object v5, p0, Landroid/widget/Editor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .local v0, "doubleTapSlop":I
    int-to-float v5, v0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->startTextSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .end local v0    # "doubleTapSlop":I
    .end local v2    # "stayedInArea":F
    .end local v3    # "xoffset":F
    .end local v4    # "yoffset":F
    :cond_0
    return-void
.end method

.method public stopBlink()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected stopSelectionActionMode()V
    .locals 1

    .prologue
    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->removeSelectonActionModeRunnable(Landroid/widget/Editor;)V

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/widget/Editor$FlymeInjector;->hideSelectionModifierCursorController(Landroid/widget/Editor;)V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopTextSelectionMode()V

    return-void
.end method

.method stopTextSelectionMode()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->hide()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mIsInTextSelectionMode:Z

    :cond_1
    return-void
.end method

.method public textview()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method updateCursorsPositions()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x2

    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v8, v8, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v8, :cond_1

    iput v11, p0, Landroid/widget/Editor;->mCursorCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .local v3, "layout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .local v2, "hintLayout":Landroid/text/Layout;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .local v6, "offset":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, "line":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .local v7, "top":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {v3, v6}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    iput v8, p0, Landroid/widget/Editor;->mCursorCount:I

    move v5, v0

    .local v5, "middle":I
    iget v8, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v8, v9, :cond_2

    add-int v8, v7, v0

    shr-int/lit8 v5, v8, 0x1

    :cond_2
    invoke-virtual {v3, v4}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v1

    .local v1, "clamped":Z
    invoke-direct {p0, v3, v2, v6, v1}, Landroid/widget/Editor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;IZ)F

    move-result v8

    invoke-static {p0, v11, v7, v5, v8}, Landroid/widget/Editor$FlymeInjector;->updateCursorPositionMz(Landroid/widget/Editor;IIIF)V

    iget v8, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v8, v9, :cond_0

    invoke-virtual {v3, v6, v1}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v8

    invoke-static {p0, v10, v5, v0, v8}, Landroid/widget/Editor$FlymeInjector;->updateCursorPositionMz(Landroid/widget/Editor;IIIF)V

    goto :goto_0

    .end local v1    # "clamped":Z
    .end local v5    # "middle":I
    :cond_3
    move v8, v10

    goto :goto_1
.end method


.method public getActiveBound(Landroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "autoclip"    # Z

    .prologue
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .local v1, "clipLeft":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    .local v3, "clipTop":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .local v2, "clipRight":I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .local v0, "clipBottom":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-ge v5, v1, :cond_2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-ge v5, v3, :cond_3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v2, :cond_4

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_4
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v0, :cond_5

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->left:I

    .local v4, "tmp":I
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, p1, Landroid/graphics/Rect;->left:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .end local v4    # "tmp":I
    :cond_6
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    .restart local v4    # "tmp":I
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method final hasComposingSpan(Landroid/text/Spannable;)Z
    .locals 6
    .param p1, "text"    # Landroid/text/Spannable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v4, v4, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v4, :cond_3

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/UnderlineSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .local v0, "spans":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-gtz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v0    # "spans":[Ljava/lang/Object;
    :cond_3
    invoke-static {p1}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "st":I
    if-ltz v1, :cond_4

    invoke-static {p1}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v4

    if-ne v1, v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public isAttached()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .local v1, "view":Landroid/view/View;
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInDragSelectionMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    return v0
.end method

.method public mzCanSelectText()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v0

    return v0
.end method

.method mzGetFieldTempRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method mzGetFieldTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method mzGetPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method mzSetFieldTempRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "tempRect"    # Landroid/graphics/Rect;

    .prologue
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method onCursorVisbilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->prepareCursorControllers()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->postInvalidate()V

    goto :goto_0
.end method

.method onPreDraw()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onPreDraw()Z

    const/4 v0, 0x1

    return v0
.end method

.method onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    if-ltz p1, :cond_0

    if-ne p1, p2, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$SelectionActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$SelectionActionModeCallback;

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionActionModeCallback;->mInSelectionMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    :cond_0
    return-void
.end method

.method onTouchEventMz(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$MzInsertionPointCursorController;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$MzInsertionPointCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    iput-boolean v1, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    iput-boolean v1, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->onEditorTouchDown()V

    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    move v0, v1

    goto :goto_0
.end method

.method onTouchUpEventMz(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .local v2, "selectAllGotFocus":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->hasSelection()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v6}, Landroid/widget/Editor$OptionWrapper;->isVisibleBeforeTouch()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    move v1, v4

    .local v1, "optionVisibleBeforeTouch":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    if-eqz v2, :cond_4

    :cond_1
    :goto_2
    return-void

    .end local v1    # "optionVisibleBeforeTouch":Z
    .end local v2    # "selectAllGotFocus":Z
    :cond_2
    move v2, v5

    goto :goto_0

    .restart local v2    # "selectAllGotFocus":Z
    :cond_3
    move v1, v5

    goto :goto_1

    .restart local v1    # "optionVisibleBeforeTouch":Z
    :cond_4
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_5

    check-cast v3, Landroid/text/Spannable;

    .end local v3    # "text":Ljava/lang/CharSequence;
    invoke-static {p0, v3, v5, v1}, Landroid/widget/Editor$FlymeInjector;->setSelectionOnTouchUpEvent(Landroid/widget/Editor;Landroid/text/Spannable;IZ)V

    goto :goto_2

    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    check-cast v3, Landroid/text/Spannable;

    .end local v3    # "text":Ljava/lang/CharSequence;
    invoke-static {p0, v3, v0, v1}, Landroid/widget/Editor$FlymeInjector;->setSelectionOnTouchUpEvent(Landroid/widget/Editor;Landroid/text/Spannable;IZ)V

    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v4}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    :cond_6
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/widget/Editor$MzShowSuggestionsRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/Editor$MzShowSuggestionsRunnable;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 317
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public performLongClickMz(Z)Z
    .locals 5
    .param p1, "handled"    # Z

    .prologue
    const/4 v1, 0x0

    .local v1, "res":Z
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/Editor;->hasComposingSpan(Landroid/text/Spannable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getDefaultOptionsVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v4, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    invoke-static {p0, v0, v0}, Landroid/widget/Editor$FlymeInjector;->touchPositionIsInSelectionMz(Landroid/widget/Editor;II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v1

    .end local v0    # "offset":I
    :cond_2
    if-nez p1, :cond_3

    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getDefaultMagnifierVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v4, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .restart local v0    # "offset":I
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    const/4 v1, 0x1

    .end local v0    # "offset":I
    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method selectCurrentWordMz()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v0

    return v0
.end method

.method public setEnableDragSelection(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/Editor;->mEnableDragSelection:Z

    return-void
.end method

.method startSelectionActionMode(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    iget-object v0, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$MzStartSelectionActionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$MzStartSelectionActionRunnable;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mSelectonActionModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method startSelectionActionModeMz()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    move-result v0

    .line 1703
    :cond_0
    :goto_0
    return v0

    .line 1704
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getDefaultOptionsVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/Editor;->hasComposingSpan(Landroid/text/Spannable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4426
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1547
    goto :goto_0

    .line 1550
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-nez v1, :cond_4

    new-instance v1, Landroid/widget/Editor$OptionWrapper;

    invoke-direct {v1, p0}, Landroid/widget/Editor$OptionWrapper;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    :cond_4
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$SelectionActionModeCallback;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/Editor$SelectionActionModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$SelectionActionModeCallback;

    :cond_5
    iget-object v1, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    iget-object v2, p0, Landroid/widget/Editor;->mSelectionActionModeCallback:Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/Editor$OptionWrapper;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    move-result v0

    goto :goto_0
.end method
