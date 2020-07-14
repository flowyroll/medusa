.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x9a76, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and $43233, %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0xb46b, %rsi
lea addresses_WC_ht+0xcf36, %rdi
nop
nop
xor $28310, %r11
mov $46, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x1ac0b, %rsi
nop
nop
nop
nop
dec %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
and $32134, %rax
lea addresses_normal_ht+0x81eb, %rdi
nop
nop
nop
nop
and $25087, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x923f, %rsi
lea addresses_D_ht+0x57eb, %rdi
nop
nop
nop
nop
nop
lfence
mov $66, %rcx
rep movsq
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x1c78a, %r15
nop
inc %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r15)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0xab03, %rsi
lea addresses_WT_ht+0x45eb, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $16, %rcx
rep movsq
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x139eb, %r10
clflush (%r10)
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r10)
and %rdi, %rdi

// Store
lea addresses_PSE+0x2907, %r10
nop
nop
nop
nop
add $61984, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r10)
nop
sub %r10, %r10

// Store
lea addresses_WT+0xbdeb, %rdx
inc %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_UC+0x1e86b, %rbp
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rbp)
nop
cmp %r14, %r14

// Store
lea addresses_normal+0xd2eb, %rdi
nop
cmp $53508, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
nop
nop
nop
xor $63319, %rdi

// Load
mov $0x7eb, %r10
clflush (%r10)
nop
xor %rdi, %rdi
movb (%r10), %r14b
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_PSE+0x1dbeb, %r13
nop
nop
nop
nop
cmp $57644, %r14
mov (%r13), %r10w
nop
nop
sub %rdi, %rdi

// Store
lea addresses_A+0x9eb, %rdi
nop
sub $64639, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
sub %r10, %r10

// Faulty Load
lea addresses_A+0x9eb, %rdx
nop
nop
nop
nop
nop
xor $19666, %rdi
mov (%rdx), %r10d
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 9}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'58': 43}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
