.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1964a, %rdx
clflush (%rdx)
nop
nop
nop
xor %rdi, %rdi
mov (%rdx), %r11
inc %rax
lea addresses_UC_ht+0x1e1aa, %r10
nop
nop
xor $6250, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r10)
nop
cmp $20123, %r10
lea addresses_WT_ht+0x844a, %rsi
lea addresses_UC_ht+0x1c5ca, %rdi
xor %rax, %rax
mov $87, %rcx
rep movsl
sub %r11, %r11
lea addresses_UC_ht+0x179ca, %rdi
nop
nop
inc %r12
movb (%rdi), %al
add %rdx, %rdx
lea addresses_UC_ht+0x1028a, %rsi
lea addresses_D_ht+0x14130, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r11, %r11
mov $67, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1ed14, %r12
nop
nop
sub %rax, %rax
mov (%r12), %dx
nop
mfence
lea addresses_D_ht+0x1ef76, %rdx
clflush (%rdx)
nop
nop
sub $48403, %rcx
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %rax
nop
cmp $15162, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x1e64a, %r9
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'fe': 2, '00': 3}
fe 00 00 00 fe
*/
