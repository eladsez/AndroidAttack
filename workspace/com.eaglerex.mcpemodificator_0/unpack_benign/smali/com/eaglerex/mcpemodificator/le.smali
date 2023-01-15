.class Lcom/eaglerex/mcpemodificator/le;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/modsbrowse;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/modsbrowse;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/le;->a:Lcom/eaglerex/mcpemodificator/modsbrowse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MODSALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/le;->a:Lcom/eaglerex/mcpemodificator/modsbrowse;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/modsbrowse;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
