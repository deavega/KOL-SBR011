

materai <- read.csv("materai.csv") %>% clean_names()

materai <- materai %>% rename("midis" = 2, "konfirmasi_kepemilikan" =3, "konfirmasi_pembayaran" =4)

materai %>% mutate(konfirmasi_kepemilikan = as.factor(konfirmasi_kepemilikan)) %>% 
  ggplot(aes(x = konfirmasi_kepemilikan, fill = konfirmasi_kepemilikan))+
  geom_bar()+ theme(axis.text.x=element_blank(),
                    axis.title.x=element_blank())+
  geom_text(aes(label=..count..),stat='count',position=position_dodge(0.9),vjust=-0.2)+
  ggtitle("Konfirmasi Kepemilikan SBN Ritel")


ggplotly() %>% layout(legend = list(orientation = "h", y = -.1, x = 0))
