.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5acc, %rsi
lea addresses_WC_ht+0x1274c, %rdi
clflush (%rdi)
nop
xor $60839, %r14
mov $49, %rcx
rep movsq
nop
xor %r10, %r10
lea addresses_normal_ht+0x604c, %r8
clflush (%r8)
nop
add %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r8)
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x1cdab, %rsi
lea addresses_A_ht+0xc74c, %rdi
nop
dec %r12
mov $36, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1250c, %rcx
clflush (%rcx)
nop
nop
nop
cmp %r8, %r8
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
xor $43925, %rcx
lea addresses_UC_ht+0xda92, %rbx
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rbx)
nop
nop
xor $34032, %rdi
lea addresses_UC_ht+0x1e2b6, %r14
nop
dec %rsi
mov (%r14), %r12w
dec %rbx
lea addresses_WT_ht+0x17ca0, %r12
nop
nop
nop
nop
nop
dec %rdi
movb (%r12), %r8b
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x1a1c, %r10
nop
nop
nop
and $53958, %rsi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rbx
mfence
lea addresses_D_ht+0x1dcac, %r10
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r10)
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x94c, %r11
nop
and $12272, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
nop
nop
add $4293, %r13

// Store
lea addresses_A+0x1534c, %r15
nop
and $10924, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx

// Load
lea addresses_RW+0xad4c, %rdx
nop
nop
add %rsi, %rsi
vmovups (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
inc %r13

// Store
lea addresses_WT+0x1804c, %r11
nop
nop
xor $45579, %rdx
movb $0x51, (%r11)
nop
nop
sub $41467, %rsi

// Store
lea addresses_RW+0x1b74c, %rdx
sub $57485, %rbx
movb $0x51, (%rdx)
nop
nop
nop
dec %r15

// Store
lea addresses_WC+0x9bec, %rdx
nop
nop
nop
dec %r13
movl $0x51525354, (%rdx)
nop
nop
and $32834, %rdx

// Store
lea addresses_US+0x16194, %rbx
cmp %rsi, %rsi
movl $0x51525354, (%rbx)
nop
nop
inc %rbx

// Store
lea addresses_D+0x554c, %rbx
nop
nop
nop
nop
nop
sub %rdx, %rdx
movb $0x51, (%rbx)
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x414c, %rdx
nop
nop
nop
xor $54024, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_normal+0x2b0c, %rsi
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%rsi)
nop
dec %r13

// Load
mov $0xe4c, %rbx
cmp %rbp, %rbp
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
dec %rsi

// Store
lea addresses_WT+0xe94c, %rsi
nop
nop
nop
nop
nop
dec %r13
movw $0x5152, (%rsi)
nop
add $4546, %rbx

// Load
lea addresses_US+0x16dc, %rbp
clflush (%rbp)
nop
sub %rdx, %rdx
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
and $9979, %r11

// Store
lea addresses_UC+0x7d4c, %rbp
nop
sub %r11, %r11
movl $0x51525354, (%rbp)
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_WC+0x1054c, %r15
xor $40777, %rsi
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
sub $21965, %rsi

// Faulty Load
lea addresses_RW+0xad4c, %rsi
nop
nop
cmp $60239, %rbp
mov (%rsi), %bx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_RW', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'32': 227}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
