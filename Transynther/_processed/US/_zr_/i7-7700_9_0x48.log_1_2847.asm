.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5293, %rsi
lea addresses_A_ht+0x4e93, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $58, %rcx
rep movsq
nop
and %r14, %r14
lea addresses_WT_ht+0x12093, %r15
sub %r14, %r14
movl $0x61626364, (%r15)
nop
nop
and $52086, %rdi
lea addresses_A_ht+0x1d893, %rcx
nop
and $26936, %rdx
movl $0x61626364, (%rcx)
sub $14087, %rdi
lea addresses_normal_ht+0xc493, %rsi
lea addresses_UC_ht+0x10893, %rdi
cmp $7463, %r15
mov $93, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0xe293, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $59211, %r10
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x19793, %rsi
lea addresses_WT_ht+0x1a4f3, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $107, %rcx
rep movsq
nop
nop
nop
nop
nop
add $17779, %r14
lea addresses_D_ht+0xf093, %rsi
lea addresses_D_ht+0xa093, %rdi
nop
sub %r8, %r8
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $4317, %r15
lea addresses_UC_ht+0xaf53, %rdx
nop
nop
nop
nop
cmp %r8, %r8
movb $0x61, (%rdx)
cmp %rsi, %rsi
lea addresses_UC_ht+0x6567, %rsi
lea addresses_WC_ht+0x17933, %rdi
clflush (%rdi)
sub $49935, %r14
mov $113, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x4809, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r14)
sub %rdx, %rdx
lea addresses_A_ht+0x8293, %rsi
lea addresses_A_ht+0x14b17, %rdi
clflush (%rsi)
nop
nop
add $60168, %r8
mov $57, %rcx
rep movsq
nop
dec %rcx
lea addresses_A_ht+0x7893, %rsi
lea addresses_D_ht+0x1a813, %rdi
nop
nop
nop
dec %r8
mov $109, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $53960, %r15
lea addresses_A_ht+0xc413, %r8
nop
nop
dec %rcx
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r14
nop
sub %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x9753, %rsi
lea addresses_US+0x10893, %rdi
nop
nop
dec %rbp
mov $33, %rcx
rep movsb
add $52366, %rcx

// Store
lea addresses_UC+0x18b, %r14
nop
dec %r10
movb $0x51, (%r14)
sub %rcx, %rcx

// Store
lea addresses_US+0x1da53, %r14
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
xor $58993, %rcx

// Store
mov $0x4a7ef80000000d0f, %r14
nop
nop
and %r15, %r15
movb $0x51, (%r14)
nop
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_US+0x10893, %rdi
nop
nop
nop
nop
cmp $65066, %rbp
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'00': 1}
00
*/
