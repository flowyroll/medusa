.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1631c, %rdx
nop
nop
nop
sub %r15, %r15
mov (%rdx), %r14
nop
nop
nop
nop
add $20470, %rbp
lea addresses_D_ht+0x1dbc, %rsi
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
nop
add %r15, %r15
lea addresses_A_ht+0x1e9fc, %rsi
lea addresses_WC_ht+0x7dfc, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $37, %rcx
rep movsw
inc %rdx
lea addresses_WC_ht+0x1ddfc, %rcx
sub $61600, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
add $19065, %rdi
lea addresses_UC_ht+0xc7fc, %rdi
clflush (%rdi)
nop
nop
nop
xor %r9, %r9
mov (%rdi), %r15d
nop
nop
nop
sub $36877, %rcx
lea addresses_WT_ht+0x1b3fc, %rsi
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%rsi), %r9
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x131fc, %r14
nop
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%r14)
nop
nop
nop
cmp $55014, %rbp
lea addresses_WC_ht+0x19240, %rdx
nop
nop
nop
nop
cmp %r15, %r15
mov (%rdx), %rbp
dec %rdi
lea addresses_A_ht+0x4afc, %rbp
nop
nop
nop
and $36155, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x1affc, %rdi
nop
nop
nop
nop
cmp $33171, %r15
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0xd2e0, %rsi
lea addresses_normal_ht+0x1b1fc, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $26, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x109fc, %rdx
clflush (%rdx)
nop
add $35760, %rsi
mov (%rdx), %r15
nop
add $19394, %rdx
lea addresses_UC_ht+0xaf8, %r14
nop
nop
nop
nop
inc %r15
mov (%r14), %rdi
nop
nop
nop
nop
nop
and $53058, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_US+0xcefc, %rcx
clflush (%rcx)
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
sub $62499, %r14

// Store
lea addresses_WT+0x129fc, %rbp
clflush (%rbp)
and $11955, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
cmp $56670, %rcx

// Store
lea addresses_normal+0x1c464, %rbp
nop
nop
add $20197, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
dec %rax

// Store
mov $0xcfc, %r14
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
and $10895, %rbp

// Store
lea addresses_PSE+0x9bfc, %rcx
nop
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
cmp $27503, %r10

// Store
lea addresses_WC+0x1cae8, %rax
clflush (%rax)
nop
nop
nop
cmp $63137, %r14
movb $0x51, (%rax)
nop
and %r10, %r10

// Faulty Load
lea addresses_D+0x1e9fc, %r10
nop
nop
nop
nop
and $51472, %r11
mov (%r10), %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
