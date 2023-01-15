.class Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;
.super Ljava/lang/Object;
.source "ViewNotesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;

.field private final synthetic val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;->this$1:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;

    iput-object p2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;->val$userProfile:Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    invoke-virtual {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getNotesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;->this$1:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;)Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$1(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;I)V

    .line 139
    iget-object v2, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;->this$1:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;)Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$2(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)V

    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    return-void

    .line 126
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;

    .line 127
    .local v1, "noteListEntity":Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;
    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getIsSelected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v0

    .line 131
    .local v0, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    iget-object v3, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4$1;->this$1:Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;

    invoke-static {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;->access$0(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;)Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->access$3(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/IOUtils;->deleteFile(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    move-result-object v3

    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;->getNoteId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->delete(I)V

    goto :goto_0
.end method
