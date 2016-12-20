library dartlero_example;

import 'package:dartlero/dartlero.dart';

part 'project_model.dart';
part 'project_entities.dart';

affiche(Project p) {
  p.display("Project");
}

contient(Project p) => p.name.contains("Design");

void main() {
  Projects projects = new Projects();
  Project design = new Project();
  design.name = 'Dartling Design';
  design.description =
      'Creating a model of Dartling concepts based on MagicBoxes.';
  projects.add(design);

  Project project = new Project();
  project.name = "First project";
  project.description = "Creating  my first project";
  print("${projects.add(project)}");
  projects.display("Display");

  projects.forEach((Project p) => affiche(p));

  // Is there any project name containing 
  bool b = projects.any((Project p) => contient(p));
  print(b);

  b = projects.every( (Project p) => contient(p));
  print(b);
}
