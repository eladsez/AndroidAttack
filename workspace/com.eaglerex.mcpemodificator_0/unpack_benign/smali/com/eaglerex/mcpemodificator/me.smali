.class Lcom/eaglerex/mcpemodificator/me;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/modsshow;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/modsshow;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/me;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/eaglerex/mcpemodificator/me;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    iget-object v2, v2, Lcom/eaglerex/mcpemodificator/modsshow;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/me;->a:Lcom/eaglerex/mcpemodificator/modsshow;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/modsshow;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
