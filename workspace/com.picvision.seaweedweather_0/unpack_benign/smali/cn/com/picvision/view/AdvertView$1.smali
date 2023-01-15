.class Lcn/com/picvision/view/AdvertView$1;
.super Landroid/os/Handler;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/picvision/view/AdvertView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final HIDE:I = 0x1

.field private static final INIT:I = 0x0

.field private static final PAUSE:I = 0x2

.field private static final SHOW:I = 0x3

.field private static final type:I = 0x1


# instance fields
.field private hideAnim:Landroid/view/animation/TranslateAnimation;

.field private hideAnim1:Landroid/view/animation/TranslateAnimation;

.field private pauseAnim:Landroid/view/animation/TranslateAnimation;

.field private pauseAnim1:Landroid/view/animation/TranslateAnimation;

.field private pauseAnim2:Landroid/view/animation/TranslateAnimation;

.field private showAnim:Landroid/view/animation/TranslateAnimation;

.field private showAnim1:Landroid/view/animation/TranslateAnimation;

.field final synthetic this$0:Lcn/com/picvision/view/AdvertView;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    .line 191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim1:Landroid/view/animation/TranslateAnimation;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 204
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 203
    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim:Landroid/view/animation/TranslateAnimation;

    .line 205
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 209
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 208
    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim:Landroid/view/animation/TranslateAnimation;

    .line 210
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_2

    .line 214
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 215
    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 214
    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim:Landroid/view/animation/TranslateAnimation;

    .line 216
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim1:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_3

    .line 220
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 221
    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 220
    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim1:Landroid/view/animation/TranslateAnimation;

    .line 222
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim1:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim1:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_4

    .line 225
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    .line 226
    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 225
    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim1:Landroid/view/animation/TranslateAnimation;

    .line 227
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim1:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 229
    :cond_4
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim1:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_5

    .line 230
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    .line 231
    const/4 v7, 0x1

    const/high16 v8, -0x40000000    # -2.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 230
    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim1:Landroid/view/animation/TranslateAnimation;

    .line 232
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim1:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 234
    :cond_5
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim2:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_6

    .line 235
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 236
    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 235
    iput-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim2:Landroid/view/animation/TranslateAnimation;

    .line 237
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim2:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 239
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 240
    .local v9, "data":Landroid/os/Bundle;
    if-eqz v9, :cond_8

    .line 241
    const-string v0, "one"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "one"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_7
    const-string v0, "two"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 245
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "two"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 251
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim1:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim1:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->pauseAnim2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$1(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->hideAnim1:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    iget-object v0, p0, Lcn/com/picvision/view/AdvertView$1;->this$0:Lcn/com/picvision/view/AdvertView;

    invoke-static {v0}, Lcn/com/picvision/view/AdvertView;->access$0(Lcn/com/picvision/view/AdvertView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$1;->showAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
