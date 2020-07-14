.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x21f6, %rsi
lea addresses_UC_ht+0xf376, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $112, %rcx
rep movsl
nop
xor %rbp, %rbp
lea addresses_A_ht+0x292a, %rsi
lea addresses_D_ht+0x95f6, %rdi
clflush (%rsi)
nop
nop
sub %rax, %rax
mov $60, %rcx
rep movsl
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1956, %rsi
lea addresses_WC_ht+0xc3f6, %rdi
nop
dec %r12
mov $4, %rcx
rep movsw
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x125f6, %rcx
xor %rsi, %rsi
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
mfence
lea addresses_WT_ht+0x155f6, %r12
nop
nop
sub $28787, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r12)
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x182d6, %rsi
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
xor $24077, %rbp
lea addresses_D_ht+0xd7f6, %rsi
lea addresses_UC_ht+0x1261a, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $74, %rcx
rep movsb
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1a5f6, %rcx
dec %rbp
mov (%rcx), %rdi
nop
nop
nop
nop
add $23026, %rdi
lea addresses_normal_ht+0xa5f6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $11942, %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x17a46, %r13
nop
and %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
and $62692, %rsi
lea addresses_D_ht+0x14736, %rsi
lea addresses_normal_ht+0xc366, %rdi
nop
nop
nop
nop
and $30907, %r15
mov $94, %rcx
rep movsl
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_A+0xe8b6, %rbx
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rbx)
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_A+0x35f6, %rbp
nop
nop
nop
nop
nop
dec %r13
mov (%rbp), %di
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'35': 21828, '00': 1}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
