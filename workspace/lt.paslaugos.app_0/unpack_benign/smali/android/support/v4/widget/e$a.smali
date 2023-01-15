.class Landroid/support/v4/widget/e$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/widget/e;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/e$a;->a:Landroid/support/v4/widget/e;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Landroid/support/v4/widget/e$a;->a:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->b()V

    return-void
.end method
