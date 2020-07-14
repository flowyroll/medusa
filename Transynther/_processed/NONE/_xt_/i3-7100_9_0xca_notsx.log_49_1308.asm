.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7ccd, %r14
nop
nop
nop
xor %r13, %r13
movb $0x61, (%r14)
nop
nop
add $59222, %rsi
lea addresses_A_ht+0x190ad, %r11
nop
cmp $46165, %rax
movl $0x61626364, (%r11)
sub %r10, %r10
lea addresses_normal_ht+0x6b2d, %rsi
and $3079, %rax
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
add $64730, %r14
lea addresses_normal_ht+0x80ad, %rsi
lea addresses_UC_ht+0x12cd, %rdi
nop
inc %r14
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0xcad, %r9
nop
and $46848, %r10
mov (%r9), %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x100ad, %r11
nop
nop
add $15284, %r9
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
add $50017, %rax
lea addresses_D_ht+0x57ed, %r11
nop
nop
nop
sub $3233, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
nop
add $37527, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_A+0xe8ad, %r13
nop
nop
xor $41046, %rbp
movl $0x51525354, (%r13)
nop
nop
and $8538, %rdx

// Store
mov $0x2223460000000cad, %r15
nop
nop
nop
nop
nop
cmp $10151, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovaps %ymm5, (%r15)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_RW+0x1134d, %rcx
nop
sub $56494, %r10
movb $0x51, (%rcx)
xor $11164, %r13

// Store
lea addresses_normal+0x33ad, %rdx
nop
nop
dec %r13
movb $0x51, (%rdx)
nop
nop
dec %r15

// Store
mov $0xeb38d0000000aad, %r15
and $35842, %r13
movw $0x5152, (%r15)
nop
nop
sub %rbp, %rbp

// Load
lea addresses_RW+0x17c67, %rbx
nop
xor $17614, %r15
mov (%rbx), %r13
nop
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_D+0xa0ad, %rdx
nop
nop
nop
nop
sub $55255, %r10
mov (%rdx), %ebp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'36': 49}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
