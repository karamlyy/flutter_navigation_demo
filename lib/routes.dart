enum Routes {
  onboarding(path: '/onboarding'),
  login(path: '/login'),
  home(path: '/home');

  const Routes({required this.path});
  final String path;
}
