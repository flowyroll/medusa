.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x10cc6, %rsi
lea addresses_D_ht+0x1a3c6, %rdi
and %r10, %r10
mov $92, %rcx
rep movsb
nop
nop
nop
cmp $58444, %rsi
lea addresses_A_ht+0xf546, %rdi
nop
nop
nop
nop
nop
xor $14585, %r13
movb $0x61, (%rdi)
sub %r13, %r13
lea addresses_D_ht+0x58c6, %r10
nop
nop
nop
nop
and $56378, %r14
mov (%r10), %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xa0c6, %rsi
lea addresses_D_ht+0x1186, %rdi
clflush (%rdi)
nop
nop
dec %r11
mov $20, %rcx
rep movsq
nop
nop
nop
nop
xor $48040, %rsi
lea addresses_normal_ht+0x32c6, %rsi
lea addresses_D_ht+0x22c6, %rdi
nop
nop
sub $43261, %r10
mov $48, %rcx
rep movsw
nop
nop
nop
nop
cmp $50697, %r11
lea addresses_WC_ht+0x199c6, %rcx
clflush (%rcx)
nop
nop
cmp $44529, %r10
movw $0x6162, (%rcx)
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1edc6, %r13
sub $7773, %r10
mov $0x6162636465666768, %r11
movq %r11, (%r13)
nop
nop
add %r14, %r14
lea addresses_D_ht+0x1cfa8, %rsi
lea addresses_WC_ht+0x51c6, %rdi
nop
cmp $39382, %r15
mov $8, %rcx
rep movsw
nop
sub $10377, %r13
lea addresses_A_ht+0x17f36, %rsi
lea addresses_WC_ht+0x2a6e, %rdi
nop
nop
nop
inc %r14
mov $127, %rcx
rep movsb
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x1abc6, %r15
xor $57942, %rcx
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x4a1f, %rcx
nop
nop
nop
nop
add $19257, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
dec %rcx
lea addresses_D_ht+0x18f86, %rcx
nop
nop
xor %r14, %r14
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
sub $62286, %r13
lea addresses_WC_ht+0x3682, %r15
nop
dec %r11
mov (%r15), %r13w
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x16ad2, %rsi
lea addresses_UC_ht+0xccc6, %rdi
clflush (%rdi)
nop
nop
xor $36147, %r10
mov $4, %rcx
rep movsq
nop
add $15001, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x1d4c6, %rsi
lea addresses_US+0x14f6, %rdi
clflush (%rdi)
nop
and $14324, %r9
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x178c6, %r14
nop
nop
nop
and %r9, %r9
movups (%r14), %xmm0
vpextrq $0, %xmm0, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}}
{'33': 7}
33 33 33 33 33 33 33
*/
