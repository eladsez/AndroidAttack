.class Lanywheresoftware/b4a/keywords/Common$2;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/keywords/Common;->InputMultiList(Lanywheresoftware/b4a/objects/collections/List;Ljava/lang/String;Lanywheresoftware/b4a/BA;)Lanywheresoftware/b4a/objects/collections/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:Lanywheresoftware/b4a/objects/collections/List;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/collections/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/keywords/Common$2;->val$result:Lanywheresoftware/b4a/objects/collections/List;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 537
    if-eqz p3, :cond_0

    .line 538
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$2;->val$result:Lanywheresoftware/b4a/objects/collections/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/collections/List;->Add(Ljava/lang/Object;)V

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$2;->val$result:Lanywheresoftware/b4a/objects/collections/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanywheresoftware/b4a/objects/collections/List;->IndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 542
    .local v0, "i":I
    iget-object v1, p0, Lanywheresoftware/b4a/keywords/Common$2;->val$result:Lanywheresoftware/b4a/objects/collections/List;

    invoke-virtual {v1, v0}, Lanywheresoftware/b4a/objects/collections/List;->RemoveAt(I)V

    goto :goto_0
.end method
