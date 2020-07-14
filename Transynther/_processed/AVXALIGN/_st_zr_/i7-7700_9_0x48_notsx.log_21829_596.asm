.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xdf9f, %rdi
nop
nop
nop
nop
sub $29707, %rdx
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r14
nop
xor $60684, %r8
lea addresses_UC_ht+0x579f, %rsi
lea addresses_D_ht+0x17e67, %rdi
nop
nop
add %r9, %r9
mov $106, %rcx
rep movsw
nop
cmp %r14, %r14
lea addresses_WT_ht+0x18d2d, %rdi
nop
nop
add %r8, %r8
movb (%rdi), %dl
nop
nop
nop
nop
nop
sub $62087, %r8
lea addresses_WC_ht+0x1318f, %r8
nop
nop
nop
nop
cmp $51790, %rcx
movb (%r8), %r14b
nop
sub $44026, %rcx
lea addresses_UC_ht+0x1c077, %r14
nop
sub $13279, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
cmp $24662, %r14
lea addresses_normal_ht+0x1879f, %rsi
lea addresses_A_ht+0x10f5f, %rdi
nop
nop
nop
nop
nop
sub $7953, %rdx
mov $24, %rcx
rep movsw
and %r14, %r14
lea addresses_normal_ht+0x2483, %rsi
xor $38585, %r9
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
nop
nop
sub $49498, %rcx
lea addresses_A_ht+0x1839f, %r8
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r8), %edi
sub %r9, %r9
lea addresses_WT_ht+0x2d9f, %r9
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r9)
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0xdd9f, %rsi
lea addresses_PSE+0x71df, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $107, %rcx
rep movsq

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
inc %rcx

// Store
mov $0x1cd325000000059f, %rcx
nop
nop
nop
nop
xor $62574, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rcx)
nop
nop
add %rdi, %rdi

// Store
mov $0x594407000000099f, %rdi
and %r14, %r14
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
add $20487, %r13

// Store
lea addresses_normal+0x1c25f, %rdi
nop
cmp %rbx, %rbx
movb $0x51, (%rdi)
inc %rsi

// Store
lea addresses_RW+0x219f, %rbx
nop
nop
nop
nop
nop
and $14854, %rcx
movl $0x51525354, (%rbx)
cmp %rcx, %rcx

// Store
lea addresses_RW+0x623, %r14
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)

// Exception!!!
nop
nop
mov (0), %r13
nop
cmp $48652, %rsi

// Store
lea addresses_A+0x10b9f, %rbx
nop
nop
cmp $52765, %r14
movl $0x51525354, (%rbx)
nop
nop
nop
nop
and $18957, %rcx

// Store
lea addresses_D+0x167d7, %rsi
nop
nop
inc %rbp
movl $0x51525354, (%rsi)
xor %rbx, %rbx

// Faulty Load
lea addresses_UC+0x659f, %rsi
clflush (%rsi)
nop
add $56774, %rdi
movntdqa (%rsi), %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'58': 18525, '00': 3304}
00 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58
*/
