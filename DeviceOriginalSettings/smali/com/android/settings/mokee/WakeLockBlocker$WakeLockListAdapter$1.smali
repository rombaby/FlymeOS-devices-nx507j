.class Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;
.super Ljava/lang/Object;
.source "WakeLockBlocker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

.field final synthetic val$checkedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;Landroid/widget/CheckedTextView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;->this$1:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 97
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;->this$1:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    # getter for: Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->access$200(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;->val$checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 99
    return-void

    .line 96
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
