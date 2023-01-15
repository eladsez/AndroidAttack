.class Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$1;
.super Ljava/lang/Object;
.source "NotesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

.field private final synthetic val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$1;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$1;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter$1;->val$noteListEntity:Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    .line 109
    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getIsSelected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->setIsSelected(Ljava/lang/Boolean;)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
