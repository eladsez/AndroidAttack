.class Lcom/ievyhrdnoniovof/AdView$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ievyhrdnoniovof/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcom/ievyhrdnoniovof/AdView;


# direct methods
.method constructor <init>(Lcom/ievyhrdnoniovof/AdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/ievyhrdnoniovof/AdView;

    .prologue
    iput-object p1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->I(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->I(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdView$AdViewListener;->onExpandClose()Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    sget-object v2, Lcom/ievyhrdnoniovof/AdView$ViewState;->d:Lcom/ievyhrdnoniovof/AdView$ViewState;

    invoke-static {v1, v2}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Lcom/ievyhrdnoniovof/AdView$ViewState;)Lcom/ievyhrdnoniovof/AdView$ViewState;

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "resize_width"

    const-string v3, "resize_height"

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4\u001a-\u0017,\u0004m\u001c1\u001e.\u00125\u001a&\u0004m\u0015*\u0001&0+\u0012-\u0014&65\u0016-\u0007k\u0008c\u00007\u00127\u0016ySd\u0001&\u0000*\t&\u0017d_c\u0000*\t&Ic\u0008c\u0004*\u00177\u001byS"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "JJ"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "+\u0016*\u0014+\u0007yS"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u001b\u0017OQ"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->requestLayout()V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->I(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->I(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$AdViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ievyhrdnoniovof/AdView$AdViewListener;->onResize()Z

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/ievyhrdnoniovof/AdView$9;->k:[I

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdView;->F(Lcom/ievyhrdnoniovof/AdView;)Lcom/ievyhrdnoniovof/AdView$ViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ievyhrdnoniovof/AdView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdView;->C(Lcom/ievyhrdnoniovof/AdView;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0}, Lcom/ievyhrdnoniovof/AdView;->j()V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "4\u001a-\u0017,\u0004m\u001c1\u001e.\u00125\u001a&\u0004m\u0015*\u0001&0+\u0012-\u0014&65\u0016-\u0007k\u0008c\u00007\u00127\u0016ySd\u001b*\u0017\'\u0016-Tc\u000ejH"

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "\u001d\u000f\u0004\u0002\u0005\u0011D\t\u0018\u000b\u0007\u0007\u001c\u000f\u000f\u0011D\u0000\u0003\u0014\u000f%\u0002\u0007\u0004\u0001\u000f#\u001c\u0003\u0004\u0012B\u001dJ\u0015\u001e\u0007\u001e\u0003PFM\u0002\u000f\u0000\u000b\u0013\u0006\u0012MF\u0017OQ"

    invoke-static {v0}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v0, v5}, Lcom/ievyhrdnoniovof/AdView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-static {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    sget-object v1, Lcom/ievyhrdnoniovof/AdView$ViewState;->k:Lcom/ievyhrdnoniovof/AdView$ViewState;

    invoke-static {v0, v1}, Lcom/ievyhrdnoniovof/AdView;->l(Lcom/ievyhrdnoniovof/AdView;Lcom/ievyhrdnoniovof/AdView$ViewState;)Lcom/ievyhrdnoniovof/AdView$ViewState;

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->playAudioImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->playVideoImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0004*\u001d\'\u001c4],\u0001.\u001e\"\u0005*\u00164]%\u001a1\u0016\u0006\u00011\u001c165\u0016-\u0007kQ"

    invoke-static {v3}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DFFH"

    invoke-static {v2}, Lcom/ievyhrdnoniovof/AdController;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "aZ"

    invoke-static {v1}, Lcom/ievyhrdnoniovof/AdDefines;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ievyhrdnoniovof/AdView$2;->k:Lcom/ievyhrdnoniovof/AdView;

    invoke-virtual {v1, v0}, Lcom/ievyhrdnoniovof/AdView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
