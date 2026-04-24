Criar um plano de estudos estruturado é a melhor estratégia para absorver o volume de conteúdo exigido pela certificação SAA-C03. Como a prova avalia cenários práticos e tem pesos diferentes por domínio, o plano abaixo foi desenhado para **8 semanas**, assumindo uma dedicação de cerca de 10 a 15 horas semanais (aproximadamente 1.5 a 2 horas por dia). 

Este plano prioriza os tópicos de maior peso e reserva tempo exclusivo para a prática com simulados, que é o grande segredo para a aprovação.

---

### **Semana 0: Preparação e Fundamentos**
Antes de mergulhar nos domínios, prepare seu ambiente e revise os conceitos básicos de nuvem.

* **Ação:** Crie uma conta no AWS Free Tier para praticar os laboratórios.
* **Leitura:** Leia a introdução do *AWS Well-Architected Framework*. Entenda os 6 pilares (focando especialmente em Segurança, Confiabilidade, Eficiência de Performance e Otimização de Custos).
* **Mentalidade:** Comece a treinar seu cérebro para pensar no "Por quê" usar um serviço, e não apenas "Como" ele funciona.

---

### **Fase 1: O Pilar Central (Semanas 1 e 2)**
**Domínio 1: Design de Arquiteturas Seguras (Peso: 30%)**
A AWS considera segurança a prioridade zero. Dedique mais tempo aqui, pois esses conceitos permeiam todos os outros domínios.

**Semana 1: Identidade e Acesso**
* **AWS IAM:** Entenda a diferença entre Usuários, Grupos, Roles (Funções) e Políticas. Pratique a criação de permissões de privilégio mínimo.
* **AWS Cognito:** Saiba quando usar User Pools (autenticação) vs. Identity Pools (autorização).
* **AWS Organizations:** Conceitos de gerenciamento multi-conta e SCPs (Service Control Policies).

**Semana 2: Segurança de Rede e Dados**
* **VPC (Virtual Private Cloud):** Este é o coração da prova. Aprenda a desenhar uma VPC do zero. Entenda Subnets Públicas vs. Privadas, Internet Gateways e NAT Gateways.
* **Firewalls:** Domine a diferença entre Security Groups (nível de instância/stateful) e NACLs (nível de subnet/stateless).
* **Proteção Adicional:** AWS WAF, AWS Shield (proteção DDoS) e criptografia com AWS KMS e ACM.

---

### **Fase 2: Mantendo Tudo no Ar (Semanas 3 e 4)**
**Domínio 2: Design de Arquiteturas Resilientes (Peso: 26%)**
O foco aqui é evitar pontos únicos de falha e garantir a recuperação rápida.

**Semana 3: Alta Disponibilidade e Escalabilidade**
* **Elastic Load Balancing (ELB):** Diferenças arquitetônicas entre ALB (Application - Camada 7), NLB (Network - Camada 4) e GWLB.
* **EC2 Auto Scaling:** Como configurar grupos de auto scaling baseados em métricas de CPU, rede ou agendamento.
* **Multi-AZ:** O conceito de espalhar recursos em múltiplas Zonas de Disponibilidade para tolerância a falhas.

**Semana 4: Roteamento e Recuperação de Desastres (DR)**
* **Amazon Route 53:** Entenda as políticas de roteamento (Simple, Failover, Geolocation, Latency, Weighted).
* **Estratégias de DR:** Conheça as estratégias clássicas (Backup/Restore, Pilot Light, Warm Standby, Multi-Site).
* **Backup:** Pratique o Amazon S3 Versioning, replicação entre regiões (CRR) e AWS Backup.

---

### **Fase 3: Escolhendo a Ferramenta Certa (Semanas 5 e 6)**
**Domínio 3: Design de Arquiteturas de Alta Performance (Peso: 24%)**
Aqui você deve parear o requisito de negócio com o serviço mais rápido e eficiente.

**Semana 5: Computação e Armazenamento**
* **Computação:** Quando usar instâncias EC2, quando migrar para Contêineres (ECS/EKS) e quando a resposta correta é Serverless (AWS Lambda).
* **Armazenamento de Blocos e Arquivos:** Compare EBS (SSD vs. HDD, IOPS) e EFS (compartilhamento de arquivos Linux).
* **Cache e CDN:** Redução de latência global usando Amazon CloudFront e alívio de banco de dados com Amazon ElastiCache (Redis/Memcached).

**Semana 6: Banco de Dados**
* **Relacional (SQL):** Amazon RDS e Amazon Aurora. Foco em Read Replicas (para performance) e Multi-AZ (para resiliência).
* **Não-Relacional (NoSQL):** Amazon DynamoDB. Entenda casos de uso de latência de milissegundos e escala massiva.

---

### **Fase 4: A Visão Financeira (Semana 7)**
**Domínio 4: Design de Arquiteturas com Otimização de Custos (Peso: 20%)**
As questões deste domínio geralmente incluem a restrição "most cost-effective" (solução mais barata/custo-benefício).

* **Modelos do EC2:** Diferencie instâncias On-Demand, Spot (para cargas de trabalho flexíveis/interrompíveis), Reserved e Savings Plans.
* **Tiers do Amazon S3:** Decore os ciclos de vida. S3 Standard $\rightarrow$ S3 Standard-IA (acesso infrequente) $\rightarrow$ S3 Glacier Flexible Retrieval / Deep Archive (arquivamento longo prazo).
* **Ferramentas de Custo:** Cost Explorer (análise histórica) e AWS Budgets (alertas futuros).

---

### **Fase 5: A Reta Final (Semana 8)**
**Revisão e Simulação**
Esta semana define a sua aprovação. A prova é longa e exige resistência mental.

1.  **Faça Simulados Completos:** Use plataformas recomendadas (Tutoriais do Jon Bonso, Udemy, Whizlabs). Simule o ambiente real: 130 minutos, sem interrupções.
2.  **Mapeie as Palavras-Chave:** Durante a correção, preste atenção em como os adjetivos mudam a resposta.
    * *Exemplo:* "Banco de dados relacional com a *menor carga operacional*" = Amazon Aurora Serverless ou Amazon RDS.
    * *Exemplo:* "Armazenar dados por 7 anos para compliance com o *menor custo*" = Amazon S3 Glacier Deep Archive.
3.  **Revise seus Erros:** Para cada questão errada no simulado, leia a documentação oficial da AWS ou o whitepaper correspondente para entender a lacuna de conhecimento.

### Resumo do Cronograma

| Semana | Foco Principal | Domínio Avaliado | Meta da Semana |
| :--- | :--- | :--- | :--- |
| 1 a 2 | Segurança, IAM, VPC, Criptografia | Domínio 1 (30%) | Desenhar uma rede VPC segura do zero. |
| 3 a 4 | Escalabilidade, ELB, Route 53, DR | Domínio 2 (26%) | Entender estratégias de failover e alta disponibilidade. |
| 5 a 6 | EC2, Lambda, Bancos de Dados, Cache | Domínio 3 (24%) | Diferenciar quando usar SQL vs NoSQL, EC2 vs Lambda. |
| 7 | Tiers do S3, Precificação EC2, Cost Explorer | Domínio 4 (20%) | Identificar a arquitetura mais barata para diferentes cenários. |
| 8 | Simulados, Revisão de Erros, Well-Architected | Todos | Atingir consistentemente $>75\%$ nos testes práticos. |