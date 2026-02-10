# 🚀 Marcelo Menezes - AWS Cloud Practitioner (Certificado) | Solutions Architect (em preparação)

> **Zootecnista transformado em Cloud Architect** | 19 anos de experiência em gestão pecuária aplicados à tecnologia | Criador de 3 plataformas SaaS em produção com clientes reais. Focado em migração para AWS, otimização de custos e arquitetura de soluções seguras e escaláveis.

---

## 👨‍💻 Sobre Mim

Sou Marcelo Menezes, brasileiro de Miguel Pereira/RJ. Após 19 anos gerenciando uma propriedade de 930 hectares com 1.200+ cabeças de gado, identifiquei a necessidade de ferramentas tecnológicas eficientes para o agronegócio — e isso me levou à tecnologia.

Hoje opero 3 plataformas SaaS em produção, todas rodando em uma única instância Oracle Cloud Always Free (ARM Ampere A1, 4 OCPU, 24GB RAM), com migração planejada para AWS Frankfurt.

Como faixa preta de Jiu-Jitsu com 32 anos de prática, também aplico disciplina e método no desenvolvimento de software.

### 🎯 O Que Me Diferencia

- **Experiência Real em Produção**: Opero 3 SaaS com clientes reais pagantes, 12 containers Docker simultâneos
- **Visão de Negócio + Técnica**: Entendo os desafios empresariais e transformo em soluções tecnológicas
- **Da Fazenda ao Cloud**: Perspectiva única de quem resolveu problemas reais do mundo físico com tecnologia

---

## 💼 Projetos em Produção

### 1. 🥋 ProDojo - SaaS de Gestão de Academias de Jiu-Jitsu

