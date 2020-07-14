.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x17d20, %rsi
lea addresses_A_ht+0xe520, %rdi
nop
sub %r14, %r14
mov $113, %rcx
rep movsq
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x16200, %rdx
nop
nop
nop
nop
nop
xor $16868, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rdx)
cmp %r14, %r14
lea addresses_D_ht+0x12520, %rsi
lea addresses_A_ht+0x9a5c, %rdi
sub %r12, %r12
mov $33, %rcx
rep movsb
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x126c8, %rsi
nop
nop
nop
xor %r9, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x1320, %rsi
nop
nop
nop
add $58746, %rcx
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm4
vpextrq $0, %xmm4, %r14
inc %rcx
lea addresses_normal_ht+0x8520, %r12
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x139fa, %rsi
xor $15143, %r12
mov (%rsi), %dx
nop
nop
nop
and $51762, %rcx
lea addresses_WC_ht+0x6aa8, %r9
nop
nop
xor %rsi, %rsi
mov (%r9), %r12d
nop
nop
add $4997, %rdi
lea addresses_WT_ht+0xb684, %rsi
lea addresses_WC_ht+0x11020, %rdi
nop
nop
dec %r15
mov $80, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_normal_ht+0x4e34, %rsi
lea addresses_A_ht+0xda42, %rdi
nop
xor $12239, %r14
mov $43, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x780, %r14
clflush (%r14)
nop
nop
cmp $19159, %rdx
movb $0x61, (%r14)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x125a8, %r14
nop
nop
nop
nop
nop
add $52487, %r15
movb (%r14), %r12b
cmp $58512, %r9
lea addresses_WT_ht+0x19d20, %r12
nop
nop
and $14240, %rsi
movb (%r12), %r9b
nop
add $60340, %rsi
lea addresses_WC_ht+0x13a00, %r12
add $47118, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x49a0, %rsi
lea addresses_A_ht+0x8760, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $54, %rcx
rep movsl
sub $35062, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x15e20, %rsi
lea addresses_PSE+0x5520, %rdi
and %r11, %r11
mov $112, %rcx
rep movsb
nop
nop
nop
and $18766, %r8

// REPMOV
lea addresses_UC+0xcc60, %rsi
lea addresses_D+0x11fe0, %rdi
nop
nop
xor $51657, %r14
mov $109, %rcx
rep movsl
nop
nop
nop
sub %r14, %r14

// REPMOV
lea addresses_WT+0x7600, %rsi
lea addresses_PSE+0x5520, %rdi
clflush (%rdi)
nop
nop
and $64278, %rax
mov $125, %rcx
rep movsl
dec %rax

// Store
mov $0x4619b800000001a0, %rax
sub %rsi, %rsi
movl $0x51525354, (%rax)
nop
nop
sub $28719, %r8

// Store
mov $0x36f29800000003a0, %rcx
nop
add %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
sub %r8, %r8

// Faulty Load
lea addresses_PSE+0x5520, %r14
nop
xor %rcx, %rcx
vmovntdqa (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'39': 187}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
