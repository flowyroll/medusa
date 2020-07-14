.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e042, %r12
nop
nop
nop
nop
add %r11, %r11
mov (%r12), %r10d
nop
add %rdi, %rdi
lea addresses_D_ht+0x1c162, %rsi
lea addresses_D_ht+0x1222, %rdi
nop
xor $41379, %r9
mov $71, %rcx
rep movsq
nop
nop
xor $26341, %rdi
lea addresses_A_ht+0x18b02, %rsi
lea addresses_UC_ht+0x1da22, %rdi
and $63637, %r12
mov $98, %rcx
rep movsb
nop
nop
nop
nop
and $47538, %rcx
lea addresses_WT_ht+0x1be22, %rcx
nop
nop
nop
nop
xor $40993, %rdi
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x90ba, %rcx
nop
xor $6081, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rcx)
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1eb62, %rsi
lea addresses_WC_ht+0x1c1ca, %rdi
clflush (%rdi)
nop
nop
cmp %rbx, %rbx
mov $71, %rcx
rep movsw
nop
nop
nop
nop
cmp $41263, %rdi
lea addresses_UC_ht+0x14770, %rbx
nop
nop
nop
nop
inc %rsi
movb (%rbx), %r12b
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0xda22, %rsi
lea addresses_D+0x6feb, %rdi
nop
xor %r12, %r12
mov $120, %rcx
rep movsl
nop
nop
nop
nop
nop
and $61292, %r13

// Store
lea addresses_RW+0x1c2e2, %rsi
nop
dec %rbx
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
nop
nop
xor $62044, %rsi

// Store
lea addresses_normal+0x8524, %rcx
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_RW+0xda22, %r13
nop
nop
nop
nop
sub $52890, %r12
movups (%r13), %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'32': 13}
32 32 32 32 32 32 32 32 32 32 32 32 32
*/
