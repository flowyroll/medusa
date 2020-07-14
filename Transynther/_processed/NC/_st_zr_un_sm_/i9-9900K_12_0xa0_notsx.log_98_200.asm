.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6d64, %r15
nop
add $31119, %r14
movl $0x61626364, (%r15)
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x3484, %r13
nop
nop
nop
sub $15232, %r11
mov (%r13), %rbp
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0xb5f4, %r15
nop
dec %rsi
mov (%r15), %r14w
nop
inc %rsi
lea addresses_D_ht+0x9122, %rsi
nop
and %r15, %r15
mov (%rsi), %r14
nop
nop
nop
nop
nop
cmp $2926, %rbp
lea addresses_D_ht+0x16d64, %rsi
lea addresses_UC_ht+0x20, %rdi
nop
nop
nop
nop
and $48892, %r15
mov $81, %rcx
rep movsl
nop
nop
nop
cmp $15964, %r14
lea addresses_WT_ht+0xe04, %r15
nop
nop
nop
nop
cmp $32487, %rdi
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x18164, %r11
nop
nop
nop
nop
nop
dec %r15
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
xor $62726, %r15
lea addresses_normal_ht+0x19f64, %rdi
nop
nop
sub $20826, %rax
movb (%rdi), %r15b
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdx

// Store
mov $0x394e60000000964, %r12
nop
nop
nop
dec %r9
movb $0x51, (%r12)
cmp $35288, %r14

// Store
mov $0x1838dd0000000f68, %rcx
nop
nop
nop
nop
inc %r9
movw $0x5152, (%rcx)
nop
nop
nop
sub $29838, %r9

// Store
lea addresses_D+0x470b, %r9
add %rbp, %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_D+0x1ee44, %rbp
add $16817, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rbp)
xor %rdx, %rdx

// Faulty Load
mov $0x394e60000000964, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r14), %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'8e': 1, 'b6': 1, '10': 1, 'cc': 1, '51': 90, '00': 4}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 8e 51 51 51 51 51 51 b6 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 10 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 cc 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51
*/
