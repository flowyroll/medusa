.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x10107, %rbx
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rbx)
nop
sub %r10, %r10
lea addresses_WT_ht+0x4d31, %rcx
dec %rdi
movw $0x6162, (%rcx)
nop
add %r13, %r13
lea addresses_normal_ht+0x8087, %rcx
clflush (%rcx)
nop
nop
nop
dec %r13
movw $0x6162, (%rcx)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x97bf, %rsi
lea addresses_A_ht+0x1abdf, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $29, %rcx
rep movsq
nop
nop
nop
xor $60535, %r12
lea addresses_WT_ht+0x17961, %rsi
lea addresses_normal_ht+0x2307, %rdi
nop
nop
and $4943, %rbp
mov $11, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x7597, %rcx
and $59476, %rbx
movw $0x6162, (%rcx)
nop
nop
xor $40963, %rbx
lea addresses_normal_ht+0xd307, %rsi
lea addresses_WT_ht+0x14b07, %rdi
clflush (%rsi)
nop
nop
nop
sub %rbx, %rbx
mov $69, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $2935, %r10
lea addresses_UC_ht+0x12307, %r13
nop
inc %rdi
movb (%r13), %bl
nop
nop
nop
sub $64634, %r13
lea addresses_D_ht+0x12b07, %rsi
lea addresses_normal_ht+0x15b07, %rdi
clflush (%rdi)
nop
inc %rbp
mov $57, %rcx
rep movsb
nop
inc %rbp
lea addresses_UC_ht+0x4f07, %r10
nop
nop
and $24476, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
add $7166, %r10
lea addresses_D_ht+0x15c19, %rsi
lea addresses_D_ht+0x1b907, %rdi
nop
nop
nop
dec %rbx
mov $56, %rcx
rep movsq
sub $9871, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rsi

// Load
lea addresses_WC+0xe4c7, %rbp
add $4800, %r13
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_normal+0xe707, %rax
nop
inc %r9
mov (%rax), %r12w
nop
cmp %r13, %r13

// Load
lea addresses_WC+0x8f87, %r15
nop
nop
cmp %rax, %rax
vmovntdqa (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
inc %r12

// Store
lea addresses_UC+0xbf07, %r13
nop
nop
sub $21888, %r12
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
nop
nop
nop
and $29559, %rax

// Faulty Load
lea addresses_RW+0x16307, %r9
add $63766, %rsi
vmovntdqa (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'08': 1, '44': 1, '46': 7388, '49': 14264, '00': 175}
00 49 49 49 46 46 49 49 46 46 49 49 46 49 46 46 49 49 46 46 49 49 49 49 49 49 49 49 49 49 46 49 46 46 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 46 49 49 46 49 49 00 49 49 49 49 49 49 49 49 46 46 49 49 49 46 46 49 49 49 46 46 49 49 46 49 49 46 46 49 49 49 46 46 49 49 46 49 46 49 49 49 49 49 49 46 49 49 46 46 49 46 49 46 49 49 49 49 46 49 49 46 49 49 49 46 49 49 46 49 49 46 46 46 49 46 49 49 49 49 46 49 49 49 49 49 46 49 49 49 46 46 46 49 46 46 49 46 49 49 49 46 46 00 46 49 49 49 46 46 46 49 46 46 49 49 49 49 49 49 49 46 46 49 49 46 49 46 46 49 49 46 46 46 46 49 49 49 46 49 46 49 46 49 49 49 49 49 46 46 49 46 46 46 49 46 46 49 49 49 46 46 49 49 49 49 49 46 46 49 49 46 46 46 49 49 49 49 49 46 49 46 49 49 49 49 46 49 49 46 46 46 49 49 46 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 46 49 46 46 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 46 46 49 49 49 49 49 49 49 46 46 46 49 46 46 49 49 49 49 46 46 49 49 46 49 49 49 46 46 49 49 49 46 49 46 49 49 49 49 49 46 46 49 49 46 49 46 49 49 46 49 49 49 46 46 46 49 46 46 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 46 46 49 49 49 49 49 46 49 49 49 49 49 46 49 46 46 49 46 46 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 46 46 49 49 46 46 49 46 49 49 49 46 46 49 49 46 49 49 49 46 49 49 49 49 46 49 46 49 49 49 49 46 46 49 49 49 46 49 49 49 49 46 46 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 46 49 46 46 46 46 46 46 49 49 49 49 49 49 49 46 49 46 49 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 46 46 49 46 46 46 49 49 46 49 49 46 49 49 46 49 49 46 46 46 46 49 46 49 46 49 49 49 49 46 49 49 49 00 49 46 49 49 46 46 49 46 49 49 46 46 46 49 49 46 46 49 46 49 49 49 49 49 49 49 46 49 49 49 46 00 46 49 46 49 46 49 49 49 46 46 49 49 46 49 49 49 49 49 49 49 49 49 49 00 49 46 46 46 46 49 46 46 49 49 49 49 49 49 49 49 49 00 46 46 00 49 46 49 49 46 49 49 46 49 49 49 49 49 49 49 46 46 46 46 49 49 46 46 49 49 46 49 49 46 49 49 49 49 46 49 46 49 49 46 46 49 49 46 49 49 46 46 49 49 49 46 46 49 49 49 49 49 49 49 49 49 46 46 49 49 49 46 49 49 46 46 49 46 46 46 49 49 46 46 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 00 46 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 46 49 49 46 49 49 46 46 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 46 46 49 49 49 49 46 46 49 49 46 46 49 49 49 46 49 46 49 49 49 49 46 46 46 49 46 49 49 46 49 49 49 49 49 46 46 46 49 49 49 46 49 49 46 49 49 49 49 49 49 49 49 46 46 49 49 49 46 49 49 49 49 46 49 49 46 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 46 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 46 46 49 49 46 46 46 49 49 46 46 49 49 46 46 49 49 46 46 46 49 46 46 49 46 49 49 49 46 46 49 49 46 49 49 49 49 49 46 46 49 46 49 46 49 49 46 46 49 49 46 49 49 49 49 49 46 46 46 46 46 49 49 49 46 46 49 49 49 49 49
*/
