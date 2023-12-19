.class public Lcom/android/amomin1gofish/Utilities/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readCardsFromJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/amomin1gofish/Models/CardModel;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v0, "cardList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/amomin1gofish/Models/CardModel;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 22
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    :try_start_9
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 23
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 24
    .local v3, "reader":Ljava/io/InputStreamReader;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    .local v4, "gson":Lcom/google/gson/Gson;
    new-instance v5, Lcom/android/amomin1gofish/Utilities/JsonReader$1;

    invoke-direct {v5}, Lcom/android/amomin1gofish/Utilities/JsonReader$1;-><init>()V

    invoke-virtual {v5}, Lcom/android/amomin1gofish/Utilities/JsonReader$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 27
    .local v5, "listType":Ljava/lang/reflect/Type;
    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_26} :catch_28

    move-object v0, v6

    .line 31
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "listType":Ljava/lang/reflect/Type;
    goto :goto_2c

    .line 29
    :catch_28
    move-exception v2

    .line 30
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2c
    return-object v0
.end method
