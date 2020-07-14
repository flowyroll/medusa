.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9cce, %r13
nop
nop
nop
nop
nop
add $10591, %r11
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xa9c0, %rbp
nop
nop
nop
nop
nop
add $1790, %r8
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x31f0, %r11
nop
nop
nop
nop
nop
add $2254, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%r11)
nop
nop
nop
nop
nop
add $3446, %r14
lea addresses_D_ht+0x47d0, %rsi
lea addresses_UC_ht+0x5acc, %rdi
clflush (%rsi)
clflush (%rdi)
nop
add %rbx, %rbx
mov $125, %rcx
rep movsq
nop
nop
nop
nop
add $1484, %rdx
lea addresses_WT_ht+0x1962e, %r14
clflush (%r14)
nop
xor $49086, %rbx
movw $0x6162, (%r14)
nop
add $28153, %rcx
lea addresses_A_ht+0x154c0, %rsi
lea addresses_WT_ht+0xe8c0, %rdi
cmp $30705, %rbp
mov $96, %rcx
rep movsq
add %rbp, %rbp
lea addresses_WT_ht+0xd4c0, %rsi
lea addresses_WC_ht+0x8d40, %rdi
clflush (%rdi)
nop
nop
nop
sub $14948, %r13
mov $55, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x118c0, %r8
nop
nop
nop
xor $14205, %r14
movl $0x61626364, (%r8)
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x17700, %rsi
lea addresses_D_ht+0x7b5a, %rdi
nop
nop
xor $16253, %r14
mov $96, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x16ac0, %rdx
nop
nop
nop
nop
and $31468, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x184c0, %rsi
lea addresses_WC_ht+0x22c0, %rdi
nop
nop
nop
nop
nop
and $27782, %r13
mov $102, %rcx
rep movsw
nop
nop
nop
nop
cmp $59121, %rbx
lea addresses_normal_ht+0x1d0c0, %r8
nop
nop
nop
nop
sub $46920, %rcx
movw $0x6162, (%r8)
nop
nop
nop
mfence
lea addresses_WT_ht+0x9e40, %rbx
nop
nop
nop
nop
sub %rdx, %rdx
movb (%rbx), %r11b
nop
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rdi
push %rdx

// Load
lea addresses_PSE+0x1b100, %rdi
cmp %r14, %r14
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_US+0x128c0, %rdx
nop
nop
dec %r14
mov (%rdx), %r11w
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdx
pop %rdi
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'00': 22}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
