.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14930, %r8
nop
nop
nop
inc %r14
movb (%r8), %al
cmp $61531, %r10
lea addresses_normal_ht+0x3d01, %rdi
nop
nop
nop
nop
cmp $27172, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdi)
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1901, %rdi
nop
nop
nop
nop
nop
dec %rbx
movb $0x61, (%rdi)
nop
nop
nop
add $8778, %r10
lea addresses_D_ht+0x1313a, %r14
nop
nop
mfence
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r14)
nop
nop
add $40697, %rax
lea addresses_WT_ht+0x10001, %r14
nop
and $60981, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1a601, %rsi
lea addresses_D_ht+0x9a01, %rdi
nop
dec %r14
mov $42, %rcx
rep movsq
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x14c05, %rax
nop
nop
nop
nop
and $38973, %r8
movw $0x6162, (%rax)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0xc381, %rsi
lea addresses_A_ht+0x2641, %rdi
dec %r10
mov $67, %rcx
rep movsl
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x7ac1, %rsi
lea addresses_normal_ht+0x12d01, %rdi
nop
nop
nop
inc %r10
mov $66, %rcx
rep movsq
nop
nop
nop
inc %r8
lea addresses_WC_ht+0xc6dd, %rbp
clflush (%rbp)
nop
and %r10, %r10
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
cmp %r14, %r14
lea addresses_WT_ht+0x9561, %rbx
nop
nop
nop
cmp $10310, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbx)
xor $32853, %rax
lea addresses_WC_ht+0x149d1, %rsi
lea addresses_A_ht+0xee01, %rdi
nop
nop
cmp %r8, %r8
mov $90, %rcx
rep movsb
add %rbx, %rbx
lea addresses_normal_ht+0x1be01, %rbp
inc %r14
mov (%rbp), %rsi
nop
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x1280d, %rsi
lea addresses_A_ht+0x5601, %rdi
dec %rbp
mov $16, %rcx
rep movsq
xor %rbx, %rbx
lea addresses_normal_ht+0x10929, %rsi
lea addresses_normal_ht+0x3955, %rdi
nop
dec %r14
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $47630, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rdx
push %rsi

// Load
lea addresses_PSE+0x10541, %rsi
nop
xor %r12, %r12
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
nop
xor $23110, %rbp

// Store
lea addresses_A+0x1b641, %r9
nop
nop
nop
nop
nop
xor $19592, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
nop
nop
and %r15, %r15

// Store
lea addresses_US+0x3f01, %rdx
sub $45723, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movntdq %xmm5, (%rdx)
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0xfe01, %rsi
nop
add %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rsi)
nop
and %rdx, %rdx

// Faulty Load
lea addresses_A+0x2e01, %r10
nop
nop
nop
add %r9, %r9
movb (%r10), %dl
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
