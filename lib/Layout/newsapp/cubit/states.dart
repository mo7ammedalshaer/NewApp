abstract class NewsStates{}
class NewsInitialState extends NewsStates{}
class NewsBottmNavState extends NewsStates{}
class NewsGetBusinessLoadingState extends NewsStates{}
class NewsBusinessSuccessState extends NewsStates{}
class NewsBusinessErorrerState extends NewsStates
{
  late final String error;
  NewsBusinessErorrerState(this.error);
}
class NewsGetSportsLoadingState extends NewsStates{}
class NewsSportsSuccessState extends NewsStates{}
class NewsSportsErorrerState extends NewsStates
{
  late final String error;
  NewsSportsErorrerState(this.error);
}

class NewsGetScienceLoadingState extends NewsStates{}
class NewsScienceSuccessState extends NewsStates{}
class NewsScienceErorrerState extends NewsStates
{
  late final String error;
  NewsScienceErorrerState(this.error);
}

class NewsGetSearchLoadingState extends NewsStates {}

class NewsGetSearchSuccessState extends NewsStates {}

class NewsGetSearchErrorState extends NewsStates
{
  final String error;

  NewsGetSearchErrorState(this.error);
}


