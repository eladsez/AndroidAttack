.class Lcom/eaglerex/mcpemodificator/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/mapeaglerex;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/mapeaglerex;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/fa;->a:Lcom/eaglerex/mcpemodificator/mapeaglerex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MAPSCATEGORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/fa;->a:Lcom/eaglerex/mcpemodificator/mapeaglerex;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/mapeaglerex;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/fa;->a:Lcom/eaglerex/mcpemodificator/mapeaglerex;

    iget-object v0, v0, Lcom/eaglerex/mcpemodificator/mapeaglerex;->m:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/fa;->a:Lcom/eaglerex/mcpemodificator/mapeaglerex;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/mapeaglerex;->finish()V

    return-void
.end method
