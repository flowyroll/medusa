.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e341, %rsi
lea addresses_WT_ht+0x1439d, %rdi
nop
nop
add $34490, %rax
mov $48, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_A_ht+0x10681, %r8
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r8), %edi
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0xfd8c, %rsi
lea addresses_WC_ht+0x15b41, %rdi
nop
nop
sub $31084, %r10
mov $13, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x15c41, %rsi
lea addresses_A_ht+0x10441, %rdi
nop
nop
nop
nop
nop
sub $37810, %rax
mov $47, %rcx
rep movsw
xor $9847, %rax
lea addresses_normal_ht+0xd441, %rsi
lea addresses_WT_ht+0x2241, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r10
mov $82, %rcx
rep movsb
nop
nop
cmp $25673, %rsi
lea addresses_WC_ht+0x15993, %rsi
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x11341, %rcx
nop
nop
nop
and %r8, %r8
movb $0x61, (%rcx)
nop
nop
nop
and $57013, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_D+0x4441, %r8
nop
nop
nop
dec %r10
movb $0x51, (%r8)
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_US+0x7c41, %rcx
nop
nop
nop
nop
xor $11395, %r9
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'00': 94}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
