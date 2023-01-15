.class Lcom/eaglerex/mcpemodificator/jz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/modeaglerex;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/jz;->a:Lcom/eaglerex/mcpemodificator/modeaglerex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.SENDMOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/jz;->a:Lcom/eaglerex/mcpemodificator/modeaglerex;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/jz;->a:Lcom/eaglerex/mcpemodificator/modeaglerex;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/modeaglerex;->finish()V

    return-void
.end method
