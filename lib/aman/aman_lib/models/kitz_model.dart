class KitzModel {
  static final items4 = [
    Item4(
      name: "GitPod",
      des:
          "Gitpod is an open-source Kubernetes application for ready-to-code developer environments that spins up fresh, automated dev environments for each task, in the cloud, in seconds. It enables you to describe your dev environment as code and start instant, remote and cloud-based developer environments directly from your browser or your Desktop IDE.\n\nTightly integrated with GitLab, GitHub, and Bitbucket, Gitpod automatically and continuously prebuilds dev environments for all your branches. As a result, team members can instantly start coding with fresh, ephemeral, and fully-compiled dev environments - no matter if you are building a new feature, want to fix a bug, or do a code review\n\nFeatures\n\n"
          "*"
          " Dev environments as code - Gitpod applies lessons learned from infrastructure-as-code. Spinning up dev environments is easily repeatable and reproducible empowering you to automate, version-control, and share dev environments across your team.\n\n"
          "*"
          " Prebuilt dev environments - Gitpod continuously prebuilds all your git branches similar to a CI server. Control how Gitpod pre-configures and initializes environments before you even start a workspace through init commands in your .gitpod.yml.\n\n"
          "*"
          " Integrated Docker build - Gitpod instantly starts a container in the cloud based on your Docker image. Tools that are required for your project are easy to install and configure..",
      image:
          "https://dka575ofm4ao0.cloudfront.net/pages-transactional_logos/retina/237658/02205996e1e84567d4fe3458ef0c01ce895afcf6.png",
    ),
    Item4(
      name: "GitHub",
      des:
          "GitHub is a web-based version-control and collaboration platform for software developers. Microsoft, the biggest single contributor to GitHub, initiated an acquisition of GitHub for \$7.5 billion in June, 2018. GitHub, which is delivered through a software-as-a-service (SaaS) business model, was started in 2008 and was founded on Git, an open source code management system created by Linus Torvalds to make software builds faster.\n\n Git is used to store the source code for a project and track the complete history of all changes to that code. It allows developers to collaborate on a project more effectively by providing tools for managing possibly conflicting changes from multiple developers. GitHub allows developers to change, adapt and improve software from its public repositories for free, but it charges for private repositories, offering various paid plans. Each public or private repository contains all of a project's files, as well as each file's revision history. Repositories can have multiple collaborators and can be either public or private.\n\nGitHub facilitates social coding by providing a web interface to the Git code repository and management tools for collaboration. GitHub can be thought of as a serious social networking site for software developers. Members can follow each other, rate each other's work, receive updates for specific projects and communicate publicly or privately. ",
      image: "https://foundations.projectpythia.org/_images/GitHub-logo.png",
    ),
  ];
}

class Item4 {
  final String name;
  final String image;
  final String des;

  Item4({required this.name, required this.image, required this.des});
}
