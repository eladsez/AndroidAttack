.class Landroid/support/v7/internal/widget/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/t;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/t;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/t;Landroid/support/v7/internal/widget/u;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/support/v7/internal/widget/t;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/support/v7/internal/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/t;->e()V

    return-void
.end method
