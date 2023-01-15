.class Lcom/eaglerex/mcpemodificator/fw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/m;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/mapmcmandoesminecraft;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/mapmcmandoesminecraft;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/fw;->a:Lcom/eaglerex/mcpemodificator/mapmcmandoesminecraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/fw;->a:Lcom/eaglerex/mcpemodificator/mapmcmandoesminecraft;

    iget-object v0, v0, Lcom/eaglerex/mcpemodificator/mapmcmandoesminecraft;->n:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
