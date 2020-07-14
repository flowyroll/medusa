.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a865, %rsi
lea addresses_UC_ht+0x522d, %rdi
nop
nop
xor $39550, %r13
mov $75, %rcx
rep movsq
nop
nop
nop
nop
add $29157, %r10
lea addresses_UC_ht+0xf92d, %r8
nop
nop
nop
and $32953, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r8)
nop
nop
sub $30683, %r11
lea addresses_D_ht+0x1c925, %r8
nop
nop
nop
nop
xor %r11, %r11
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
dec %rsi
lea addresses_D_ht+0x8fc, %rsi
lea addresses_A_ht+0x6d2d, %rdi
nop
nop
sub $31937, %r10
mov $119, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1b2d, %rsi
nop
nop
nop
nop
nop
add $4427, %r10
mov (%rsi), %edi
nop
nop
cmp $56222, %rdi
lea addresses_A_ht+0x7501, %rcx
nop
nop
nop
cmp $29024, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
nop
and $50428, %r13
lea addresses_D_ht+0x11d2d, %rsi
lea addresses_WT_ht+0x1d3e7, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $8, %rcx
rep movsl
nop
nop
nop
nop
nop
add $27771, %r13
lea addresses_normal_ht+0x322d, %r8
nop
nop
nop
nop
nop
sub $1693, %rdi
mov (%r8), %r10d
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0xe32d, %r10
clflush (%r10)
nop
nop
nop
cmp %r13, %r13
movl $0x61626364, (%r10)
dec %r11
lea addresses_UC_ht+0x15aad, %rsi
add %r8, %r8
movw $0x6162, (%rsi)
nop
inc %r10
lea addresses_A_ht+0x120c5, %rsi
lea addresses_WC_ht+0xfe2d, %rdi
dec %rdx
mov $77, %rcx
rep movsl
nop
sub $29061, %r8
lea addresses_UC_ht+0xfa2d, %rsi
lea addresses_D_ht+0x1da2d, %rdi
nop
nop
and %r10, %r10
mov $96, %rcx
rep movsq
nop
and $993, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x2549, %r13
nop
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
xor %r8, %r8

// REPMOV
lea addresses_RW+0x1da8d, %rsi
lea addresses_PSE+0xd22d, %rdi
nop
and %r12, %r12
mov $50, %rcx
rep movsb
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x19f2d, %rbx
clflush (%rbx)
nop
add %rsi, %rsi
movw $0x5152, (%rbx)
add %rdi, %rdi

// Store
lea addresses_WC+0x7f0f, %r13
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r13)
nop
xor $44231, %r8

// Faulty Load
lea addresses_WT+0xda2d, %rbx
sub $3348, %r10
mov (%rbx), %cx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': True, 'size': 8}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'00': 278}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
