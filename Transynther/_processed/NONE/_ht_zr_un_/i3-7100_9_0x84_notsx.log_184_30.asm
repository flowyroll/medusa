.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x43fe, %r15
nop
and %r8, %r8
mov (%r15), %r12w
nop
nop
nop
add $29090, %rax
lea addresses_normal_ht+0xddb6, %rcx
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
and $36114, %r12
lea addresses_normal_ht+0x297e, %rsi
lea addresses_WT_ht+0x1dbde, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $86, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1631e, %rcx
nop
nop
inc %rax
movb (%rcx), %r8b
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x897e, %rdi
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x1dd1e, %rax
inc %rdx
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
and $31449, %r15
lea addresses_D_ht+0xf146, %rsi
nop
nop
nop
and $51001, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1e17e, %r8
nop
add $40542, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x17faa, %rsi
lea addresses_D_ht+0x1c80d, %rdi
nop
sub $36419, %r12
mov $70, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x56be, %rcx
clflush (%rcx)
nop
nop
nop
sub $6358, %r12
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r8
nop
xor $1885, %rax
lea addresses_D_ht+0x18362, %r12
nop
nop
nop
nop
add $10536, %rsi
movb $0x61, (%r12)
cmp $38290, %rcx
lea addresses_normal_ht+0x1be7e, %r8
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%r8)
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1b17e, %rcx
sub %rax, %rax
movb $0x61, (%rcx)
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax

// Store
lea addresses_RW+0x19286, %r11
cmp $52583, %r14
movb $0x51, (%r11)
nop
nop
nop
nop
xor $22528, %rax

// Store
lea addresses_RW+0xb31e, %r14
inc %r10
movb $0x51, (%r14)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_RW+0x13ade, %r14
nop
nop
nop
nop
nop
add $6994, %r11
movl $0x51525354, (%r14)
nop
nop
nop
xor $2421, %r13

// Store
lea addresses_PSE+0x1d57e, %r11
clflush (%r11)
nop
add $45409, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
and $60647, %r14

// Faulty Load
lea addresses_A+0x717e, %r8
nop
nop
cmp $51638, %r14
mov (%r8), %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'1a': 5, 'ff': 1, 'd0': 3, 'bc': 8, '46': 2, '00': 96, '44': 54, '65': 1, 'e0': 1, 'c0': 2, '08': 11}
44 00 44 44 44 44 44 44 44 00 00 65 bc bc 00 00 00 00 00 00 00 00 08 00 44 00 00 00 00 00 08 00 44 1a 00 44 00 00 08 08 00 00 44 44 c0 44 44 44 00 44 00 00 00 44 44 44 00 00 44 44 00 08 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 08 00 00 44 00 00 44 00 c0 44 44 44 44 44 44 bc 44 bc 44 44 00 00 00 00 00 00 00 08 00 44 00 00 1a 00 00 00 00 08 d0 44 00 1a 08 00 00 44 d0 00 44 44 44 44 44 44 44 44 00 00 00 00 d0 44 1a 00 00 44 44 00 00 00 00 1a 00 00 44 00 46 44 e0 44 00 bc bc ff 00 bc 00 00 08 00 00 44 46 00 00 00 00 00 00 08 00 00 00 44 bc
*/
