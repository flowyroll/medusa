.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rdi
lea addresses_WC_ht+0x12c1a, %rdi
nop
nop
nop
nop
and %r9, %r9
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rbx
nop
nop
nop
nop
nop
xor $63616, %r8
lea addresses_normal_ht+0x1a, %r11
cmp $17005, %r13
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
dec %r13
lea addresses_WC_ht+0xc37a, %r12
nop
nop
and $1949, %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r12)
nop
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0x659a, %r8
nop
nop
cmp %rbx, %rbx
mov (%r8), %r9
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x311a, %r13
nop
and $24968, %r11
movb (%r13), %r12b
and $53618, %rdi
lea addresses_normal_ht+0x1ac1a, %r11
clflush (%r11)
nop
nop
nop
sub $59422, %r12
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
sub %r12, %r12
lea addresses_UC_ht+0x1301a, %rdi
nop
nop
nop
and $18663, %r8
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x10234, %rbx
nop
nop
sub %r9, %r9
movw $0x6162, (%rbx)
nop
nop
and %r9, %r9
lea addresses_WC_ht+0xd41a, %r11
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r11
movaps %xmm2, (%r11)
nop
nop
cmp $1318, %r11
lea addresses_WC_ht+0x631a, %r12
nop
cmp $37855, %r9
movups (%r12), %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x7e1a, %r9
nop
nop
nop
sub %rdi, %rdi
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
sub $62929, %rbx
lea addresses_UC_ht+0x1cc1a, %rdi
sub $55115, %r8
movw $0x6162, (%rdi)
nop
nop
nop
cmp $55371, %r11
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x159dc, %rcx
nop
nop
nop
nop
dec %rdx
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
cmp $32248, %rax

// Store
lea addresses_US+0x121fa, %r11
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movaps %xmm0, (%r11)
nop
nop
nop
nop
sub $61165, %r11

// Store
lea addresses_normal+0x6c1a, %rsi
cmp %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
add $20739, %rdi

// Load
lea addresses_D+0x19a1a, %rsi
xor %rcx, %rcx
movb (%rsi), %dl
nop
nop
nop
add %rax, %rax

// Store
lea addresses_US+0x15c1a, %rdi
nop
xor %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rdi)
xor %rax, %rax

// Load
lea addresses_D+0x3a7a, %r13
nop
nop
nop
inc %rsi
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rax
nop
xor %rsi, %rsi

// Store
lea addresses_D+0xd1a1, %rdi
nop
nop
nop
nop
add $60776, %r11
movw $0x5152, (%rdi)
nop
nop
nop
add $18235, %rdi

// Store
lea addresses_US+0x1fe1a, %rdi
sub $15037, %rdx
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_WC+0x9c1a, %r13
nop
nop
nop
nop
nop
and %rax, %rax
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'58': 17}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
