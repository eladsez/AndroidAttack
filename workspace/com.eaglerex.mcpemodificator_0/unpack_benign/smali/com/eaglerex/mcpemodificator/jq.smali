.class Lcom/eaglerex/mcpemodificator/jq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/m;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/modeaglerex;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/modeaglerex;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/jq;->a:Lcom/eaglerex/mcpemodificator/modeaglerex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/jq;->a:Lcom/eaglerex/mcpemodificator/modeaglerex;

    iget-object v0, v0, Lcom/eaglerex/mcpemodificator/modeaglerex;->n:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method