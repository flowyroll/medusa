.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x4950, %r14
nop
nop
nop
add $31074, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r14)
nop
dec %r11
lea addresses_normal_ht+0x1b418, %rcx
nop
nop
nop
nop
add $11788, %rbp
mov (%rcx), %r14
sub %r14, %r14
lea addresses_normal_ht+0x15eee, %rsi
lea addresses_D_ht+0x102e8, %rdi
cmp %r11, %r11
mov $59, %rcx
rep movsb
nop
nop
nop
sub $5079, %rax
lea addresses_normal_ht+0xd3e8, %r14
nop
nop
and $60903, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%r14)
and %r14, %r14
lea addresses_WC_ht+0x14ae8, %rsi
lea addresses_WC_ht+0xabe8, %rdi
nop
nop
nop
xor %r9, %r9
mov $15, %rcx
rep movsb
nop
nop
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0x11ee8, %rax
nop
nop
nop
nop
add $4201, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rax)
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1e7e8, %rcx
nop
nop
nop
nop
sub $58341, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0x1bbaa, %r9
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
nop
nop
nop
xor $26328, %r9
lea addresses_UC_ht+0x149e8, %rsi
lea addresses_normal_ht+0x2ae8, %rdi
nop
nop
nop
cmp $55277, %rax
mov $18, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x109e8, %rbp
cmp $61664, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
xor $11298, %r9
lea addresses_normal_ht+0x1d388, %rsi
lea addresses_WT_ht+0x1ef3e, %rdi
dec %r14
mov $100, %rcx
rep movsq
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rax
push %rdi
push %rsi

// Store
lea addresses_WT+0x1c0c8, %r15
nop
nop
add $17793, %rdi
movw $0x5152, (%r15)
nop
and $52646, %r10

// Load
mov $0x3e8, %r12
cmp $11439, %r15
movb (%r12), %al
add %rdi, %rdi

// Store
lea addresses_normal+0xaae8, %rax
nop
xor $1178, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovaps %ymm5, (%rax)
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_US+0x2b04, %r15
nop
nop
nop
nop
cmp $25265, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_normal+0xaae8, %r10
nop
nop
nop
add %rax, %rax
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'58': 44}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
