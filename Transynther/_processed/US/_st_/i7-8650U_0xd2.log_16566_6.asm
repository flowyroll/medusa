.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xb140, %rbx
nop
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%rbx)
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0xdf1c, %rdi
nop
nop
and %rcx, %rcx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x1e22a, %rsi
lea addresses_D_ht+0x14a8c, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $58, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $3739, %rbx
lea addresses_WT_ht+0x11e8c, %rsi
lea addresses_UC_ht+0x11e8c, %rdi
nop
nop
nop
and $32825, %rdx
mov $44, %rcx
rep movsb
nop
nop
nop
inc %r8
lea addresses_A_ht+0x81d4, %rcx
nop
nop
and $28692, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $52050, %r12
lea addresses_normal_ht+0x8e8c, %r11
nop
nop
nop
add $63715, %rcx
movl $0x61626364, (%r11)
xor $58180, %r11
lea addresses_UC_ht+0xc8c, %rcx
nop
nop
nop
nop
dec %rsi
movw $0x6162, (%rcx)
nop
mfence
lea addresses_UC_ht+0xb28c, %rsi
lea addresses_WC_ht+0x18d1e, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov $54, %rcx
rep movsb
nop
nop
nop
nop
xor $55494, %rsi
lea addresses_UC_ht+0x1b78, %rsi
lea addresses_D_ht+0x3e8c, %rdi
clflush (%rsi)
nop
nop
inc %rdx
mov $23, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1640c, %rcx
clflush (%rcx)
nop
nop
dec %r8
mov (%rcx), %dx
nop
and %rdx, %rdx
lea addresses_WT_ht+0x858c, %rsi
nop
nop
nop
nop
nop
inc %rbx
mov (%rsi), %r8w
nop
nop
nop
nop
cmp $11325, %r12
lea addresses_WC_ht+0x1ca8c, %rsi
lea addresses_UC_ht+0x110c, %rdi
nop
nop
nop
nop
nop
and $43457, %r8
mov $26, %rcx
rep movsq
sub $62903, %rcx
lea addresses_normal_ht+0x1768c, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%rcx), %bx
nop
nop
nop
nop
nop
xor $14341, %rcx
lea addresses_D_ht+0x1458c, %rsi
lea addresses_WC_ht+0x1a40c, %rdi
nop
nop
add $38749, %rbx
mov $14, %rcx
rep movsl
nop
sub %rbx, %rbx
lea addresses_D_ht+0x744c, %rsi
nop
cmp $44965, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
and $0xffffffffffffffc0, %rsi
vmovaps %ymm5, (%rsi)
nop
nop
nop
nop
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_normal+0xd60c, %rdi
cmp $20826, %r12
movb $0x51, (%rdi)

// Exception!!!
nop
nop
mov (0), %r8
nop
add $16088, %r8

// Store
lea addresses_normal+0x1cca7, %r8
clflush (%r8)
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
nop
add $30552, %rbp

// Store
mov $0x75427e0000000ecc, %r8
and %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r8)
add $15335, %rdi

// Store
lea addresses_US+0x19e8c, %r12
nop
nop
nop
and $38858, %r15
movl $0x51525354, (%r12)
nop
add %r15, %r15

// Store
lea addresses_PSE+0x1b78c, %r10
nop
nop
nop
nop
add $37560, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r10)
inc %r12

// Faulty Load
lea addresses_US+0xde8c, %r11
nop
nop
sub $39562, %r15
movups (%r11), %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'54': 16566}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
