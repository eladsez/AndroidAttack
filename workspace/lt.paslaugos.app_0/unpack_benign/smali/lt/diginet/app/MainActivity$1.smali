.class Llt/diginet/app/MainActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llt/diginet/app/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llt/diginet/app/MainActivity;


# direct methods
.method constructor <init>(Llt/diginet/app/MainActivity;)V
    .locals 0

    iput-object p1, p0, Llt/diginet/app/MainActivity$1;->a:Llt/diginet/app/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Llt/diginet/app/MainActivity$1;->a:Llt/diginet/app/MainActivity;

    invoke-virtual {p1}, Llt/diginet/app/MainActivity;->finish()V

    return-void
.end method
