.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x6eee, %rbx
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%rbx), %r15b
nop
nop
nop
xor $52075, %rcx
lea addresses_D_ht+0x1836b, %r11
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%r11)
nop
and %rcx, %rcx
lea addresses_UC_ht+0xb3aa, %rcx
nop
nop
dec %rdx
movw $0x6162, (%rcx)
nop
nop
nop
sub $7253, %rbx
lea addresses_A_ht+0x1ef6e, %rsi
lea addresses_UC_ht+0xc06e, %rdi
nop
nop
nop
nop
inc %rdx
mov $69, %rcx
rep movsb
nop
xor %rdx, %rdx
lea addresses_D_ht+0xba6e, %rsi
lea addresses_WT_ht+0xa282, %rdi
and $63164, %rbx
mov $40, %rcx
rep movsb
nop
nop
and $29497, %rsi
lea addresses_D_ht+0x1336e, %rbp
nop
nop
nop
nop
nop
and $196, %rdi
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
cmp $7687, %rdi
lea addresses_WT_ht+0x1eb6e, %r11
clflush (%r11)
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r11), %dl
nop
xor $28474, %rcx
lea addresses_D_ht+0x17846, %rbx
cmp $39181, %rbp
mov (%rbx), %edx
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbx
push %rdi

// Faulty Load
mov $0x2ff736000000016e, %r8
nop
nop
nop
sub %r10, %r10
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'46': 1, '00': 2, '45': 12}
45 45 46 45 00 45 45 45 45 00 45 45 45 45 45
*/
