behavioral_df <- read_csv2("../data/behavior.csv")

behavioral_df$confResp <- as.numeric(behavioral_df$confResp)
behavioral_df$confResp[is.na(behavioral_df$confResp)] <- 0

any_zero = behavioral_df %>% filter(accuracy==0 | confResp==0)

turning = setNames(data.frame(matrix(ncol = 3, nrow = 0)), c("subnum", "scene_id", "run"))

for (each_sub in unique(behavioral_df$subnum)){
  for (each_trial in unique(behavioral_df$scene_num)){
    curr = any_zero %>% filter(subnum == each_sub & scene_num == each_trial)
    if (nrow(curr) == 0){
      turning[nrow(turning) + 1,] = list(each_sub,each_trial,1)
    }else{
      turning[nrow(turning) + 1,] = list(each_sub,each_trial,(max(curr$run)+1))
    }
  }
}

behav_cut_off <- turning %>% filter(!run == '7') 