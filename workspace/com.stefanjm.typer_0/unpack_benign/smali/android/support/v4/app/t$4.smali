.class final Landroid/support/v4/app/t$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/t;->b(Landroid/support/v4/app/v;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/g/a;Landroid/support/v4/app/t$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/v;

.field final synthetic b:Landroid/support/v4/g/a;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Landroid/support/v4/app/t$a;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/support/v4/app/i;

.field final synthetic h:Landroid/support/v4/app/i;

.field final synthetic i:Z

.field final synthetic j:Ljava/util/ArrayList;

.field final synthetic k:Ljava/lang/Object;

.field final synthetic l:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/v;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/t$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/v;

    iput-object p2, p0, Landroid/support/v4/app/t$4;->b:Landroid/support/v4/g/a;

    iput-object p3, p0, Landroid/support/v4/app/t$4;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/t$4;->d:Landroid/support/v4/app/t$a;

    iput-object p5, p0, Landroid/support/v4/app/t$4;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/t$4;->f:Landroid/view/View;

    iput-object p7, p0, Landroid/support/v4/app/t$4;->g:Landroid/support/v4/app/i;

    iput-object p8, p0, Landroid/support/v4/app/t$4;->h:Landroid/support/v4/app/i;

    iput-boolean p9, p0, Landroid/support/v4/app/t$4;->i:Z

    iput-object p10, p0, Landroid/support/v4/app/t$4;->j:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/support/v4/app/t$4;->k:Ljava/lang/Object;

    iput-object p12, p0, Landroid/support/v4/app/t$4;->l:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/t$4;->b:Landroid/support/v4/g/a;

    iget-object v2, p0, Landroid/support/v4/app/t$4;->c:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/t$4;->d:Landroid/support/v4/app/t$a;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/v;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/t$a;)Landroid/support/v4/g/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/t$4;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/support/v4/app/t$4;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/t$4;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/t$4;->g:Landroid/support/v4/app/i;

    iget-object v2, p0, Landroid/support/v4/app/t$4;->h:Landroid/support/v4/app/i;

    iget-boolean v3, p0, Landroid/support/v4/app/t$4;->i:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;Z)V

    iget-object v1, p0, Landroid/support/v4/app/t$4;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/v;

    iget-object v2, p0, Landroid/support/v4/app/t$4;->c:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/t$4;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/t$4;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/v;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroid/support/v4/app/t$4;->d:Landroid/support/v4/app/t$a;

    iget-object v2, p0, Landroid/support/v4/app/t$4;->k:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/t$4;->i:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/t;->a(Landroid/support/v4/g/a;Landroid/support/v4/app/t$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/v;

    iget-object v2, p0, Landroid/support/v4/app/t$4;->l:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/v;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
