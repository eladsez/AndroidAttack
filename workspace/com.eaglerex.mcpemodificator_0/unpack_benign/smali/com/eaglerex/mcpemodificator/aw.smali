.class Lcom/eaglerex/mcpemodificator/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/mapbadass;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/mapbadass;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/aw;->a:Lcom/eaglerex/mcpemodificator/mapbadass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eaglerex.mcpemodificator.SENDMOD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eaglerex/mcpemodificator/aw;->a:Lcom/eaglerex/mcpemodificator/mapbadass;

    invoke-virtual {v1, v0}, Lcom/eaglerex/mcpemodificator/mapbadass;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/aw;->a:Lcom/eaglerex/mcpemodificator/mapbadass;

    invoke-virtual {v0}, Lcom/eaglerex/mcpemodificator/mapbadass;->finish()V

    return-void
.end method
