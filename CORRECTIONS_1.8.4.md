# Scan 1.8.4 — corrections de fiabilité (première passe)

## Modifications
- Les timeouts, refus TCP, erreurs DNS et erreurs TLS sont classés comme résultats indéterminés ; ils ne prouvent pas à eux seuls une protection ni une vulnérabilité.
- Le test HTTP→HTTPS sans redirection confirmée est un avertissement, pas une vulnérabilité critique automatique.
- Les tests d'administration distinguent les refus HTTP 401/403 des réponses 429/503 de limitation ou d'indisponibilité.
- Une vérification de propriété non validée bloque le test d'administration sans créer de constat critique.
- Le score est calculé sur les constats évaluables : conforme=100, avertissement=60, critique=0. Les constats indéterminés sont exclus ; aucun résultat exploitable donne 0 plutôt qu'un faux 100.

## Vérification
- Contrôle statique des fichiers modifiés effectué.
- Les tests Gradle n'ont pas pu démarrer : le wrapper doit télécharger Gradle 9.3.1 depuis services.gradle.org, inaccessible dans cet environnement (UnknownHostException).
- Aucune compilation ni exécution Android n'est donc revendiquée.

## Limites restantes
Cette passe ne certifie pas l'application. Il reste à vérifier notamment la validation effective de propriété du domaine, les autres étapes d'audit, les rapports UI et le comportement sur des cibles de test autorisées.
