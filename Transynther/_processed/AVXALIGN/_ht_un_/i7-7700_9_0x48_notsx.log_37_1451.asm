.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1afaa, %r8
nop
nop
nop
nop
nop
cmp $30103, %r11
mov (%r8), %r10d
sub %r8, %r8
lea addresses_WT_ht+0x1c70a, %rsi
lea addresses_normal_ht+0x1632a, %rdi
nop
nop
nop
nop
add $6903, %rbp
mov $120, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x580a, %rsi
lea addresses_UC_ht+0x1aaea, %rdi
clflush (%rsi)
add %r14, %r14
mov $24, %rcx
rep movsw
nop
nop
cmp $26740, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_WT+0x113aa, %r9
nop
nop
nop
nop
nop
sub $55753, %rsi
vmovaps (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'4a': 1, '5f': 1, '44': 33, '49': 1, '4d': 1}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 5f 44 44 44 44 44 44 49 44 44 44 44 44 4a 4d 44
*/
