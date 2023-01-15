.class Lcn/com/picvision/view/AdvertView$3$4$1$1;
.super Ljava/lang/Thread;
.source "AdvertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/picvision/view/AdvertView$3$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcn/com/picvision/view/AdvertView$3$4$1;


# direct methods
.method constructor <init>(Lcn/com/picvision/view/AdvertView$3$4$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/com/picvision/view/AdvertView$3$4$1$1;->this$3:Lcn/com/picvision/view/AdvertView$3$4$1;

    .line 682
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 684
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$3$4$1$1;->this$3:Lcn/com/picvision/view/AdvertView$3$4$1;

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3$4$1;->access$0(Lcn/com/picvision/view/AdvertView$3$4$1;)Lcn/com/picvision/view/AdvertView$3$4;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3$4;->access$0(Lcn/com/picvision/view/AdvertView$3$4;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView;->access$12(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Params;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/picvision/model/Params;->isTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$3$4$1$1;->this$3:Lcn/com/picvision/view/AdvertView$3$4$1;

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3$4$1;->access$0(Lcn/com/picvision/view/AdvertView$3$4$1;)Lcn/com/picvision/view/AdvertView$3$4;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3$4;->access$0(Lcn/com/picvision/view/AdvertView$3$4;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/com/picvision/view/AdvertView;->access$27(Lcn/com/picvision/view/AdvertView;I)V

    .line 687
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 688
    const-string v1, "android.intent.action.VIEW"

    .line 689
    iget-object v2, p0, Lcn/com/picvision/view/AdvertView$3$4$1$1;->this$3:Lcn/com/picvision/view/AdvertView$3$4$1;

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$4$1;->access$0(Lcn/com/picvision/view/AdvertView$3$4$1;)Lcn/com/picvision/view/AdvertView$3$4;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3$4;->access$0(Lcn/com/picvision/view/AdvertView$3$4;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v2

    invoke-static {v2}, Lcn/com/picvision/view/AdvertView;->access$6(Lcn/com/picvision/view/AdvertView;)Lcn/com/picvision/model/Config;

    move-result-object v2

    .line 690
    invoke-virtual {v2}, Lcn/com/picvision/model/Config;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 687
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcn/com/picvision/view/AdvertView$3$4$1$1;->this$3:Lcn/com/picvision/view/AdvertView$3$4$1;

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3$4$1;->access$0(Lcn/com/picvision/view/AdvertView$3$4$1;)Lcn/com/picvision/view/AdvertView$3$4;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3$4;->access$0(Lcn/com/picvision/view/AdvertView$3$4;)Lcn/com/picvision/view/AdvertView$3;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView$3;->access$0(Lcn/com/picvision/view/AdvertView$3;)Lcn/com/picvision/view/AdvertView;

    move-result-object v1

    invoke-static {v1}, Lcn/com/picvision/view/AdvertView;->access$8(Lcn/com/picvision/view/AdvertView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 692
    return-void
.end method
