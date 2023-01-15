.class Lcom/eaglerex/mcpemodificator/ls;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/o;


# instance fields
.field final synthetic a:Lcom/eaglerex/mcpemodificator/modsinop;


# direct methods
.method constructor <init>(Lcom/eaglerex/mcpemodificator/modsinop;)V
    .locals 0

    iput-object p1, p0, Lcom/eaglerex/mcpemodificator/ls;->a:Lcom/eaglerex/mcpemodificator/modsinop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/eaglerex/mcpemodificator/ls;->a:Lcom/eaglerex/mcpemodificator/modsinop;

    iget-object v0, v0, Lcom/eaglerex/mcpemodificator/modsinop;->m:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
