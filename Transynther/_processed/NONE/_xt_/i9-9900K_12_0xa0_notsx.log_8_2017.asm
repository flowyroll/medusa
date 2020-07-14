.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x194c2, %r11
add %r8, %r8
mov (%r11), %di
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x1d091, %r9
nop
nop
add %rcx, %rcx
movb (%r9), %r8b
dec %rcx
lea addresses_UC_ht+0x6391, %rsi
lea addresses_WC_ht+0x751, %rdi
nop
nop
dec %r11
mov $55, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $8622, %rbp
lea addresses_WT_ht+0xf9d1, %rdi
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
xor $33148, %rcx
lea addresses_D_ht+0x4fcf, %rcx
nop
nop
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rcx)
cmp $9760, %rsi
lea addresses_A_ht+0xb611, %rsi
lea addresses_WT_ht+0x181f1, %rdi
nop
nop
nop
nop
and %rbx, %rbx
mov $112, %rcx
rep movsw
nop
nop
add %r11, %r11
lea addresses_D_ht+0x17bbd, %rcx
dec %r8
movb $0x61, (%rcx)
dec %r8
lea addresses_normal_ht+0x5c4, %r9
nop
nop
nop
nop
add $52805, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
and $16088, %rcx
lea addresses_A_ht+0x17491, %rcx
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
xor $47925, %r11
lea addresses_WT_ht+0x18f91, %r11
nop
nop
and %r9, %r9
movb (%r11), %bl
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x4e01, %rsi
lea addresses_WT_ht+0x19bf1, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $127, %rcx
rep movsb
nop
cmp $41518, %rcx
lea addresses_normal_ht+0x18321, %rsi
lea addresses_UC_ht+0x1a3d1, %rdi
nop
nop
and %r8, %r8
mov $74, %rcx
rep movsl
xor %rbx, %rbx
lea addresses_UC_ht+0x1db91, %rsi
lea addresses_UC_ht+0x15811, %rdi
nop
nop
nop
nop
nop
add $64933, %r8
mov $91, %rcx
rep movsl
add $39282, %rsi
lea addresses_WC_ht+0x9661, %rsi
lea addresses_D_ht+0x3c91, %rdi
nop
nop
nop
nop
add $38313, %rbp
mov $47, %rcx
rep movsw
nop
nop
nop
nop
xor $27666, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x1688d, %r9
sub $24390, %rdx
mov (%r9), %r10
and %rdx, %rdx

// Store
mov $0xfa9d0000000051d, %r15
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r15)
nop
nop
inc %rbp

// Store
lea addresses_RW+0x1f391, %rdi
nop
nop
and $44401, %r10
movb $0x51, (%rdi)
nop
nop
nop
nop
sub $42631, %r15

// Store
lea addresses_normal+0x1c791, %rbp
nop
nop
nop
sub $37681, %rsi
movl $0x51525354, (%rbp)
nop
nop
sub $56359, %rsi

// Faulty Load
lea addresses_WT+0x2791, %rdi
nop
nop
nop
nop
cmp $48435, %rbp
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'39': 8}
39 39 39 39 39 39 39 39
*/
