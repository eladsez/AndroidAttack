.class Lcom/eaglerex/mcpemodificator/la;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/modsall;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/modsall;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/la;->a:Lcom/eaglerex/mcpemodificator/modsall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPSALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/la;->a:Lcom/eaglerex/mcpemodificator/modsall;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/modsall;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/la;->a:Lcom/eaglerex/mcpemodificator/modsall;

    iget-object v0, v0, Lcom/eaglerex/mcpemodificator/modsall;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/la;->a:Lcom/eaglerex/mcpemodificator/modsall;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/modsall;->finish()V

    return-void
.end method
