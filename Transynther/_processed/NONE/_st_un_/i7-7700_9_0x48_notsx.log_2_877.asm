.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1029c, %rsi
lea addresses_normal_ht+0x51ac, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r15, %r15
mov $46, %rcx
rep movsl
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x13b58, %r15
nop
nop
inc %r12
mov $0x6162636465666768, %r9
movq %r9, (%r15)
add $9239, %rdi
lea addresses_normal_ht+0xb2cc, %r15
clflush (%r15)
inc %rdx
mov (%r15), %rdi
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x7cc, %rcx
clflush (%rcx)
nop
and $15258, %r12
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0xf2cc, %r12
nop
xor %rdx, %rdx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x10acc, %rdx
inc %rcx
movb (%rdx), %r12b
cmp %rsi, %rsi
lea addresses_A_ht+0xd84c, %rsi
lea addresses_A_ht+0x1cecc, %rdi
clflush (%rdi)
nop
nop
nop
sub $17402, %r12
mov $87, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0xd6cc, %rsi
lea addresses_WT_ht+0x12acc, %rdi
nop
nop
nop
nop
add $60816, %r15
mov $5, %rcx
rep movsq
nop
nop
nop
inc %r12
lea addresses_WC_ht+0x42cc, %rdi
clflush (%rdi)
add $37644, %rsi
mov (%rdi), %cx
nop
nop
nop
xor $61346, %rdi
lea addresses_D_ht+0xfc8c, %rsi
lea addresses_UC_ht+0x1434c, %rdi
nop
nop
nop
nop
nop
sub $27770, %r8
mov $105, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $47891, %rcx
lea addresses_normal_ht+0x2acc, %rsi
lea addresses_A_ht+0x1a9cc, %rdi
nop
cmp $29347, %r12
mov $29, %rcx
rep movsq
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x3acc, %rsi
lea addresses_D+0x1ffac, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $100, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence

// Store
mov $0x29137b0000000acc, %rdi
nop
nop
nop
nop
inc %r15
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
and $44956, %rbx

// Load
mov $0xccc, %rbx
nop
nop
nop
nop
nop
and %r8, %r8
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_WC+0x121ec, %rsi
nop
nop
inc %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
inc %r15

// REPMOV
lea addresses_D+0x4acc, %rsi
mov $0x138df000000071e, %rdi
nop
cmp %rbp, %rbp
mov $11, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_D+0x17acc, %rbx
nop
inc %rcx
movw $0x5152, (%rbx)
nop
nop
nop
sub %r15, %r15

// Load
lea addresses_A+0x107cc, %r8
nop
xor $37070, %rbp
movb (%r8), %r15b
nop
nop
nop
xor %rdi, %rdi

// REPMOV
lea addresses_US+0xc095, %rsi
lea addresses_normal+0x558c, %rdi
nop
cmp $23790, %rbp
mov $92, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_UC+0x1eacc, %rdi
nop
nop
nop
nop
dec %r9
mov (%rdi), %esi
lea oracles, %rsi
and $0xff, %rsi
shlq $12, %rsi
mov (%rsi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_NC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_US'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'c2': 1, '51': 1}
51 c2
*/
