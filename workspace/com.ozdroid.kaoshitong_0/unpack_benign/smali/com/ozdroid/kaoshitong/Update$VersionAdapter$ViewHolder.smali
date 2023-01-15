.class Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "Update.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ozdroid/kaoshitong/Update$VersionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field detail:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field progress:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

.field update:Landroid/widget/Button;

.field version:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ozdroid/kaoshitong/Update$VersionAdapter;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/ozdroid/kaoshitong/Update$VersionAdapter$ViewHolder;->this$1:Lcom/ozdroid/kaoshitong/Update$VersionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
