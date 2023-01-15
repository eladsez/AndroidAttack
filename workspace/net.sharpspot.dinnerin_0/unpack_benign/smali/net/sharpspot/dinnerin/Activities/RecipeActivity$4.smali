.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$4;
.super Ljava/lang/Object;
.source "RecipeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sharpspot/dinnerin/Activities/RecipeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$4;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$4;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-virtual {v0, p1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->openContextMenu(Landroid/view/View;)V

    .line 353
    return-void
.end method
