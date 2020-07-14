.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x6f1c, %r10
nop
nop
add %r13, %r13
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
mfence
lea addresses_D_ht+0x148b, %r10
nop
xor $29050, %rdx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x14ff4, %rcx
nop
nop
nop
nop
cmp %r12, %r12
movw $0x6162, (%rcx)
cmp $10263, %r12
lea addresses_normal_ht+0x23c0, %rsi
lea addresses_WC_ht+0x1df94, %rdi
nop
nop
xor %rdx, %rdx
mov $105, %rcx
rep movsl
nop
nop
nop
nop
cmp $32698, %r8
lea addresses_WC_ht+0xf4ea, %r13
nop
nop
dec %r8
movb $0x61, (%r13)
nop
nop
and $9739, %rax
lea addresses_UC_ht+0x12e66, %r13
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
and $53265, %rax
lea addresses_D_ht+0x5373, %r10
nop
nop
nop
nop
sub $15592, %r8
movw $0x6162, (%r10)
nop
dec %r12
lea addresses_WT_ht+0x9c74, %rsi
lea addresses_WT_ht+0x995f, %rdi
nop
nop
add $59071, %r8
mov $91, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WC+0x15bf4, %rbx
nop
nop
nop
nop
nop
and $49464, %r15
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
add $6884, %r10

// Load
mov $0x121fb00000000a4, %r11
nop
nop
nop
nop
nop
add $49523, %rbp
mov (%r11), %r9
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_A+0x63f4, %rbp
nop
nop
cmp %r15, %r15
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
