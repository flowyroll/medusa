.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1254c, %r12
nop
nop
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%r12)
dec %rdi
lea addresses_UC_ht+0xb0ac, %rsi
lea addresses_normal_ht+0x2eac, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $104, %rcx
rep movsw
cmp $30629, %rsi
lea addresses_D_ht+0x2b84, %rdi
cmp $61932, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rdi)
add $61269, %r12
lea addresses_A_ht+0x434c, %rsi
lea addresses_WC_ht+0x1074c, %rdi
clflush (%rsi)
nop
nop
xor $39258, %rbp
mov $94, %rcx
rep movsb
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x41ec, %rdx
xor $26397, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdx)
and $49997, %rbp
lea addresses_WC_ht+0x958c, %rsi
lea addresses_UC_ht+0xef2c, %rdi
nop
nop
nop
inc %r8
mov $121, %rcx
rep movsw
add $19347, %r15
lea addresses_WT_ht+0x177cc, %rdx
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
nop
nop
dec %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rsi

// Load
lea addresses_WC+0x47cc, %r8
xor %rsi, %rsi
mov (%r8), %rcx
nop
nop
sub %r14, %r14

// Load
lea addresses_RW+0x13674, %rsi
nop
nop
nop
nop
nop
cmp %r8, %r8
movb (%rsi), %r9b
nop
nop
nop
inc %rcx

// Store
lea addresses_normal+0x174c, %rcx
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
sub $36934, %r9

// Store
lea addresses_A+0x10202, %r14
dec %r13
mov $0x5152535455565758, %r8
movq %r8, (%r14)
nop
nop
nop
and %r9, %r9

// Store
mov $0x5673730000000f4c, %rcx
inc %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%rcx)
nop
sub $11554, %rsi

// Load
lea addresses_PSE+0xbb14, %r9
nop
nop
nop
nop
nop
xor $30942, %r13
mov (%r9), %rsi
nop
nop
nop
nop
nop
sub $62529, %r14

// Load
mov $0xabc, %r13
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r13), %r8
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_A+0x1c74c, %r13
sub %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm3
movups %xmm3, (%r13)
cmp $14830, %r14

// Store
lea addresses_US+0x13ca9, %r12
nop
nop
sub %r13, %r13
movl $0x51525354, (%r12)
nop
nop
xor $53059, %r13

// Faulty Load
mov $0x5673730000000f4c, %r14
sub $52552, %r12
mov (%r14), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'58': 19120, '00': 2709}
58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 00 00 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 00 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58
*/
