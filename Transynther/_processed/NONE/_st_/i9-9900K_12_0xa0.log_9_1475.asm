.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
lea addresses_UC_ht+0x5b3b, %rdx
nop
nop
inc %rcx
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
and $14502, %r10
lea addresses_WT_ht+0x1286b, %rdi
nop
cmp $46907, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
and $2860, %rdx
lea addresses_D_ht+0x188db, %r12
nop
nop
nop
mfence
movb $0x61, (%r12)
add $40122, %r12
lea addresses_normal_ht+0x1accb, %r12
nop
nop
add %r14, %r14
movb $0x61, (%r12)
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1cd1b, %r10
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r10), %r14w
nop
and %rcx, %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x1d64f, %rsi
lea addresses_PSE+0x629b, %rdi
nop
nop
nop
and %r11, %r11
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_US+0x1a65b, %rsi
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rsi)
nop
cmp $13464, %r11

// Store
lea addresses_WT+0x1555b, %r11
clflush (%r11)
cmp $53907, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_US+0x18e69, %r11
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_A+0xd65b, %rsi
xor %rcx, %rcx
mov (%rsi), %edx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
