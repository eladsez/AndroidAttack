.class Lcom/eaglerex/mcpemodificator/jj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/moddenso;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/moddenso;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/jj;->a:Lcom/eaglerex/mcpemodificator/moddenso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAINACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/jj;->a:Lcom/eaglerex/mcpemodificator/moddenso;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/moddenso;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/jj;->a:Lcom/eaglerex/mcpemodificator/moddenso;

    iget-object v0, v0, Lcom/eaglerex/mcpemodificator/moddenso;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/jj;->a:Lcom/eaglerex/mcpemodificator/moddenso;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/moddenso;->finish()V

    return-void
.end method
