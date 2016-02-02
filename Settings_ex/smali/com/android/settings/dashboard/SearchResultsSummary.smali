.class public Lcom/android/settings_ex/dashboard/SearchResultsSummary;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C


# instance fields
.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->ELLIPSIS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 511
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 373
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 377
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 379
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 340
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 342
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 343
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 322
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 324
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 325
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 357
    const/4 v3, 0x0

    .line 367
    :goto_0
    return-object v3

    .line 359
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 361
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 362
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 367
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/search/Index;->addSavedQuery(Ljava/lang/String;)J

    .line 283
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 350
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    :cond_0
    return-void

    .line 277
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 332
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    :cond_0
    return-void

    .line 271
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 392
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0, v3}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 395
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 382
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 120
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 125
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 161
    const v1, 0x7f0400da

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 164
    const v1, 0x7f0f01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 166
    const v1, 0x7f0f01ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400db

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 228
    const v1, 0x7f0f01e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400dc

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 253
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 145
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 146
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 148
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 149
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 150
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 152
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 154
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 155
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iput-boolean v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 302
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 303
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 310
    :goto_0
    return v3

    .line 305
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 306
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 307
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 288
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSearchResults()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    .line 292
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 260
    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    .line 263
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearSuggestions()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearResults()V

    .line 140
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 267
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 315
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 316
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 317
    return-void
.end method
