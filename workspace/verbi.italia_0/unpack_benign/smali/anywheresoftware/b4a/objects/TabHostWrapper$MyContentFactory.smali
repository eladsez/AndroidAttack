.class Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;
.super Ljava/lang/Object;
.source "TabHostWrapper.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanywheresoftware/b4a/objects/TabHostWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyContentFactory"
.end annotation


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;->view:Landroid/view/View;

    .line 185
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lanywheresoftware/b4a/objects/TabHostWrapper$MyContentFactory;->view:Landroid/view/View;

    return-object v0
.end method
