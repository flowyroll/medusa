.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xae52, %rsi
lea addresses_WT_ht+0x13652, %rdi
add $15816, %rbx
mov $25, %rcx
rep movsq
nop
dec %rdx
lea addresses_WC_ht+0xd4a2, %rsi
lea addresses_WC_ht+0x113fe, %rdi
nop
and $19634, %r14
mov $1, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0xdff2, %rbx
nop
and $38349, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1d252, %rbx
nop
nop
nop
nop
nop
cmp $59797, %r14
movl $0x61626364, (%rbx)
cmp %rsi, %rsi
lea addresses_normal_ht+0xcb22, %rsi
xor %r14, %r14
mov (%rsi), %ebp
nop
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0x4a52, %rbp
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x11e52, %rbx
nop
nop
nop
nop
nop
cmp $7082, %r14
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
cmp $12896, %rdx
lea addresses_UC_ht+0xb22, %rcx
nop
nop
nop
nop
nop
add $41846, %rsi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r14
cmp $9087, %rdi
lea addresses_WC_ht+0x6372, %rsi
lea addresses_WT_ht+0x11d52, %rdi
nop
nop
mfence
mov $96, %rcx
rep movsb
nop
nop
sub $14126, %rdx
lea addresses_WT_ht+0x16652, %rdx
clflush (%rdx)
nop
add %r14, %r14
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
inc %rbp
lea addresses_WC_ht+0xa52, %rsi
lea addresses_D_ht+0xf94a, %rdi
nop
nop
nop
inc %rbx
mov $122, %rcx
rep movsw
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xbe52, %rbp
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rbp), %ecx
nop
nop
nop
add $33781, %rdx
lea addresses_WT_ht+0x19e52, %r14
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r14), %bp
nop
nop
and $62444, %r14
lea addresses_D_ht+0x2b12, %rdx
clflush (%rdx)
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdx)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x181de, %rsi
lea addresses_A_ht+0x2652, %rdi
and $39359, %rdx
mov $107, %rcx
rep movsb
nop
xor $32998, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xf1d2, %rax
clflush (%rax)
nop
nop
nop
nop
cmp %r15, %r15
movl $0x51525354, (%rax)
nop
nop
nop
cmp %rax, %rax

// REPMOV
lea addresses_WC+0x15f2, %rsi
lea addresses_PSE+0x2052, %rdi
nop
nop
nop
nop
dec %r13
mov $62, %rcx
rep movsw
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_WT+0x15a52, %rsi
lea addresses_PSE+0x36c2, %rdi
dec %r15
mov $89, %rcx
rep movsq
nop
nop
nop
nop
inc %r13

// Store
lea addresses_A+0xebd2, %r12
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
xor $58078, %r15

// Store
mov $0x2445c60000000352, %rdi
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_D+0x932, %r15
nop
inc %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_WT+0x16c52, %rax
and %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
and $12115, %rax

// Store
mov $0x549183000000074c, %rcx
nop
nop
nop
nop
nop
sub $61426, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovaps %ymm5, (%rcx)
nop
nop
nop
and %r13, %r13

// Store
lea addresses_US+0x12652, %rax
nop
nop
add %r15, %r15
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_A+0x5652, %rcx
nop
nop
nop
and $16185, %r12
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 3, '39': 1}
39 00 00 00
*/
