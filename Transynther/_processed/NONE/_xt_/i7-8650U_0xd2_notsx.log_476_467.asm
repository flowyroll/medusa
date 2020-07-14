.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x158, %r14
nop
inc %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r14)
nop
and $5529, %rsi
lea addresses_D_ht+0x6418, %rsi
lea addresses_WC_ht+0xb818, %rdi
clflush (%rsi)
nop
sub $53149, %r15
mov $46, %rcx
rep movsb
nop
and $60335, %rdi
lea addresses_UC_ht+0x12098, %r15
nop
nop
sub %rsi, %rsi
mov (%r15), %edi
nop
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x8db8, %rcx
nop
nop
and %r15, %r15
mov (%rcx), %esi
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x8d18, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
and %r12, %r12
lea addresses_UC_ht+0xe1b8, %rsi
lea addresses_WC_ht+0x1c538, %rdi
clflush (%rdi)
nop
add $33226, %rax
mov $80, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x1d618, %rdi
nop
dec %rcx
mov (%rdi), %rax
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x19c18, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x13e38, %r15
nop
nop
nop
nop
dec %rsi
mov (%r15), %edi
nop
nop
nop
cmp $30877, %r8
lea addresses_D_ht+0x8692, %rsi
lea addresses_WT_ht+0xee18, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $34, %rcx
rep movsb
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x18618, %rcx
nop
sub $27815, %rax
mov (%rcx), %r14
nop
nop
nop
nop
nop
add $34730, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rdx
push %rsi

// Load
lea addresses_US+0x1bdc2, %r13
nop
nop
nop
xor $11443, %rdx
mov (%r13), %r10d
nop
nop
sub $58944, %r8

// Faulty Load
lea addresses_PSE+0x1a018, %rsi
nop
nop
nop
cmp %r10, %r10
mov (%rsi), %r9w
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'33': 476}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
