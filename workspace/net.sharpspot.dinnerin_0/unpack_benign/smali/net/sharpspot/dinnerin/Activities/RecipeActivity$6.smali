.class Lnet/sharpspot/dinnerin/Activities/RecipeActivity$6;
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$6;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1075
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/RecipeActivity$6;->this$0:Lnet/sharpspot/dinnerin/Activities/RecipeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lnet/sharpspot/dinnerin/Activities/RecipeActivity;->access$5(Lnet/sharpspot/dinnerin/Activities/RecipeActivity;I)V

    .line 1076
    return-void
.end method
