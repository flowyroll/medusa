.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1eca5, %r15
and %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1ef15, %rsi
lea addresses_WC_ht+0x1b95, %rdi
nop
nop
and %rbx, %rbx
mov $43, %rcx
rep movsq
nop
nop
dec %rbx
lea addresses_WT_ht+0x12a15, %rbx
add %r13, %r13
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
xor $39969, %r15
lea addresses_WT_ht+0x19655, %rbx
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbx)
nop
xor %r15, %r15
lea addresses_WC_ht+0x5141, %rbx
add %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rbx)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0xef95, %rcx
nop
nop
nop
nop
nop
sub $23246, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
inc %rcx
lea addresses_UC_ht+0x15335, %r13
nop
nop
cmp %rcx, %rcx
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1a385, %rbx
nop
nop
cmp $55770, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
and $60975, %rbx
lea addresses_normal_ht+0x1bd15, %rsi
lea addresses_A_ht+0x15395, %rdi
nop
inc %r9
mov $45, %rcx
rep movsq
xor %r9, %r9
lea addresses_UC_ht+0x1db95, %r13
nop
nop
nop
nop
cmp $7345, %r15
movl $0x61626364, (%r13)
nop
sub %r13, %r13
lea addresses_normal_ht+0x18e15, %r13
nop
nop
nop
nop
and $48493, %r15
movw $0x6162, (%r13)
nop
nop
nop
cmp $11097, %r15
lea addresses_D_ht+0x2671, %rbx
add $46949, %r11
mov (%rbx), %si
dec %r15
lea addresses_normal_ht+0x4665, %rdi
inc %rbx
mov (%rdi), %si
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0xa967, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $32913, %rdi
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
add %r8, %r8

// Store
mov $0x5fd8520000000f95, %r12
nop
xor %r10, %r10
movb $0x51, (%r12)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_D+0xd7d5, %rcx
nop
nop
nop
nop
add %r8, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_normal+0xc5f5, %r10
nop
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r8
movq %r8, (%r10)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0x1a475, %r12
nop
nop
nop
nop
nop
sub $21132, %rdx
movb $0x51, (%r12)
nop
nop
sub %r8, %r8

// Load
lea addresses_WC+0x1db64, %rcx
nop
and $30310, %r8
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdx
add $16395, %rdi

// Store
lea addresses_normal+0x3b95, %rdx
nop
add $20825, %rdi
movw $0x5152, (%rdx)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_A+0xd395, %rdx
sub %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%rdx)
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_normal+0x3b95, %rdi
nop
nop
nop
cmp %r12, %r12
movb (%rdi), %dl
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'52': 2}
52 52
*/
