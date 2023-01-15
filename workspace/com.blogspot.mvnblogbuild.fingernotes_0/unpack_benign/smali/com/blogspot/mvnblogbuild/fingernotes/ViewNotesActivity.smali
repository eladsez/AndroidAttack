.class public Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;
.super Landroid/app/Activity;
.source "ViewNotesActivity.java"


# instance fields
.field private currentPage:I

.field private final me:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object p0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->me:Landroid/app/Activity;

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->currentPage:I

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$1(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->currentPage:I

    return-void
.end method

.method static synthetic access$2(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->fillNotesList()V

    return-void
.end method

.method static synthetic access$3(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->me:Landroid/app/Activity;

    return-object v0
.end method

.method private fillNotesList()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 31
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v11

    .line 32
    .local v11, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getInstance(Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;)Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;

    move-result-object v0

    .line 33
    .local v0, "appSettings":Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;
    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->getDBConnector()Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;

    move-result-object v1

    .line 35
    .local v1, "dbConnector":Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;
    invoke-virtual {v1}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->countNotes()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 36
    .local v9, "totalNotes":I
    sget-object v12, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    div-int v10, v9, v12

    .line 38
    .local v10, "totalPages":I
    sget-object v12, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int/2addr v12, v10

    if-ge v12, v9, :cond_0

    .line 39
    add-int/lit8 v10, v10, 0x1

    .line 42
    :cond_0
    iget v12, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->currentPage:I

    add-int/lit8 v12, v12, -0x1

    sget-object v13, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    mul-int v6, v12, v13

    .line 43
    .local v6, "offsetRow":I
    sget-object v12, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 45
    .local v2, "limitRow":I
    const v12, 0x7f0a001e

    invoke-virtual {p0, v12}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 47
    .local v3, "nextBtn":Landroid/widget/Button;
    const v12, 0x7f0a0020

    invoke-virtual {p0, v12}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 48
    .local v5, "notesListView":Landroid/widget/ListView;
    invoke-virtual {v1, v6, v2}, Lcom/blogspot/mvnblogbuild/fingernotes/utils/DBConnector;->loadNotes(II)Ljava/util/List;

    move-result-object v4

    .line 49
    .local v4, "notesList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;>;"
    move-object v8, v4

    .line 50
    .local v8, "resultNotesList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/mvnblogbuild/fingernotes/controls/NoteListEntity;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    sget-object v13, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v12, v13, :cond_2

    .line 51
    sget-object v12, Lcom/blogspot/mvnblogbuild/fingernotes/utils/AppSettings;->MAX_ENTITY_OF_NOTES:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v4, v14, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 52
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    :goto_0
    invoke-virtual {v11, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->setNotesList(Ljava/util/List;)V

    .line 57
    new-instance v12, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;

    iget-object v13, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->me:Landroid/app/Activity;

    invoke-direct {v12, v13, v8}, Lcom/blogspot/mvnblogbuild/fingernotes/controls/NotesListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v5, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    const v12, 0x7f0a001d

    invoke-virtual {p0, v12}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 60
    .local v7, "pageNum":Landroid/widget/TextView;
    if-nez v10, :cond_1

    .line 61
    iput v14, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->currentPage:I

    .line 63
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->currentPage:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void

    .line 54
    .end local v7    # "pageNum":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v5, 0x7f030005

    invoke-virtual {p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->setContentView(I)V

    .line 72
    invoke-static {}, Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;->getInstance()Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;

    move-result-object v4

    .line 74
    .local v4, "userProfile":Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;
    invoke-direct {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->fillNotesList()V

    .line 76
    const v5, 0x7f0a001c

    invoke-virtual {p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 77
    .local v3, "prevBtn":Landroid/widget/Button;
    const v5, 0x7f0a001e

    invoke-virtual {p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 78
    .local v2, "nextBtn":Landroid/widget/Button;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    new-instance v5, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$1;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v5, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;

    invoke-direct {v5, p0, v3}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$2;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v5, 0x7f0a0022

    invoke-virtual {p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 101
    .local v0, "cancelBtn":Landroid/widget/Button;
    new-instance v5, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$3;

    invoke-direct {v5, p0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$3;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v5, 0x7f0a0021

    invoke-virtual {p0, v5}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 110
    .local v1, "deleteBtn":Landroid/widget/Button;
    new-instance v5, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;

    invoke-direct {v5, p0, v4}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity$4;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;Lcom/blogspot/mvnblogbuild/fingernotes/currentuser/UserProfile;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/blogspot/mvnblogbuild/fingernotes/ViewNotesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 159
    const/4 v0, 0x1

    return v0
.end method
