.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9054, %rsi
lea addresses_A_ht+0xa334, %rdi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $14, %rcx
rep movsq
nop
nop
nop
nop
add $35589, %r13
lea addresses_UC_ht+0xd5d4, %r13
nop
nop
nop
cmp $139, %r12
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x18941, %r11
nop
nop
nop
nop
nop
and $6132, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %r11
movaps %xmm1, (%r11)
xor $16873, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xc38, %rsi
lea addresses_RW+0xbbd4, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r9, %r9
mov $17, %rcx
rep movsq
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0x4c70, %rsi
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x17196, %r10
nop
nop
nop
nop
add $21298, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
xor $53875, %r13

// Faulty Load
lea addresses_RW+0x13dd4, %rbx
nop
nop
nop
xor %r9, %r9
mov (%rbx), %r10d
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'32': 20}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
