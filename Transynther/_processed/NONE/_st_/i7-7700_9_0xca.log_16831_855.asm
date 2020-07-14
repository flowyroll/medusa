.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x132c1, %rsi
nop
nop
inc %rcx
movl $0x61626364, (%rsi)
nop
nop
sub $26221, %r8
lea addresses_WC_ht+0xf421, %r11
nop
sub %r10, %r10
mov (%r11), %esi
nop
dec %rsi
lea addresses_A_ht+0x16c8b, %rsi
nop
and $18732, %rdx
movb $0x61, (%rsi)
sub $42771, %rbx
lea addresses_UC_ht+0x1aa21, %r8
nop
nop
nop
dec %r11
movl $0x61626364, (%r8)
nop
xor $59355, %r8
lea addresses_normal_ht+0x1ac21, %rbx
clflush (%rbx)
sub $5047, %rsi
movb (%rbx), %cl
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x188d1, %rcx
nop
nop
nop
nop
add %rsi, %rsi
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0xb3cd, %rsi
lea addresses_WC_ht+0x191a1, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %rbx, %rbx
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
add $42199, %r10
lea addresses_WT_ht+0x1b9a1, %rsi
nop
nop
nop
nop
sub $50178, %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x17221, %rbx
nop
nop
nop
nop
cmp %r8, %r8
mov (%rbx), %ecx
nop
xor %rdx, %rdx
lea addresses_D_ht+0x120a1, %rsi
inc %rdx
movl $0x61626364, (%rsi)
nop
sub $53515, %rcx
lea addresses_D_ht+0x4461, %rsi
lea addresses_D_ht+0x18ce1, %rdi
nop
xor %r11, %r11
mov $37, %rcx
rep movsw
mfence
lea addresses_UC_ht+0x8a21, %r11
inc %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0xacf5, %rdx
nop
nop
nop
nop
nop
and $13552, %r10
mov (%rdx), %ecx
nop
add $39876, %r8
lea addresses_WT_ht+0xf561, %rsi
lea addresses_A_ht+0x13111, %rdi
clflush (%rsi)
nop
nop
dec %rdx
mov $109, %rcx
rep movsl
nop
nop
nop
nop
cmp $11503, %r11
lea addresses_D_ht+0x8ea1, %rsi
lea addresses_A_ht+0x16491, %rdi
clflush (%rsi)
sub %r10, %r10
mov $105, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $662, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0x111d, %r11
nop
nop
nop
nop
xor $28947, %r15
movb $0x51, (%r11)
nop
sub %r9, %r9

// Store
lea addresses_normal+0x1161, %rbx
dec %rbp
movb $0x51, (%rbx)
nop
nop
nop
nop
dec %r15

// Load
lea addresses_US+0x6ef9, %r11
nop
nop
nop
nop
sub $35497, %r15
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
and $60697, %r9

// Store
lea addresses_UC+0x17a21, %r11
and %r15, %r15
movw $0x5152, (%r11)
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_A+0x1ca21, %r9
cmp %rbp, %rbp
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_A_ht'}}
{'52': 16831}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
