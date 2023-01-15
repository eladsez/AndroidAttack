.class Lcom/github/angads25/filepicker/d/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/angads25/filepicker/d/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/angads25/filepicker/d/a;


# direct methods
.method constructor <init>(Lcom/github/angads25/filepicker/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/angads25/filepicker/d/a$2;->a:Lcom/github/angads25/filepicker/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/github/angads25/filepicker/d/a$2;->a:Lcom/github/angads25/filepicker/d/a;

    invoke-virtual {p1}, Lcom/github/angads25/filepicker/d/a;->dismiss()V

    return-void
.end method
