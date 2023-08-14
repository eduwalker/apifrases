--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: frases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.frases (
    id_frase integer NOT NULL,
    frase character varying(250) NOT NULL
);


ALTER TABLE public.frases OWNER TO postgres;

--
-- Name: frases_id_frase_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.frases_id_frase_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.frases_id_frase_seq OWNER TO postgres;

--
-- Name: frases_id_frase_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.frases_id_frase_seq OWNED BY public.frases.id_frase;


--
-- Name: frases id_frase; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.frases ALTER COLUMN id_frase SET DEFAULT nextval('public.frases_id_frase_seq'::regclass);


--
-- Data for Name: frases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.frases (id_frase, frase) FROM stdin;
1	Parabéns! Você é tão produtivo quanto uma lesma em câmera lenta.
2	Lembre-se, mesmo que tudo pareça dar errado, você ainda pode culpar a má configuração do universo.
3	Seus erros são tão raros quanto um unicórnio dançando salsa.
4	Você é tão eficiente quanto um navegador sem conexão à internet.
5	Acredite em si mesmo, mesmo que ninguém mais acredite, porque precisamos de mais pessoas assim no mundo.
6	Nunca desista! O fracasso é apenas mais uma oportunidade para você cometer os mesmos erros com mais determinação.
7	Não se preocupe com os haters, eles só invejam a sua habilidade em procrastinar.
8	Você é a prova viva de que a perfeição é superestimada.
9	Não se preocupe em falhar, você é um especialista nisso!
10	Continue assim, suas habilidades sociais são tão incríveis quanto as de um caracol.
11	Seu potencial é tão grande quanto o trânsito numa sexta-feira à noite.
12	Acredite no seu potencial, mesmo que ninguém mais acredite que ele exista.
13	Lembre-se sempre: você é único, assim como todos os outros.
14	Nunca subestime sua capacidade de encontrar problemas onde não existem.
15	Você é tão organizado quanto um armário de roupas de um adolescente.
16	A vida é cheia de obstáculos, mas você é um especialista em tropeçar neles.
17	Seu otimismo é contagiante, assim como uma gripe no inverno.
18	Continue assim, sua paciência é tão grande quanto um vídeo carregando na internet discada.
19	Não se preocupe com os críticos, eles só estão com inveja da sua habilidade em ignorá-los.
20	Lembre-se: os sonhos podem se tornar realidade, desde que sejam extremamente realistas.
21	Você é tão bom em resolver problemas quanto uma girafa jogando basquete.
22	Continue assim, suas habilidades multitarefas são tão boas quanto um peixe andando de bicicleta.
23	Seja sempre você mesmo, a menos que você possa ser um unicórnio. Então, seja um unicórnio.
24	Acredite em si mesmo, você é capaz de grandes conquistas.
25	Seja a mudança que você deseja ver no mundo.
26	A persistência é o caminho do êxito.
27	Nada é impossível para aquele que persiste.
28	A cada novo dia, novas oportunidades surgem.
29	Não tenha medo de tentar algo novo.
30	O sucesso vem para aqueles que não desistem.
31	A vida é curta, aproveite cada momento.
32	Acredite no seu potencial e vá em frente.
33	Você é capaz de superar qualquer desafio.
34	O otimismo é a chave para alcançar seus objetivos.
35	Cada passo é importante para alcançar seus sonhos.
36	Nunca é tarde para recomeçar e fazer diferente.
37	Acredite na sua capacidade de vencer.
38	A gratidão transforma sua vida.
39	A persistência é a chave para alcançar o sucesso.
40	A vida é uma jornada de aprendizado.
41	Você é mais forte do que imagina.
42	Enfrente seus medos e alcance suas metas.
43	O sucesso começa com acreditar em si mesmo.
44	Acredite em você, e os outros também acreditarão.
45	Seja a melhor versão de si mesmo todos os dias.
46	Sorria, isso pode mudar o dia de alguém.
47	Não deixe que o medo te impeça de seguir em frente.
48	Acredite no seu potencial e vá atrás dos seus sonhos.
49	O sucesso é a soma de pequenos esforços repetidos diariamente.
50	Você é capaz de conquistar tudo o que deseja.
51	Acredite que você pode, e você já está no meio do caminho.
52	A cada dia, você está mais próximo do seu objetivo.
53	Supere os obstáculos com confiança e determinação.
54	A vida é cheia de possibilidades, basta agarrá-las.
55	Você é único e tem muito a oferecer ao mundo.
56	Acredite, você é capaz de realizar coisas incríveis.
57	A felicidade está nas pequenas coisas da vida.
58	Seja grato pelo que tem e celebre suas conquistas.
59	Confie no processo e no seu próprio tempo.
60	Você é a soma das suas escolhas.
61	Acredite na sua capacidade de transformar desafios em oportunidades.
62	Cada dia é uma nova chance para fazer a diferença.
63	Acredite em si mesmo e siga em frente sem olhar para trás.
64	Você é capaz de enfrentar qualquer desafio que surgir.
65	O poder está dentro de você, é só acreditar.
66	Acredite no seu potencial e vá além dos seus limites.
67	Nunca é tarde para correr atrás dos seus sonhos.
68	Você é o autor da sua própria história.
69	Acredite na sua força interior e conquiste o mundo.
70	A felicidade começa quando você se valoriza.
71	Você pode alcançar o que quiser, basta acreditar.
72	Acredite no seu talento e mostre ao mundo o que você é capaz.
73	Acredite em você mesmo e nada será impossível.
74	Cada dia é uma oportunidade de recomeçar.
75	Acredite na sua capacidade de superar qualquer desafio.
76	Acredite que você pode e você está no meio do caminho.
77	Acredite em si mesmo e transforme seus sonhos em realidade.
78	Você é único, valorize-se.
79	Acredite nas suas habilidades e alcance o sucesso.
80	Acredite que você é capaz e você será.
81	Acredite, você é mais forte do que imagina.
82	Confie em você e supere todos os obstáculos.
83	Acredite no seu potencial e faça acontecer.
84	Acredite que cada dia é uma nova oportunidade de ser feliz.
85	Você é capaz de alcançar seus objetivos, basta acreditar.
86	Acredite em você mesmo e não tenha medo de brilhar.
87	Acredite na sua capacidade de transformar seus sonhos em realidade.
88	Você é capaz de fazer a diferença no mundo.
89	Acredite no poder da sua mente e conquiste seus objetivos.
90	Acredite na sua capacidade de superar desafios.
91	Acredite que você é capaz de alcançar seus sonhos.
92	Confie em você mesmo e vá atrás dos seus objetivos.
93	Acredite no seu potencial e vá em busca dos seus sonhos.
94	Acredite em si mesmo e seja a mudança que você deseja ver.
95	Você é capaz de enfrentar qualquer desafio com coragem e determinação.
96	Acredite em você e não tenha medo de arriscar.
97	Acredite que cada dia é uma nova oportunidade para ser feliz.
98	Confie no seu potencial e alcance seus objetivos.
99	Acredite que você é capaz de vencer qualquer obstáculo.
100	Você é capaz de realizar coisas incríveis, basta acreditar.
101	Acredite que cada desafio é uma oportunidade de crescimento.
102	Confie em você mesmo e siga em frente sem olhar para trás.
103	Acredite em si mesmo e nunca desista dos seus sonhos.
104	Confie na sua intuição e siga o seu coração.
105	Acredite em você e no seu potencial para alcançar seus objetivos.
106	Você é capaz de realizar seus sonhos, basta acreditar.
107	Confie em você mesmo e conquiste o que deseja.
108	Acredite que você é capaz de alcançar seus objetivos.
109	Acredite no seu potencial e supere seus limites.
110	Confie em você e não tenha medo de arriscar.
111	Acredite que cada dia é uma nova chance de ser feliz.
112	Você é capaz de alcançar o sucesso, basta acreditar.
113	Confie na sua força interior e supere qualquer desafio.
114	Acredite que você pode e você já está no meio do caminho.
115	Acredite nas suas habilidades e conquiste o que deseja.
116	Acredite em você mesmo e seja a mudança que deseja ver.
117	Confie em você e no seu potencial para realizar seus sonhos.
118	Acredite que cada dia é uma oportunidade de recomeçar.
119	Você é capaz de vencer qualquer obstáculo, basta acreditar.
120	Acredite no poder da sua mente e alcance seus objetivos.
121	Acredite em si mesmo e não desista dos seus sonhos.
122	Confie em você e supere todas as dificuldades.
123	Você é capaz de realizar seus sonhos, acredite.
124	Acredite no seu potencial e vá em busca dos seus objetivos.
125	Acredite em si mesmo e seja a melhor versão de você.
126	Confie na sua capacidade de vencer e conquiste seus objetivos.
127	Acredite que cada dia é uma nova chance de fazer acontecer.
128	Você é único e tem o poder de transformar sua vida.
129	Acredite em você e no seu potencial para alcançar seus sonhos.
130	Confie em você e no processo da vida.
131	Acredite que você é capaz de superar qualquer desafio.
132	Acredite no seu potencial e conquiste seus objetivos.
\.


--
-- Name: frases_id_frase_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.frases_id_frase_seq', 132, true);


--
-- Name: frases frases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.frases
    ADD CONSTRAINT frases_pkey PRIMARY KEY (id_frase);


--
-- PostgreSQL database dump complete
--

