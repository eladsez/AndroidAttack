.class Lcom/eaglerex/mcpemodificator/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/MainActivity;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/n;->a:Lcom/eaglerex/mcpemodificator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.MODCREATORS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/n;->a:Lcom/eaglerex/mcpemodificator/MainActivity;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/n;->a:Lcom/eaglerex/mcpemodificator/MainActivity;

    iget-object v0, v0, Lcom/eaglerex/mcpemodificator/MainActivity;->d:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b()V

    return-void
.end method