.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1c573, %rsi
lea addresses_A+0x10e17, %rdi
nop
nop
dec %rbp
mov $32, %rcx
rep movsb

// Exception!!!
nop
mov (0), %rbx
nop
nop
nop
nop
add $64853, %rbp

// Store
lea addresses_A+0x1b5b3, %rbx
cmp %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
sub $17742, %rcx

// Faulty Load
lea addresses_normal+0xd573, %rbx
nop
nop
nop
cmp $15191, %rdi
vmovntdqa (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'30': 43, '04': 11}
04 04 04 04 30 04 30 30 30 30 04 30 30 04 30 04 30 30 04 30 30 04 04 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30
*/
