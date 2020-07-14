.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x17d3a, %rdi
clflush (%rdi)
nop
nop
sub $16614, %r15
mov (%rdi), %r12w
nop
nop
inc %rdi
lea addresses_D_ht+0x1e26a, %rsi
nop
nop
add $61458, %r13
mov (%rsi), %edi
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x166a, %r12
nop
nop
nop
xor %rcx, %rcx
mov (%r12), %di
nop
nop
nop
xor $6081, %rsi
lea addresses_D_ht+0xe26a, %r15
add $2136, %r14
mov (%r15), %ecx
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x3e6a, %r15
nop
nop
nop
nop
nop
xor %r12, %r12
movb (%r15), %r14b
nop
nop
nop
cmp $11113, %r15
lea addresses_UC_ht+0x896a, %r15
nop
nop
nop
nop
xor $31878, %r14
mov (%r15), %cx
nop
nop
nop
nop
xor $4133, %r12
lea addresses_D_ht+0x1d99c, %rsi
lea addresses_WC_ht+0x12e6a, %rdi
dec %rdx
mov $68, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x14e6a, %rdx
dec %r13
movb $0x61, (%rdx)
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xc66a, %rsi
lea addresses_normal_ht+0x678a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $41626, %r12
mov $50, %rcx
rep movsw
nop
xor $7307, %rsi
lea addresses_WT_ht+0xf7ce, %rsi
lea addresses_D_ht+0x16d2a, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $67, %rcx
rep movsb
nop
nop
nop
add $28541, %r14
lea addresses_A_ht+0x592a, %rcx
nop
nop
nop
cmp $4071, %rdx
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
inc %rcx
lea addresses_WC_ht+0xea6a, %rdi
nop
nop
nop
nop
xor $45581, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1b54e, %rdx
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xe66a, %rcx
nop
add %rdi, %rdi
movb (%rcx), %dl
nop
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rdi
push %rsi

// Load
lea addresses_normal+0x995a, %rbp
nop
nop
sub %r15, %r15
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_US+0x1363a, %rsi
nop
nop
inc %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movntdq %xmm2, (%rsi)
nop
inc %rbp

// Load
lea addresses_normal+0x1666a, %r11
nop
nop
nop
add $23624, %r9
vmovups (%r11), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x1ea6a, %r9
nop
nop
inc %r11
movl $0x51525354, (%r9)
nop
sub $40057, %r15

// Store
lea addresses_normal+0x13cba, %r15
add $62039, %rsi
movw $0x5152, (%r15)
nop
sub %r15, %r15

// Faulty Load
lea addresses_RW+0xde6a, %r12
nop
nop
nop
nop
xor %r11, %r11
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'32': 19}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