**Status: Em produção** | [prodojo.mbam.com.br](https://prodojo.mbam.com.br)

Sistema completo de gestão para academias de artes marciais com foco em fidelização de alunos através de graduação transparente baseada em métricas objetivas.

**Stack Técnico:**

- **Frontend**: Next.js 16 + React 19 + TypeScript + Tailwind CSS 4
- **Backend**: Next.js API Routes + Prisma ORM 5
- **Banco**: PostgreSQL 16 (containerizado) — 22 tabelas
- **Auth**: NextAuth.js com roles (SUPERADMIN, ADMIN, STUDENT)
- **Mobile**: Capacitor (APK Android + PWA iOS)
- **Notificações**: Web Push (web-push) + Service Worker
- **Queries**: TanStack React Query

**Funcionalidades:**

- Gestão multi-tenant (múltiplas academias)
- Sistema de famílias com responsável financeiro
- Geração automática de mensalidades com desconto por faixa etária
- Controle de frequência e graduação por assiduidade
- Termos de responsabilidade com assinatura telemática (IP, user agent, hash SHA-256)
- Painel de inspetor com audit log completo
- Notificações push para alunos
- App Android (Capacitor) + PWA

---

### 2. 🐄 AgroMM - SaaS de Gestão Pecuária

**Status: Em produção** | [agromm.mbam.com.br](https://agromm.mbam.com.br)

Plataforma SaaS B2B de gestão pecuária de ponta a ponta.

**Stack Técnico:**

- **Frontend**: React 19 + Vite + MUI (Material UI) + React Router + i18next (multi-idioma)
- **Backend**: FastAPI (Python) + SQLAlchemy + Uvicorn (4 workers)
- **Banco**: PostgreSQL 16 (containerizado) — 45 tabelas
- **Auth**: JWT (python-jose + passlib/bcrypt)

**Funcionalidades:**

- Gestão completa do rebanho (nascimentos, vendas, sanidade)
- Controle financeiro integrado
- Relatórios e dashboards
- Sistema de alertas automáticos (vacinas, reprodução)
- Interface responsiva para uso no campo

---

### 3. 🔒 Papo Reto - Plataforma de Comunicação Sigilosa

**Status: Em produção** | [papo.mbam.com.br](https://papo.mbam.com.br)

Plataforma de mensagens seguras para profissionais (médicos, advogados) e vítimas de assédio, baseada no protocolo Matrix.

**Stack Técnico:**

- **Servidor Matrix**: Synapse (Python) — protocolo federado de mensagens
- **Cliente Web**: Element Web (React)
- **Admin Panel**: Next.js 14 + React 18 + Express 5
- **Banco**: PostgreSQL 16 (containerizado) — 177 tabelas (schema Matrix)
- **Auth**: JWT + bcryptjs

**Funcionalidades:**

- Criptografia ponta-a-ponta (protocolo Matrix/Olm)
- Multi-tenant com isolamento total entre salas
- Painel administrativo customizado (gestão de usuários, salas, QR codes)
- Sem possibilidade de backup externo ou vazamento
- Super admin gerencia tudo sem entrar nas salas dos tenants

---

## 🏗️ Infraestrutura Atual

```text
Servidor: Oracle Cloud Always Free - ARM Ampere A1
├── 4 OCPU | 24GB RAM | 200GB SSD
├── Ubuntu 24.04 LTS (aarch64)
├── Docker 29.1 + Docker Compose
├── Nginx 1.24 (reverse proxy)
└── 12 containers simultâneos

Rede:
├── Cloudflare (DNS + proxy + SSL)
├── OCI Network Load Balancer (Layer 4, free tier)
└── Domínios: *.mbam.com.br

Containers em produção:
├── prodojo-app (Next.js 16) → porta 3002
├── prodojo-db (PostgreSQL 16)
├── papo-synapse (Matrix Synapse) → porta 8008
├── papo-admin (Next.js 14) → porta 3010
├── papo-db (PostgreSQL 16)
├── agromm-frontend (React/Vite) → porta 8080
├── agromm-backend (FastAPI) → porta 8000
├── agromm-db (PostgreSQL 16)
├── n8n-app (automação) → porta 5678
├── n8n-db (PostgreSQL 16)
├── waha (WhatsApp API) → porta 3000
└── waha2 (WhatsApp API) → porta 3001

AWS (complementar):
├── S3: prodojo-uploads (exames, documentos, APK)
├── SSM Parameter Store: secrets de produção
└── Migração planejada: AWS Frankfurt (completa)
```

---

## 🛠️ Stack Tecnológico

### ☁️ Cloud & Infraestrutura

- **Oracle Cloud**: Compute (ARM), VCN, NLB, NAT Gateway, Bastion
- **AWS**: S3, SSM Parameter Store, IAM (em uso), EC2/RDS/CloudFront (migração planejada)
- **Cloudflare**: DNS, proxy, SSL, WAF
- **Docker & Docker Compose**: 12 containers em produção
- **Nginx**: Reverse proxy com múltiplos virtual hosts

### 💻 Desenvolvimento (com auxílio de IA)

**Backend:**

- Python (FastAPI, SQLAlchemy, Uvicorn)
- Node.js / Next.js (API Routes, Express)
- Prisma ORM
- API RESTful

**Frontend:**

- React 19 + TypeScript
- Next.js 14/16
- Tailwind CSS 4
- MUI (Material UI)
- Vite
- Capacitor (mobile)

**Banco de Dados:**

- PostgreSQL 16 (5 instâncias em produção)

**Automação:**

- n8n (workflows de onboarding e notificações)
- WAHA (WhatsApp Business API)
- Web Push notifications

---

## 🎓 Certificações & Educação

- [x] **AWS Certified Cloud Practitioner**
- [ ] AWS Certified Solutions Architect - Associate (estudando)
- **Zootecnia** - Universidade Federal Rural do Rio de Janeiro (UFRRJ)

---

## 🐄 Experiência Anterior: Gestão Pecuária (2000-2019)

- Gestão de 930 hectares + 1.200 cabeças de gado
- Implementação de sistemas integrados lavoura-pecuária-floresta (ILPF)
- Aumento de 35% na produtividade através de gestão baseada em dados
- Rastreabilidade completa do rebanho

---

## 💡 Serviços Oferecidos

- **Cloud Architecture & Migration**: Planejamento e execução de migração para AWS
- **DevOps**: Docker, CI/CD, Infrastructure as Code
- **SaaS Development**: Arquitetura multi-tenant, APIs, frontend moderno
- **Consultoria Técnica**: Otimização de custos, performance, segurança

---

## 📫 Contato

- **GitHub**: [github.com/Mfdemenezes](https://github.com/Mfdemenezes)
- **Email**: [contato@mfdemenezes.com.br](mailto:contato@mfdemenezes.com.br)
- **Disponibilidade**: Projetos freelance e consultoria (remoto, GMT-3)
- **Idiomas**: Português (nativo), Inglês (intermediário), Espanhol (intermediário)

---

`#AWS` `#CloudArchitecture` `#DevOps` `#SaaS` `#Python` `#React` `#NextJS` `#TypeScript` `#Docker` `#PostgreSQL` `#FastAPI` `#Matrix` `#Agribusiness`
