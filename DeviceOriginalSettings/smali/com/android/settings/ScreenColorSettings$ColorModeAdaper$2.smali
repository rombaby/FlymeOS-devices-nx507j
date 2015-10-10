.class Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper$2;
.super Ljava/lang/Object;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper$2;->this$1:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 166
    .local v0, "mode":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper$2;->this$1:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->setScreenColorMode(I)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$100(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;I)V

    .line 167
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper$2;->this$1:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$ColorModeAdaper;->notifyDataSetChanged()V

    .line 168
    return-void
.end method
