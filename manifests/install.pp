class pirum::install inherits pirum {
  package { 'pirum':
    name     => 'pear.pirum-project.org/Pirum',
    provider => 'pear'
  }
}
